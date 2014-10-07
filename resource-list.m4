m4_divert(`-1')
m4_changecom(`//')
Добавляем защиту от повторного добавления
m4_define(`__R',`')
m4_define(`REMEMBER',`m4_define(`__R',__R`'$1)')
m4_define(`UNIQ',`m4_ifelse(m4_index(__R,$1),`-1',`REMEMBER($1)',`m4_errprint(`Error: '$1` is duplicated
')m4_m4exit(1)')')
m4_define(`INCLUDE',`m4_undivert()m4_divert(`1')UNIQ($1)$1 m4_divert(`-1')')m4_dnl
