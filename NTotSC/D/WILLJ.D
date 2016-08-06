BEGIN ~WILLJ~

IF ~Global("WillOutsideParty","GLOBAL",1) !InParty("Will")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("WillOutsideParty","GLOBAL",0) SetDialogue("WILLP") LeaveParty()~ EXIT
END

/*I_C_T ~KELDDA~ 0 WillKeldath
== ~WILLJ~ IF ~InParty("Will") !Dead("Will") !StateCheck("Will",STATE_SLEEPING)~ THEN @1
== ~KELDDA~  IF ~~ THEN @2
== ~WILLJ~ IF ~PartyHasItem("NTBLUN06")~ THEN @3
== ~KELDDA~  IF ~~ THEN @4
END*/

