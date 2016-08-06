EXTEND_BOTTOM LOBAR 0
  IF ~Global("TalkedToHasdar1","GLOBAL",1)~ THEN REPLY @0 EXTERN LOBAR Book
  IF ~Global("HaeballQuestWanted","GLOBAL",1)~ THEN REPLY @0 EXTERN LOBAR Book
END

EXTEND_BOTTOM LOBAR 8
  IF ~Global("TalkedToHasdar1","GLOBAL",1)~ THEN REPLY @0 EXTERN LOBAR Book
  IF ~Global("HaeballQuestWanted","GLOBAL",1)~ THEN REPLY @0 EXTERN LOBAR Book
END

APPEND LOBAR

IF ~~ THEN BEGIN Book
  SAY @1
  IF ~Global("TalkedToLobarMage","GLOBAL",0)~ THEN REPLY @2 GOTO BookOffer
  IF ~~ THEN REPLY @3 GOTO BookOffer
END

IF ~~ THEN BEGIN BookOffer
  SAY @4
  IF ~PartyGoldGT(2999)~ THEN REPLY @5 GOTO GiveGold
  IF ~PartyGoldLT(2999)~ THEN REPLY @6 GOTO NotEnough
END

IF ~~ THEN BEGIN GiveGold
  SAY @7
  IF ~~ THEN DO ~TakePartyGold(3000)
SetGlobal("TalkedToLobarMage","GLOBAL",1)~ JOURNAL @8 EXIT
END

IF ~~ THEN BEGIN NotEnough
  SAY @9
  IF ~~ THEN EXIT
END
END