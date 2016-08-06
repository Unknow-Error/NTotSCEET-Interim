BEGIN ~NTREEDRI~

IF ~NumberOfTimesTalkedTo(0)
Global("FreeReedrigToLeave","GLOBAL",0)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("FreeReedrigToLeave","GLOBAL",1)
AddexperienceParty(5000)
EscapeArea()
~ JOURNAL @1 EXIT
END

IF ~Global("FreeReedrigToLeave","GLOBAL",1)
!PartyHasItem("NTPBlet4")~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 EXIT
END

IF ~Global("TalkedToReedigInBeard","GLOBAL",0)
Global("FreeReedrigToLeave","GLOBAL",1)
PartyHasItem("NTPBlet4")~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN DO ~RevealAreaOnMap("AR60PB")
SetGlobal("TalkedToReedigInBeard","GLOBAL",1)
EscapeArea()
~ EXIT
END
