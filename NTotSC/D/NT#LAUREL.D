REPLACE ~LAUREL~

IF ~~ THEN BEGIN 3
  SAY @0
  IF ~~ THEN DO ~SetInterrupt(FALSE)
Wait(3)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
Wait(15)
SetNumTimesTalkedTo(10)
SetInterrupt(TRUE)
~ JOURNAL @1 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @2
  IF ~~ THEN DO ~SetInterrupt(FALSE)
Wait(3)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
Wait(15)
SetNumTimesTalkedTo(10)
SetInterrupt(TRUE)
~ JOURNAL @3 EXIT
END

END
