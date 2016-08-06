BEGIN ~NTOUPAST~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~NumberOfTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~NumberOfTimesTalkedTo(2)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~OR(2)
StateCheck(Myself,STATE_CHARMED)
NumberOfTimesTalkedTo(3)~ THEN BEGIN 4
  SAY @4
  IF ~Global("TalkedToLobarMage","GLOBAL",1)
Global("TalkedToOupaste","GLOBAL",0)
!Global("TalkedToOupaste","GLOBAL",1)~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 DO ~ChangeEnemyAlly(Myself,NEUTRAL)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @12
  IF ~~ THEN DO ~SetGlobal("TalkedToOupaste","GLOBAL",1)
ChangeEnemyAlly(Myself,NEUTRAL)
RevealAreaOnMap("BG5300")~ JOURNAL @13 EXIT
END
