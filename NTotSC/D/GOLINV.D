REPLACE_STATE_TRIGGER GOLINV 0 ~!InParty("WILL") OR(2) Global("WillDialog1","GLOBAL",1) Global("WillDialog2","GLOBAL",1)~ 

APPEND ~GOLINV~

IF ~Global("WillOutsideParty","GLOBAL",1)
Exists("WILL")
!Dead("WILL")
~ THEN BEGIN 6
  SAY @0
  IF ~~ THEN EXTERN ~WILLJ~ Ring1
END

IF ~~ THEN BEGIN Ring2
  SAY @1
  IF ~~ THEN EXTERN ~WILLJ~ Ring3
END

IF ~~ THEN BEGIN Ring4
  SAY @2
  IF ~~ THEN DO ~GiveItemCreate("NTRING01","WILL",0,0,0)
SetGlobal("GolinSpawnRing","GLOBAL",2)
EscapeArea()
~ EXIT
END

IF ~InParty("WILL")
~ THEN BEGIN 9
  SAY @3
  IF ~~ THEN EXIT
END

END

APPEND ~WILLJ~

IF ~~ THEN BEGIN Ring1
  SAY @4
  IF ~~ THEN EXTERN ~GOLINV~ Ring2
END

IF ~~ THEN BEGIN Ring3
  SAY @5
  IF ~~ THEN EXTERN ~GOLINV~ Ring4
END

END
