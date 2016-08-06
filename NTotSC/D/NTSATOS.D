BEGIN ~NTSATOS~

IF ~Global("TalkedToSatos","GLOBAL",0)
Global("NewEltanMissionNorth","GLOBAL",1)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN EXTERN ~NTKAMIRA~ 0
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN EXTERN ~NTMORDOR~ 0
END

IF ~~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN DO ~SetGlobal("TalkedToSatos","GLOBAL",1)
~ JOURNAL @11 EXIT
END

IF ~Global("SatosMustDie","GLOBAL",2)
Global("SatosIsDeadPB","GLOBAL",0)
~ THEN BEGIN 7
  SAY @12
  IF ~~ THEN DO ~SetGlobal("SatosIsDeadPB","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @13
  IF ~~ THEN DO ~GiveItemCreate("NTKEYPB5",LastTalkedToBy(Myself),0,0,0)
AddexperienceParty(5000)
SetGlobal("SatosIsDeadPB","GLOBAL",1)
Kill("NTSATOS1")~ JOURNAL @14 EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 9
  SAY @15
  IF ~~ THEN EXIT
END

IF ~Dead("NTKROTAN")
Global("SatosReward","GLOBAL",0)
~ THEN BEGIN 10
  SAY @16
  IF ~~ THEN DO ~AddexperienceParty(5000)
SetGlobal("SatosReward","GLOBAL",1)
~ EXIT
END

IF ~Global("EldodSaysTrue1","GLOBAL",1)
Global("SatosInformedPB","GLOBAL",0)
!Global("SatosMustDie","GLOBAL",1)
!Dead("NTKROTAN")
~ THEN BEGIN 11
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @19
  IF ~~ THEN DO ~SetGlobal("SatosInformedPB","GLOBAL",1)
~ EXIT
END

IF ~Global("EldodSaysTrue3","GLOBAL",1)
Global("SatosInformedPB","GLOBAL",0)
!Global("SatosMustDie","GLOBAL",1)
!Dead("NTKROTAN")
~ THEN BEGIN 13
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 12
END
