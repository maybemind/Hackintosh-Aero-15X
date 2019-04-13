// According to syscl, Apple expects this. It doesn't seem to
// do anything with regard to loading AppleIntelPCHPMC.kext, but
// it doesn't hurt and it's there in the real Mac's DSDT.
//

DefinitionBlock("", "SSDT", 2, "hack", "PMCR", 0)
{
    External(_SB.PCI0, DeviceObj)

    Scope(_SB.PCI0)
    {
		Device (PMCR)
		{
		    Name (_ADR, 0x001F0002)
		}
	}
}