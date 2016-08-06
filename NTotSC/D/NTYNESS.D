BEGIN ~NTYNESS~

IF ~NumberOfTimesTalkedTo(0)
Global("YnessAsksToHelp","GLOBAL",0)
Global("YnessSays2","GLOBAL",0)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @8
  IF ~~ THEN DO ~SetGlobal("YnessSays2","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN DO ~SetGlobal("YnessAsksToHelp","GLOBAL",1)
SetGlobal("YnessSays2","GLOBAL",2)
RevealAreaOnMap("AR10PB")
~ JOURNAL @10 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 3
  IF ~~ THEN REPLY @13 GOTO 2
END

IF ~!Global("YnessSays2","GLOBAL",1)
Global("YnessAsksToHelp","GLOBAL",1)
!PartyHasItem("NTPBlet3")~ THEN BEGIN 5
  SAY @14
  IF ~~ THEN EXIT
END

IF ~!Global("YnessSays2","GLOBAL",1)
Global("YnessAsksToHelp","GLOBAL",1)
PartyHasItem("NTPBlet3")~ THEN BEGIN 6
  SAY @15
  IF ~~ THEN DO ~AddexperienceParty(5000)
ReputationInc(1)
TakePartyItem("NTPBlet3")
EscapeArea()
~ JOURNAL @16 EXIT
END

IF ~Global("YnessSays2","GLOBAL",1)
!Global("YnessAsksToHelp","GLOBAL",1)
~ THEN BEGIN 7
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 1
  IF ~~ THEN REPLY @19 EXIT
END
