
REPLACE ~DELTAN~

IF ~~ THEN BEGIN 6
  SAY @0
  IF ~ReputationGT(LastTalkedToBy,5)
~ THEN REPLY @1 DO ~SetGlobal("HelpEltan","GLOBAL",1)
SetGlobal("NewEltanMissionNorth","GLOBAL",1)
RevealAreaOnMap("AR30PB")
ActionOverride("SCAR",EscapeArea())
~ JOURNAL @2 EXIT
  IF ~ReputationLT(LastTalkedToBy,6)
~ THEN REPLY @3 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @4
  IF ~~ THEN DO ~SetGlobal("HelpEltan","GLOBAL",1)
SetGlobal("NewEltanMissionNorth","GLOBAL",1)
RevealAreaOnMap("AR30PB")
ActionOverride("SCAR",EscapeArea())
~ UNSOLVED_JOURNAL @5 EXIT
END

END
