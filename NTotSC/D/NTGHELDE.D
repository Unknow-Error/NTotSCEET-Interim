BEGIN ~NTGHELDE~

IF ~False()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("GheldeharQuest","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("GheldeharQuest","GLOBAL",1)~ JOURNAL @2 EXIT
END

IF ~!PartyHasItem("BOOT06")
Global("GheldeharQuest","GLOBAL",1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("BOOT06")
GlobalGT("PilarToGheldehar","GLOBAL",0)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~TakePartyItem("BOOT06")
AddexperienceParty(100)
EscapeArea()~ EXIT
END

IF ~PartyHasItem("BOOT06")
!Global("PilarToGheldehar","GLOBAL",1)
!Global("PilarToGheldehar","GLOBAL",2)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~TakePartyItem("BOOT06")
GivePartyGold(90)
AddexperienceParty(400)
SetGlobal("GheldeharQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN DO ~AddexperienceParty(400)~ EXIT
END

IF ~Global("GheldeharQuest","GLOBAL",2)~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN EXIT
END
