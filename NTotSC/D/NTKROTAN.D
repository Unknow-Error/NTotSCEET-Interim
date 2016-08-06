BEGIN ~NTKROTAN~

IF ~Global("EldodSaysTrue1","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~NTHOBGOD~ 0
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~NTELDOD~ 11
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~ActionOverride("NTHOBGOD",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~ActionOverride("NTKAMIRA",Enemy())
ActionOverride("NTMORDOR",Enemy())
ActionOverride("NTELDOD1",Enemy())
ActionOverride("NTHOBGOD",Enemy())
Enemy()~ JOURNAL @6 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN DO ~ActionOverride("NTMORDOR",Enemy())
ActionOverride("NTHOBGOD",Enemy())
Enemy()~ JOURNAL @6 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN DO ~ActionOverride("NTHOBGOD",Enemy())
Enemy()~ JOURNAL @6 EXIT
END

IF ~Global("EldodComeEnemy","GLOBAL",2)~ THEN BEGIN 8
  SAY @0
  IF ~~ THEN EXTERN ~NTELDOD~ 12
END

IF ~Dead("NTELDOD")~ THEN BEGIN 9
  SAY @0
  IF ~~ THEN EXTERN ~NTHOBGOD~ 1
END

IF ~Global("EldodSaysTrue3","GLOBAL",1)~ THEN BEGIN 10
  SAY @0
  IF ~~ THEN EXTERN ~NTHOBGOD~ 2
END

IF ~Dead("NTELDOD1")~ THEN BEGIN 11
  SAY @0
  IF ~~ THEN EXTERN ~NTHOBGOD~ 1
END
