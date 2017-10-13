scriptencoding utf-8
let s:save_cpo = &cpoptions
set cpoptions&vim

function! backlog#space#get()
  return backlog#client#get('space', {})
endfunction

" パラメーター名	型	内容
" activityTypeId[]	数値	type(1-17)
" minId	数値	最小ID
" maxId	数値	最大ID
" count	数値	取得上限(1-100) 指定が無い場合は20
" order	文字列	"asc"または"desc" 指定が無い場合は"desc"
function! backlog#space#get_activities(params)
  return backlog#client#get('space/activities', a:params)
endfunction

function! backlog#space#get_notification()
  return backlog#client#get('space/notification', {})
endfunction

let &cpoptions = s:save_cpo
unlet s:save_cpo
