BEGIN ~NTHAEBAL~

IF ~!Dead("NTHASDAR")
!Global("TalkedToReedigInBeard","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("STHaebal",LastTalkedToBy(Myself))~ JOURNAL @2 EXIT
  IF ~~ THEN REPLY @3 EXIT
END

IF ~False()~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @1 DO ~StartStore("STHaebal",LastTalkedToBy(Myself))~ JOURNAL @2 EXIT
  IF ~~ THEN REPLY @5 EXIT
END

IF ~Global("TalkedToReedigInBeard","GLOBAL",1)~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN DO ~Enemy()~ JOURNAL @7 EXIT
END

IF ~Dead("NTHASDAR")
Global("HaeballSaysNew1","GLOBAL",0)
Global("HaeballQuestWanted","GLOBAL",0)~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @13 DO ~SetGlobal("HaeballSaysNew1","GLOBAL",1)~ GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @14
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @15
  IF ~!Global("TalkedToHasdar1","GLOBAL",1)~ THEN GOTO 7
  IF ~Global("TalkedToHasdar1","GLOBAL",1)~ THEN REPLY @16 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @17
  IF ~~ THEN REPLY @18 DO ~SetGlobal("HaeballQuestWanted","GLOBAL",1)~ JOURNAL @19 GOTO 8
  IF ~PartyHasItem("DSGBBOW")
!PartyHasItem("NTMISC10")~ THEN REPLY @20 GOTO 9
  IF ~PartyHasItem("NTMISC10")
!PartyHasItem("DSGBBOW")~ THEN REPLY @21 GOTO 9
  IF ~PartyHasItem("DSGBBOW")
PartyHasItem("NTMISC10")~ THEN REPLY @22 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @23
  IF ~~ THEN REPLY @24 DO ~StartStore("STHaebal",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @25 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @26
  IF ~~ THEN DO ~Enemy()~ JOURNAL @27 EXIT
END

IF ~Global("HaeballSaysNew1","GLOBAL",1)
Global("HaeballQuestWanted","GLOBAL",0)~ THEN BEGIN 10
  SAY @28
  IF ~~ THEN REPLY @29 DO ~SetGlobal("HaeballSaysNew1","GLOBAL",2)~ GOTO 5
  IF ~~ THEN REPLY @30 GOTO 8
END

IF ~Global("HaeballQuestWanted","GLOBAL",1)
PartyHasItem("DSGBBOW")
!PartyHasItem("NTMISC10")~ THEN BEGIN 11
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 9
END

IF ~Global("HaeballQuestWanted","GLOBAL",1)
PartyHasItem("NTMISC10")
!PartyHasItem("DSGBBOW")~ THEN BEGIN 12
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 9
END

IF ~Global("HaeballQuestWanted","GLOBAL",1)
PartyHasItem("DSGBBOW")
PartyHasItem("NTMISC10")~ THEN BEGIN 13
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 9
END

IF ~Global("HaeballQuestWanted","GLOBAL",1)
!PartyHasItem("DSGBBOW")
!PartyHasItem("NTMISC10")~ THEN BEGIN 14
  SAY @37
  IF ~~ THEN REPLY @38 DO ~StartStore("STHaebal",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @39 EXIT
END
