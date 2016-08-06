BEGIN ~NTHASDAR~

IF ~Global("HasdarSaysNew","GLOBAL",1)
Global("TalkedToHasdar1","GLOBAL",0)
Global("TalkedToHasdar2","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @13 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @14
  IF ~~ THEN REPLY @15 DO ~SetGlobal("TalkedToHasdar1","GLOBAL",1)
SetGlobal("HasdarSaysNew","GLOBAL",2)~ UNSOLVED_JOURNAL @16 EXIT
  IF ~~ THEN REPLY @17 GOTO 6
  IF ~~ THEN REPLY @18 DO ~SetGlobal("TalkedToHasdar2","GLOBAL",1)
SetGlobal("HasdarSaysNew","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @19
  IF ~~ THEN REPLY @20 DO ~ActionOverride(Myself,Enemy())
CreateCreature("NTLEGIAN",[628.2376],8)
CreateCreature("NTMARIEL",[785.2266],8)
CreateCreature("SHADOW01",[1067.2131],8)
CreateCreature("SHADOW01",[1048.2325],8)
CreateCreature("SHADOW01",[877.2368],8)
~ EXIT
  IF ~~ THEN REPLY @21 DO ~SetGlobal("HasdarSaysNew","GLOBAL",2)
SetGlobal("TalkedToHasdar1","GLOBAL",1)
~ JOURNAL @16 EXIT
END

IF ~Global("TalkedToHasdar1","GLOBAL",0)
Global("TalkedToHasdar2","GLOBAL",1)~ THEN BEGIN 7
  SAY @22
  IF ~~ THEN REPLY @23 DO ~ActionOverride(Myself,Enemy())
CreateCreature("NTLEGIAN",[628.2376],8)
CreateCreature("NTMARIEL",[785.2266],8)
CreateCreature("SHADOW01",[1067.2131],8)
CreateCreature("SHADOW01",[1048.2325],8)
CreateCreature("SHADOW01",[877.2368],8)~ EXIT
  IF ~~ THEN REPLY @24 EXIT
  IF ~~ THEN REPLY @25 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @26
  IF ~~ THEN DO ~SetGlobal("TalkedToHasdar1","GLOBAL",1)
~ EXIT
END

IF ~Global("TalkedToHasdar1","GLOBAL",1)
!PartyHasItem("NTMISC10")~ THEN BEGIN 9
  SAY @27
  IF ~~ THEN REPLY @28 EXIT
  IF ~~ THEN REPLY @29 GOTO 6
END

IF ~Global("TalkedToHasdar1","GLOBAL",1)
PartyHasItem("NTMISC10")~ THEN BEGIN 10
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 11
  IF ~~ THEN REPLY @32 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @33
  IF ~~ THEN DO ~TakePartyItem("NTMISC10")
SetGlobal("TalkedToHasdar1","GLOBAL",2)
CreateCreature("NTLEGIAN",[628.2376],8)
CreateCreature("NTMARIEL",[785.2266],8)
CreateCreature("SHADOW01",[1067.2131],8)
CreateCreature("SHADOW01",[1048.2325],8)
CreateCreature("SHADOW01",[877.2368],8)
ActionOverride(Myself,EscapeArea())~ SOLVED_JOURNAL @34 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @35
  IF ~~ THEN DO ~TakePartyItem("NTMISC10")
SetGlobal("TalkedToHasdar1","GLOBAL",2)
CreateCreature("NTLEGIAN",[628.2376],8)
CreateCreature("NTMARIEL",[785.2266],8)
CreateCreature("SHADOW01",[1067.2131],8)
CreateCreature("SHADOW01",[1048.2325],8)
CreateCreature("SHADOW01",[877.2368],8)
ActionOverride(Myself,EscapeArea())~ SOLVED_JOURNAL @34 EXIT
END
