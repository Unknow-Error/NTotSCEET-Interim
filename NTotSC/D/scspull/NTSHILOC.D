BEGIN ~NTSHILOC~

IF ~False()
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~NumberOfTimesTalkedTo(0)
!Dead("NTFOREOG")
~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN JOURNAL @2 EXIT
END

IF ~!Dead("NTFOREOG")~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Dead("NTFOREOG")~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~AddexperienceParty(750)
ReputationInc(1)
GiveItemCreate("NTBRAC01",LastTalkedToBy,0,0,0)
EscapeArea()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXIT
END
