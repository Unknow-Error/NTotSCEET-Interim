BEGIN ~NTOLIVIA~

IF ~False()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("OliviaSaysToFly","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("OliviaSaysToFly","GLOBAL",1)~ JOURNAL @2 EXIT
END

IF ~PartyHasItem("POTN45")~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~TakePartyItem("POTN45")    // Potion of Freedom
GiveItemCreate("WAND07",LastTalkedToBy(Myself),1,10,0)  // Wand of Lightning
CreateCreature("NTWYVERN",[1263.902],8)                // Fire wyvern
EscapeArea()~ JOURNAL @4 EXIT
END

IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN EXIT
END

IF ~!PartyHasItem("POTN45")~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN EXIT
END
