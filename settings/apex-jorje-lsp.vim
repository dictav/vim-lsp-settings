augroup vimlsp_settings_apex_jorje_lsp
  au!
  LspRegisterServer {
      \ 'name': 'apex-jorje-lsp',
      \ 'cmd': {server_info->lsp_settings#get('apex-jorje-lsp', 'cmd', [lsp_settings#exec_path('apex-jorje-lsp')])},
      \ 'root_uri':{server_info->lsp_settings#get('apex-jorje-lsp', 'root_uri', lsp_settings#root_uri(g:lsp_settings_root_markers))},
      \ 'initialization_options': lsp_settings#get('apex-jorje-lsp', 'initialization_options', v:null),
      \ 'whitelist': lsp_settings#get('apex-jorje-lsp', 'whitelist', ['apex']),
      \ 'blacklist': lsp_settings#get('apex-jorje-lsp', 'blacklist', []),
      \ 'config': lsp_settings#get('apex-jorje-lsp', 'config', {}),
      \ 'workspace_config': lsp_settings#get('apex-jorje-lsp', 'workspace_config', {}),
      \ }
augroup END
