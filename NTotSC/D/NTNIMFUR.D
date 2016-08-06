BEGIN ~NTNIMFUR~

IF ~NumDead("NTDOGFUN",3)
Global("NimFurlong","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~EscapeArea()~ JOURNAL @1 EXIT
END

IF ~NumDead("NTDOGFUN",2)
Global("NimFurlong","GLOBAL",1)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~AddexperienceParty(200)
SetGlobal("NimFurlong","GLOBAL",2)
EscapeArea()
~ JOURNAL @1 EXIT
END

IF ~NumDead("NTDOGFUN",0)
Global("NimFurlong","GLOBAL",1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~AddexperienceParty(2000)
GiveItemCreate("SCRLZZ",LastTalkedToBy,0,0,0)
SetGlobal("NimFurlong","GLOBAL",2)
EscapeArea()~ JOURNAL @4 EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN EXIT
END

IF ~NumberOfTimesTalkedTo(0)
Global("NimFurlong","GLOBAL",0)~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN DO ~SetGlobal("NimFurlong","GLOBAL",1)
~ EXIT
END

IF ~NumDead("NTDOGFUN",1)
Global("NimFurlong","GLOBAL",1)~ THEN BEGIN 5
  SAY @2
  IF ~~ THEN DO ~AddexperienceParty(200)
SetGlobal("NimFurlong","GLOBAL",2)
EscapeArea()~ EXIT
END
