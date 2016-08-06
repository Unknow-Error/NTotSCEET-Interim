BEGIN ~NTSILUA~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~Shout(125)
Enemy()
~ EXIT
END

IF ~NumberOfTimesTalkedTo(1)
~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~Shout(125)
Enemy()
~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END
