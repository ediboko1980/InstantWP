﻿;; InstantWP runcli
;; (c) Corvideon 2017


Procedure Main()
  ;; Current directory
  CurrDir.s = GetPathPart(ProgramFilename())
  
  ;; root dit
  rootDir.s = CurrDir.s + "..\..\..\"
  SetCurrentDirectory(rootDir.s)
  
  ; set the current dir
  currDir.s = GetCurrentDirectory()
  
  ;; iwpcli path
  iwpcli.s = currDir.s + "iwpcli.exe"
  
  If OpenConsole()
    PrintN("Running the QEMU monitor using iwpcli.exe at " + iwpcli.s )
  EndIf

 
  RunProgram(iwpcli.s, "monitor",  currDir.s,  #PB_Program_Wait )
  
EndProcedure

Main()
; IDE Options = PureBasic 5.61 (Windows - x86)
; ExecutableFormat = Console
; CursorPosition = 19
; Folding = -
; EnableXP
; Executable = start-QEMU-Monitor.exe