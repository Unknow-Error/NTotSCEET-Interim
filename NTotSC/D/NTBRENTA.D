BEGIN ~NTBRENTA~

IF ~Global("Brentaw","GLOBAL",0)
!Global("DeadUtorByOrpeho","GLOBAL",1)
!Global("Brentaw2","GLOBAL",1)
Global("TalkedToShelton","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Brentaw","GLOBAL",1)~ EXTERN ~NTORPEHO~ 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~NTORPEHO~ 2
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXTERN ~NTORPEHO~ 3
END

IF ~~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXTERN ~NTORPEHO~ 4
END

IF ~Global("TalkedToShelton","GLOBAL",1)
Global("DeadUtorByOrpeho","GLOBAL",1)
Global("Brentaw2","GLOBAL",0)
Global("MustKillOrpeho","GLOBAL",0)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~SetGlobal("Brentaw2","GLOBAL",1)~ EXTERN ~NTORPEHO~ 5
END

IF ~~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN EXTERN ~NTORPEHO~ 6
END

IF ~Global("Brentaw2","GLOBAL",1)
Dead("NTORPEHO")~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN DO ~SetGlobal("Brentaw2","GLOBAL",2)
EscapeArea()~ EXTERN ~NTKAMIRA~ 3
END

IF ~~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @8
  IF ~~ THEN EXTERN ~NTKROTAN~ 4
END

IF ~True()~ THEN BEGIN 9
  SAY @9
  IF ~~ THEN EXIT
END
