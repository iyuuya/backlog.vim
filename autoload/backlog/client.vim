scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:V = vital#of('backlog')
let s:HTTP = s:V.import('Web.HTTP')
let s:JSON = s:V.import('Web.JSON')

function! backlog#client#get(path, params)
  return s:HTTP.get(s:request_path(a:path), a:params)
endfunction

function! s:host()
  return 'https://' . g:backlog_space_id . '.backlog.jp'
endfunction

function! s:request_path(path)
  return s:host() . '/api/v2/' . s:HTTP.encodeURI(a:path) . '?apiKey=' . g:backlog_api_key
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
