BEGIN ~NTSZYPER~

IF ~Global("HelpSzyper1","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN JOURNAL @1 EXIT
END

IF ~Global("HelpSzyper","GLOBAL",0)
Global("HelpSzyper1","GLOBAL",0)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 JOURNAL @1 GOTO 6
END

IF ~Global("HelpSzyper","GLOBAL",1)
Dead("NTHUMBAB")
Dead("NTOOGOOR")~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~SetGlobal("HelpSzyper","GLOBAL",2)
AddexperienceParty(1000)
ReputationInc(1)
~ GOTO 7
END

IF ~Global("HelpSzyper","GLOBAL",1)
!Dead("NTHUMBAB")
!Dead("NTOOGOOR")~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Global("HelpSzyper","GLOBAL",1)
Dead("NTHUMBAB")
!Dead("NTOOGOOR")~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN EXIT
END

IF ~!Global("HelpSzyper","GLOBAL",1)
Global("HelpSzyper","GLOBAL",0)
Dead("NTHUMBAB")
Dead("NTOOGOOR")~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN REPLY @9 DO ~AddexperienceParty(1000)
ReputationInc(1)
SetGlobal("HelpSzyper","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("HelpSzyper","GLOBAL",1)
~ JOURNAL @1 EXIT
  IF ~~ THEN REPLY @12 DO ~SetGlobal("HelpSzyper1","GLOBAL",1) SetGlobal("HelpSzyper","GLOBAL",1)~ JOURNAL @1 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @13
  IF ~Global("AverySaysOfKey","GLOBAL",1)
Global("SzyperNadalin","GLOBAL",0)
~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @16
  IF ~~ THEN REPLY @17 DO ~SetGlobal("SzyperNadalin","GLOBAL",1)~ JOURNAL @18 EXIT
END

IF ~Global("HelpSzyper","GLOBAL",2)
~ THEN BEGIN 9
  SAY @19
  IF ~Global("AverySaysOfKey","GLOBAL",1)
Global("SzyperNadalin","GLOBAL",0)
~ THEN REPLY @20 GOTO 8
  IF ~~ THEN REPLY @21 EXIT
END
