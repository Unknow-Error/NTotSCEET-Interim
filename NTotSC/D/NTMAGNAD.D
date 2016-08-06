BEGIN ~NTMAGNAD~

IF ~NumberOfTimesTalkedTo(0)
Global("MagnadNeedHelpForBabys","GLOBAL",0)
Global("MagnadWillBeRefused","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN DO ~SetGlobal("MagnadWillBeRefused","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN DO ~SetGlobal("MagnadNeedHelpForBabys","GLOBAL",1)~ JOURNAL @9 EXIT
END

IF ~Global("MagnadNeedHelpForBabys","GLOBAL",1)
!Global("ChildrenAreFreeofOrcs","GLOBAL",1)~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN EXIT
END

IF ~Global("MagnadWillBeRefused","GLOBAL",1)
Global("MagnadWillBeRefused1","GLOBAL",0)~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetGlobal("MagnadWillBeRefused1","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @13 EXIT
END

IF ~Global("ChildrenAreFreeofOrcs","GLOBAL",1)~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN DO ~GiveGoldForce(500)
AddexperienceParty(1000)
ReputationInc(1)
ActionOverride("NTWINORM",EscapeArea())
EscapeArea()~ EXIT
END
