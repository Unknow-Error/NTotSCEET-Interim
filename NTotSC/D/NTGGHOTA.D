BEGIN ~NTGGHOTA~

IF ~NumberOfTimesTalkedTo(0)
PartyHasItem("NTSWD05")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~TakePartyItem("NTSWD05")
AddexperienceParty(-20000)
Enemy()~ JOURNAL @1 EXIT
END

IF ~NumberOfTimesTalkedTo(0)
!PartyHasItem("NTSWD05")~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~Enemy()~ JOURNAL @3 EXIT
END
