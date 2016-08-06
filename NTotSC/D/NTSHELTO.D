BEGIN ~NTSHELTO~

IF ~Global("TalkedToSatos","GLOBAL",1)
Global("TalkedToLenore","GLOBAL",1)
Global("TalkedToPique","GLOBAL",1)
!Global("TalkedToShelton","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~SetGlobal("TalkedToShelton","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~SetGlobal("TalkedToShelton","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN DO ~SetGlobal("TalkedToShelton","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~!Global("TalkedToSatos","GLOBAL",1)
!Global("TalkedToLenore","GLOBAL",1)
!Global("TalkedToPique","GLOBAL",1)
~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN EXIT
END

IF ~False()
~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN EXIT
END
