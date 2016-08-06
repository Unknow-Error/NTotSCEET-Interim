BEGIN ~NTPRIHEL~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~GlobalGT("TalkedToSatos","GLOBAL",0)~ THEN REPLY @1 EXIT
  IF ~GlobalGT("TalkedToSatos","GLOBAL",0)~ THEN REPLY @2 DO ~StartStore("tem0002",LastTalkedToBy(Myself))~ EXIT
  IF ~GlobalGT("TalkedToSatos","GLOBAL",0)
!Global("AverySaysOfKey","GLOBAL",1)~ THEN REPLY @3 GOTO 1
  IF ~Global("TalkedToSatos","GLOBAL",0)~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN JOURNAL @5 EXIT
END
