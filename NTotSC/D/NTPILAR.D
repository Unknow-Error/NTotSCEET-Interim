BEGIN ~NTPILAR~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("NTPOTN01")
Global("PilarToGheldehar","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~TakePartyItem("NTPOTN01")
DestroyItem("NTPOTN01")
SetGlobal("PilarToGheldehar","GLOBAL",1)~ JOURNAL @2 EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~!PartyHasItem("NTRING03")
Global("PilarToGheldehar","GLOBAL",1)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("NTRING03")
CheckStatLT(LastTalkedToBy,18,CHR)
Global("PilarToGheldehar","GLOBAL",1)
!Global("GheldeharQuest","GLOBAL",1)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~AddexperienceParty(100)
TakePartyItem("NTRING03")
DestroyItem("NTRING03")
SetGlobal("PilarToGheldehar","GLOBAL",2)
EscapeArea()~ EXIT
END

IF ~PartyHasItem("NTRING03")
CheckStatGT(LastTalkedToBy,17,CHR)
Global("PilarToGheldehar","GLOBAL",1)
!Global("GheldeharQuest","GLOBAL",1)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN DO ~GiveItemCreate("RING19",LastTalkedToBy,0,0,0)
AddexperienceParty(500)
TakePartyItem("NTRING03")
DestroyItem("NTRING03")
SetGlobal("PilarToGheldehar","GLOBAL",2)
EscapeArea()~ EXIT
END

IF ~Global("GheldeharQuest","GLOBAL",1)~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN DO ~TakePartyItem("NTRING03")
DestroyItem("NTRING03")
SetGlobal("PilarToGheldehar","GLOBAL",2)
EscapeArea()~ EXIT
END
