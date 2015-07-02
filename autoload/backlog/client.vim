scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:V = vital#of('backlog')
let s:HTTP = s:V.import('Web.HTTP')
let s:JSON = s:V.import('Web.JSON')

let &cpo = s:save_cpo
unlet s:save_cpo
