BEGIN ~NTESSILA~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~!Global("GetReadyToPitigriling","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("GetReadyToPitigriling","GLOBAL",1)
Global("Essila","GLOBAL",0)~ THEN BEGIN 2
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
  IF ~~ THEN DO ~SetGlobal("Essila","GLOBAL",1)~ JOURNAL @7 EXIT
END

IF ~Global("Essila","GLOBAL",1)~ THEN BEGIN 5
  SAY @8
  IF ~PartyHasItem("POTN08")~ THEN REPLY @9 GOTO 6
  IF ~!PartyHasItem("POTN08")~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN DO ~SetGlobal("Essila","GLOBAL",2)
TakePartyItemNum("POTN08",1)
UseItem("POTN08","NTESSILA")~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CUTREST")~ EXIT
END

IF ~Global("Essila","GLOBAL",2)~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN REPLY @17 DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CUTREST")~ EXIT
  IF ~~ THEN REPLY @18 EXIT
END
