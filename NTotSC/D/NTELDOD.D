BEGIN ~NTELDOD~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("TalkedToSatos","GLOBAL",1)
Global("EldodIsFriendKrotan","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("TalkedToEldod","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("TalkedToEldod","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("TalkedToEldod","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~SetGlobal("EldodIsFriendKrotan","GLOBAL",1)
EscapeArea()~ JOURNAL @6 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN DO ~SetGlobal("EldodIsFriendKrotan","GLOBAL",1)
EscapeArea()~ JOURNAL @6 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN DO ~SetGlobal("EldodIsFriendKrotan","GLOBAL",1)
EscapeArea()~ JOURNAL @6 EXIT
END

IF ~Global("EldodIsFriendKrotan","GLOBAL",1)
!Global("Restored","LOCALS",1)
!Global("EldodSaysTrue1","GLOBAL",1)
!Global("EldodSaysTrue3","GLOBAL",1)
!Global("KrotanAppears","GLOBAL",1)
!Dead("NTKROTAN")
Global("EldodComeEnemy","GLOBAL",0)
Global("SatosMustDie","GLOBAL",0)~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN DO ~SetGlobal("EldodComeEnemy","GLOBAL",1)
SetGlobal("SatosMustDie","GLOBAL",1)
EscapeArea()~ JOURNAL @10 EXIT
END

IF ~Global("Restored","LOCALS",1)
Global("EldodSaysTrue1","GLOBAL",0)
Global("EldodSaysTrue3","GLOBAL",0)
Global("SatosMustDie","GLOBAL",0)
Global("EldodIsFriendKrotan","GLOBAL",1)~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 7
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 DO ~SetGlobal("SatosMustDie","GLOBAL",1)
ActionOverride("NTELDOD",Enemy())~ JOURNAL @18 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @19
  IF ~~ THEN DO ~SetGlobal("EldodSaysTrue1","GLOBAL",1)
GiveItemCreate("NTKEYPB5",LastTalkedToBy(Myself),0,0,0)
EscapeArea()
~ JOURNAL @18 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @20
  IF ~~ THEN DO ~SetGlobal("EldodSaysTrue3","GLOBAL",1)
GiveItemCreate("NTKEYPB5",LastTalkedToBy(Myself),0,0,0)
ChangeEnemyAlly(Myself,NEUTRAL)
~ JOURNAL @18 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @21
  IF ~~ THEN DO ~SetGlobal("EldodSaysTrue1","GLOBAL",1)
GiveItemCreate("NTKEYPB5",LastTalkedToBy(Myself),0,0,0)
EscapeArea()
~ JOURNAL @18 EXIT
END

IF ~Dead("NTKROTAN")~ THEN BEGIN 11
  SAY @22
  IF ~~ THEN DO ~EscapeArea()~ EXIT //EXTERN ~NTKROTAN~ 7
END

IF ~~ THEN BEGIN 12
  SAY @23
  IF ~~ THEN EXTERN ~NTKROTAN~ 2
END

IF ~~ THEN BEGIN 13
  SAY @24
  IF ~~ THEN EXTERN ~NTBRENTA~ 8
END
