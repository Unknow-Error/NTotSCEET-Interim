BEGIN ~NTSVLAST~

IF ~NumberOfTimesTalkedTo(0)
Global("SvlastSumonRevenant","GLOBAL",0)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("SvlastSumonRevenant","GLOBAL",1)
CreateCreature("NTZOMBJU",[2026.985],0)
~ JOURNAL @3 EXIT
END

IF ~False()
~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~AddexperienceParty(500)
~ JOURNAL @5 EXIT
END

IF ~Dead("NTZOMBJU")
Global("SvlastSumonRevenant","GLOBAL",1)
~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN DO ~IncrementGlobal("SvlastSumonRevenant","GLOBAL",1)
AddexperienceParty(500)
~ JOURNAL @5 EXIT
END

IF ~Global("SvlastSumonRevenant","GLOBAL",2)
~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~False()
~ THEN BEGIN 6
  SAY @8
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
