  inquire(file=trim(pname),exist=control)
  if(.not.control)inquire(file=trim(pname)//".gz",exist=control)
  if(.not.control)then
     write(*,"(A)")"I can not read : +"//trim(pname)//" SKIP"
     call sleep(5)
     return
  else
     write(*,"(A,A)")"read:     "//trim(pname)
  endif
