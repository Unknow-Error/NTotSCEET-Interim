BEGIN ~NTNADALI~

IF ~ReputationLT(LastTalkedToBy,13)
Global("HelpNadalin","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~ReputationGT(LastTalkedToBy,12)
Global("HelpNadalin","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("HelpNadalin","GLOBAL",1)
RevealAreaOnMap("AR20PB")
SetGlobal("AR20PBReveal_Northern_Coast","Global",1)
~ UNSOLVED_JOURNAL @2 EXIT
END

IF ~!Dead("NTSilua")
Global("HelpNadalin","GLOBAL",1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("HelpNadalin","GLOBAL",1)
ReputationLT(LastTalkedToBy,8)
Dead("NTHUMBAB")
Dead("NTOOGOOR")
Dead("NTSilua")~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~AddexperienceParty(1000)
ReputationInc(1)
SetGlobal("HelpNadalin","GLOBAL",2)
EscapeArea()~ SOLVED_JOURNAL @5 EXIT
END

IF ~Global("HelpNadalin","GLOBAL",1)
Dead("NTHUMBAB")
Dead("NTOOGOOR")
Dead("NTSilua")~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN DO ~SetGlobal("HelpNadalin","GLOBAL",2)
EscapeArea()~ SOLVED_JOURNAL @5 EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("In_90PB","GLOBAL",0)
Global("HelpNadalin","GLOBAL",2)
AreaCheck("AR20PB")~ THEN BEGIN 6
  SAY @8
  IF ~Global("AverySaysOfKey","GLOBAL",1)
Global("SzyperNadalin","GLOBAL",1)~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetGlobal("In_90PB","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUAPanic("AR90PB","",[441.673],12))
ActionOverride(Player1,LeaveAreaLUA("AR90PB","",[441.673],12))
ActionOverride(Player2,LeaveAreaLUA("AR90PB","",[420.718],12))
ActionOverride(Player3,LeaveAreaLUA("AR90PB","",[498.696],12))
ActionOverride(Player4,LeaveAreaLUA("AR90PB","",[466.738],12))
ActionOverride(Player5,LeaveAreaLUA("AR90PB","",[558.710],12))
ActionOverride(Player6,LeaveAreaLUA("AR90PB","",[532.757],12))
~ EXIT
  IF ~~ THEN REPLY @13 EXIT
END

IF ~Global("In_90PB","GLOBAL",1)
AreaCheck("AR90PB")~ THEN BEGIN 8
  SAY @14
  IF ~~ THEN REPLY @15 DO ~SetGlobal("In_90PB","GLOBAL",0)
ActionOverride(Player1,LeaveAreaLUAPanic("AR20PB","",[189.1721],12))
ActionOverride(Player1,LeaveAreaLUA("AR20PB","",[189.1721],12))
ActionOverride(Player2,LeaveAreaLUA("AR20PB","",[117.1905],12))
ActionOverride(Player3,LeaveAreaLUA("AR20PB","",[136.1854],12))
ActionOverride(Player4,LeaveAreaLUA("AR20PB","",[284.1947],12))
ActionOverride(Player5,LeaveAreaLUA("AR20PB","",[312.1875],12))
ActionOverride(Player6,LeaveAreaLUA("AR20PB","",[374.1835],12))
~ EXIT
  IF ~~ THEN REPLY @16 EXIT
END
