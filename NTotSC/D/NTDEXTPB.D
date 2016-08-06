BEGIN ~NTDEXTPB~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("DexterSetupPB","BG3306",0)~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~CreateCreature("NTDEATHK",[553.284],10)~ EXIT
END

IF ~Dead("NTROACH")~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN DO ~CreateCreature("NTROACH",[553.284],10)
SetGlobal("DexterSetupPB","BG3306",1)~ EXIT
END
