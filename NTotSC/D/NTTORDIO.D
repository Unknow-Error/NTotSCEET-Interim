BEGIN ~NTTORDIO~

IF ~NumberOfTimesTalkedTo(0)
Global("TorkionNeedYou","Global",0)
Global("TorkionReadyToFight","Global",0)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @14
  IF ~~ THEN REPLY @15 DO ~SetGlobal("TorkionReadyToFight","Global",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY @16 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @17
  IF ~~ THEN DO ~SetGlobal("TorkionNeedYou","Global",1)
~ JOURNAL @18 EXIT
END

IF ~Global("TorkionNeedYou","Global",1)
Global("TorkionReadyToFight","Global",0)
!PartyHasItem("DSPOTN01")
!PartyHasItem("SW1H19")
~ THEN BEGIN 7
  SAY @19
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @20
  IF ~~ THEN REPLY @21 EXIT
  IF ~~ THEN REPLY @22 DO ~SetGlobal("TorkionReadyToFight","Global",1)
Enemy()
~ EXIT
END

IF ~Global("TorkionNeedYou","Global",1)
Global("TorkionReadyToFight","Global",0)
PartyHasItem("DSPOTN01")
PartyHasItem("SW1H19")
~ THEN BEGIN 9
  SAY @23
  IF ~~ THEN DO ~SetGlobal("TorkionNeedYou","Global",2)
TakePartyItem("DSPOTN01")
TakePartyItem("SW1H19")
DestroyItem("DSPOTN01")
AddexperienceParty(18000)
DropInventory()
Kill("TORDION1")
Kill("TORDION2")
Kill("TORDION")~ JOURNAL @24 EXIT
END

IF ~Global("TorkionNeedYou","Global",1)
Global("TorkionReadyToFight","Global",0)
!PartyHasItem("DSPOTN01")
PartyHasItem("SW1H19")
~ THEN BEGIN 10
  SAY @25
  IF ~~ THEN GOTO 8
END

IF ~Global("TorkionNeedYou","Global",1)
Global("TorkionReadyToFight","Global",0)
PartyHasItem("DSPOTN01")
!PartyHasItem("SW1H19")
~ THEN BEGIN 11
  SAY @26
  IF ~~ THEN GOTO 8
END
