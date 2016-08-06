BEGIN ~NTMILEA~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~!Global("GetReadyToPitigriling","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("GetReadyToPitigriling","GLOBAL",1)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN REPLY @7 JOURNAL @8 EXIT
  IF ~~ THEN REPLY @9 DO ~TakePartyGold(100)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CUTREST")~ JOURNAL @10 EXIT
END

IF ~False()~ THEN BEGIN 5
  SAY @11
  IF ~~ THEN REPLY @12 DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CUTREST")~ EXIT
  IF ~~ THEN REPLY @13 EXIT
END
