/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150717-64
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of DSDT, Wed Dec 30 17:42:00 2015
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000AFEE (45038)
 *     Revision         0x02
 *     Checksum         0xFD
 *     OEM ID           "INTEL "
 *     OEM Table ID     "EDK2    "
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "VLV2"
 *     Compiler Version 0x0100000D (16777229)
 */
DefinitionBlock ("DSDT.aml", "DSDT", 2, "INTEL ", "EDK2    ", 0x00000003)
{
    /*
     * iASL Warning: There were 3 external control methods found during
     * disassembly, but only 1 was resolved (2 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * If necessary, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.PCI0.LPCB.TPM_.PTS_, MethodObj)    // Warning: Unresolved method, guessing 1 arguments
    External (NDN3, MethodObj)    // Warning: Unresolved method, guessing 1 arguments

    External (_PR_.CPU0._PPC, UnknownObj)
    External (CFGD, IntObj)
    External (MDBG, MethodObj)    // 1 Arguments
    External (PDC0, IntObj)
    External (PDC1, IntObj)
    External (PDC2, IntObj)
    External (PDC3, IntObj)

    Method (ADBG, 1, Serialized)
    {
        If (CondRefOf (MDBG))
        {
            Return (MDBG (Arg0))
        }

        Return (Zero)
    }

    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (SP1O, 0x4E)
    Name (SMBS, 0xEFA0)
    Name (SMBL, 0x20)
    Name (PMBS, 0x0400)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0500)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PFDR, 0xFED03034)
    Name (PMCB, 0xFED03000)
    Name (PCLK, 0xFED03060)
    Name (PUNB, 0xFED05000)
    Name (IBAS, 0xFED08000)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x1000)
    Name (HPTB, 0xFED00000)
    Name (MCHB, 0xFED14000)
    Name (MCHL, 0x4000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x02)
    Name (DSLC, 0x03)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (PSSS, 0x2B)
    Name (SOOT, 0x35)
    Name (ESCS, 0x48)
    Name (SDGV, 0x1C)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, Zero)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (FTBL, 0x04)
    OperationRegion (GNVS, SystemMemory, 0x79EEAA98, 0x0342)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        BNUM,   8, 
        B0SC,   8, 
        B1SC,   8, 
        B2SC,   8, 
        B0SS,   8, 
        B1SS,   8, 
        B2SS,   8, 
        Offset (0x28), 
        APIC,   8, 
        MPEN,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        Offset (0x32), 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        W381,   8, 
        NPCE,   8, 
        Offset (0x3C), 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IDMM,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        Offset (0x14C), 
        USEL,   8, 
        PU1E,   8, 
        PU2E,   8, 
        LPE0,   32, 
        LPE1,   32, 
        LPE2,   32, 
        ACST,   8, 
        BTST,   8, 
        PFLV,   8, 
        Offset (0x15F), 
        AOAC,   8, 
        XHCI,   8, 
        PMEN,   8, 
        LPEE,   8, 
        ISPA,   32, 
        ISPD,   8, 
        PCIB,   32, 
        PCIT,   32, 
        D10A,   32, 
        D10L,   32, 
        D11A,   32, 
        D11L,   32, 
        P10A,   32, 
        P10L,   32, 
        P11A,   32, 
        P11L,   32, 
        P20A,   32, 
        P20L,   32, 
        P21A,   32, 
        P21L,   32, 
        U10A,   32, 
        U10L,   32, 
        U11A,   32, 
        U11L,   32, 
        U20A,   32, 
        U20L,   32, 
        U21A,   32, 
        U21L,   32, 
        SP0A,   32, 
        SP0L,   32, 
        SP1A,   32, 
        SP1L,   32, 
        D20A,   32, 
        D20L,   32, 
        D21A,   32, 
        D21L,   32, 
        I10A,   32, 
        I10L,   32, 
        I11A,   32, 
        I11L,   32, 
        I20A,   32, 
        I20L,   32, 
        I21A,   32, 
        I21L,   32, 
        I30A,   32, 
        I30L,   32, 
        I31A,   32, 
        I31L,   32, 
        I40A,   32, 
        I40L,   32, 
        I41A,   32, 
        I41L,   32, 
        I50A,   32, 
        I50L,   32, 
        I51A,   32, 
        I51L,   32, 
        I60A,   32, 
        I60L,   32, 
        I61A,   32, 
        I61L,   32, 
        I70A,   32, 
        I70L,   32, 
        I71A,   32, 
        I71L,   32, 
        EM0A,   32, 
        EM0L,   32, 
        EM1A,   32, 
        EM1L,   32, 
        SI0A,   32, 
        SI0L,   32, 
        SI1A,   32, 
        SI1L,   32, 
        SD0A,   32, 
        SD0L,   32, 
        SD1A,   32, 
        SD1L,   32, 
        MH0A,   32, 
        MH0L,   32, 
        MH1A,   32, 
        MH1L,   32, 
        OSSL,   8, 
        Offset (0x294), 
        DPTE,   8, 
        THM0,   8, 
        THM1,   8, 
        THM2,   8, 
        THM3,   8, 
        THM4,   8, 
        CHGR,   8, 
        DDSP,   8, 
        DSOC,   8, 
        DPSR,   8, 
        DPCT,   32, 
        DPPT,   32, 
        DGC0,   32, 
        DGP0,   32, 
        DGC1,   32, 
        DGP1,   32, 
        DGC2,   32, 
        DGP2,   32, 
        DGC3,   32, 
        DGP3,   32, 
        DGC4,   32, 
        DGP4,   32, 
        DLPM,   8, 
        DSC0,   32, 
        DSC1,   32, 
        DSC2,   32, 
        DSC3,   32, 
        DSC4,   32, 
        DDBG,   8, 
        LPOE,   32, 
        LPPS,   32, 
        LPST,   32, 
        LPPC,   32, 
        LPPF,   32, 
        DPME,   8, 
        BCSL,   8, 
        NFCS,   8, 
        Offset (0x2FC), 
        TPMA,   32, 
        TPML,   32, 
        ITSA,   8, 
        S0IX,   8, 
        SDMD,   8, 
        EMVR,   8, 
        BMBD,   32, 
        FSAS,   8, 
        BDID,   8, 
        FBID,   8, 
        OTGM,   8, 
        STEP,   8, 
        WITT,   8, 
        SOCS,   8, 
        AMTE,   8, 
        UTS,    8, 
        SCPE,   8, 
        SARE,   8, 
        PSSD,   8, 
        EDPV,   8, 
        DIDX,   32
    }

    Scope (_SB)
    {
        Device (RTC)
        {
            Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0070,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
            })
        }

        Device (HPET)
        {
            Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED00000,         // Address Base
                        0x00000400,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000008,
                    }
                })
                Return (RBUF) /* \_SB_.HPET._CRS.RBUF */
            }
        }

        Name (PR00, Package (0x15)
        {
            Package (0x04)
            {
                0x0010FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0017FFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }
        })
        Name (AR00, Package (0x15)
        {
            Package (0x04)
            {
                0x0010FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0017FFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR01, Package (0x10)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKG, 
                Zero
            }
        })
        Name (AR01, Package (0x10)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x16
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00) /* \_SB_.AR00 */
                }

                Return (PR00) /* \_SB_.PR00 */
            }

            Device (VLVC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (HBUS, PCI_Config, Zero, 0xFF)
                Field (HBUS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xD0), 
                    SMCR,   32, 
                    SMDR,   32, 
                    MCRX,   32
                }

                Method (RMBR, 2, Serialized)
                {
                    Local0 = ((Arg0 << 0x10) | (Arg1 << 0x08))
                    SMCR = (0x100000F0 | Local0)
                    Return (SMDR) /* \_SB_.PCI0.VLVC.SMDR */
                }

                Method (WMBR, 3, Serialized)
                {
                    SMDR = Arg2
                    Local0 = ((Arg0 << 0x10) | (Arg1 << 0x08))
                    SMCR = (0x110000F0 | Local0)
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (TPMP)
                {
                    CreateDWordField (RES0, \_SB.PCI0._Y00._LEN, TPML)  // _LEN: Length
                    TPML = 0x1000
                }

                CreateDWordField (RES0, \_SB.PCI0._Y01._MIN, ISMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y01._MAX, ISMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y01._LEN, ISLN)  // _LEN: Length
                If ((ISPD == One))
                {
                    ISMN = ISPA /* \ISPA */
                    ISMX = (ISMN + ISLN) /* \_SB_.PCI0._CRS.ISLN */
                    ISMX -= One
                }
                Else
                {
                    ISMN = Zero
                    ISMX = Zero
                    ISLN = Zero
                }

                CreateDWordField (RES0, \_SB.PCI0._Y02._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y02._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y02._LEN, M1LN)  // _LEN: Length
                M1MN = (BMBD & 0xFF000000)
                M1MX = PCIT /* \PCIT */
                M1LN = ((M1MX - M1MN) + One)
                M1MX -= One
                CreateDWordField (RES0, \_SB.PCI0._Y03._MIN, GSMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y03._MAX, GSMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y03._LEN, GSLN)  // _LEN: Length
                GSMN = ^GFX0.GSTM /* \_SB_.PCI0.GFX0.GSTM */
                GSLN = (^GFX0.GUMA << 0x19)
                GSMX = (GSMN + GSLN) /* \_SB_.PCI0._CRS.GSLN */
                GSMX -= One
                Return (RES0) /* \_SB_.PCI0.RES0 */
            }

            Name (RES0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0077,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x006F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0070,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0078,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0C80,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x7A000000,         // Range Minimum
                    0x7A3FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00400000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x7C000000,         // Range Minimum
                    0x7FFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x04000000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xDFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x60000000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED40FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00001000,         // Length
                    ,, _Y00, AddressRangeMemory, TypeStatic)
            })
            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Local0 = Arg3
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (((Arg0 == GUID) && NEXP))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (~(CDW1 & One))
                    {
                        If ((CTRL & 0x02))
                        {
                            NHPG ()
                        }

                        If ((CTRL & 0x04))
                        {
                            NPME ()
                        }
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    OSCC = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Local0)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Local0)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (ILBR, SystemMemory, IBAS, 0x8C)
                    Field (ILBR, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x08), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8, 
                        Offset (0x88), 
                            ,   3, 
                        UI3E,   1, 
                        UI4E,   1
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PARC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA) /* \_SB_.PRSA */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PARC & 0x0F))
                            Return (RTLA) /* \_SB_.LNKA._CRS.RTLA */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PARC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PARC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PBRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB) /* \_SB_.PRSB */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PBRC & 0x0F))
                            Return (RTLB) /* \_SB_.LNKB._CRS.RTLB */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PBRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PBRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PCRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC) /* \_SB_.PRSC */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PCRC & 0x0F))
                            Return (RTLC) /* \_SB_.LNKC._CRS.RTLC */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PCRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PCRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PDRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD) /* \_SB_.PRSD */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PDRC & 0x0F))
                            Return (RTLD) /* \_SB_.LNKD._CRS.RTLD */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PDRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PDRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PERC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE) /* \_SB_.PRSE */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PERC & 0x0F))
                            Return (RTLE) /* \_SB_.LNKE._CRS.RTLE */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PERC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PERC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PFRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF) /* \_SB_.PRSF */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PFRC & 0x0F))
                            Return (RTLF) /* \_SB_.LNKF._CRS.RTLF */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PFRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PFRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PGRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG) /* \_SB_.PRSG */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PGRC & 0x0F))
                            Return (RTLG) /* \_SB_.LNKG._CRS.RTLG */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PGRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PGRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PHRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH) /* \_SB_.PRSH */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PHRC & 0x0F))
                            Return (RTLH) /* \_SB_.LNKH._CRS.RTLH */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PHRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PHRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, Zero, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    SRID,   8, 
                    Offset (0x80), 
                    C1EN,   1, 
                    Offset (0x84)
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            )
                        IO (Decode16,
                            0x0600,             // Range Minimum
                            0x0600,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (IUR3)
                {
                    Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((USEL == Zero))
                        {
                            If ((PU1E == One))
                            {
                                UI3E = One
                                UI4E = One
                                C1EN = One
                                Return (0x0F)
                            }
                        }

                        Return (Zero)
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        UI3E = Zero
                        UI4E = Zero
                        C1EN = Zero
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (BUF0, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                        })
                        Name (BUF1, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                        })
                        If ((SRID <= 0x04))
                        {
                            Return (BUF0) /* \_SB_.PCI0.LPCB.IUR3._CRS.BUF0 */
                        }
                        Else
                        {
                            Return (BUF1) /* \_SB_.PCI0.LPCB.IUR3._CRS.BUF1 */
                        }
                    }
                }

                Device (WPCN)
                {
                    Name (_HID, EisaId ("PNP0A05") /* Generic Container Device */)  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (W381)
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    OperationRegion (WPCN, SystemIO, 0x2E, 0x02)
                    Field (WPCN, ByteAcc, Lock, Preserve)
                    {
                        INDX,   8, 
                        DATA,   8
                    }

                    IndexField (INDX, DATA, ByteAcc, Lock, Preserve)
                    {
                        Offset (0x07), 
                        WR07,   8, 
                        Offset (0x20), 
                        WR20,   8, 
                        WR21,   8, 
                        WR22,   8, 
                        WR23,   8, 
                        WR24,   8, 
                        WR25,   8, 
                        WR26,   8, 
                        WR27,   8, 
                        WR28,   8, 
                        WR29,   8, 
                        WR2A,   8, 
                        Offset (0x30), 
                        WR30,   8, 
                        Offset (0x60), 
                        WR60,   8, 
                        WR61,   8, 
                        Offset (0x70), 
                        WR70,   8, 
                        WR71,   8, 
                        Offset (0x74), 
                        WR74,   8, 
                        WR75,   8, 
                        Offset (0xF0), 
                        WRF0,   8, 
                        WRF1,   8
                    }

                    Device (UAR5)
                    {
                        Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (W381)
                            {
                                WR07 = 0x03
                                If (WR30)
                                {
                                    Return (0x0F)
                                }

                                Return (0x0D)
                            }

                            Return (Zero)
                        }

                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            WR07 = 0x03
                            WR30 = Zero
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (BUF0, ResourceTemplate ()
                            {
                                IO (Decode16,
                                    0x03F8,             // Range Minimum
                                    0x03F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    _Y04)
                                IRQNoFlags (_Y05)
                                    {4}
                            })
                            WR07 = 0x03
                            If (W381)
                            {
                                CreateByteField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR5._CRS._Y04._MIN, IOL0)  // _MIN: Minimum Base Address
                                CreateByteField (BUF0, 0x03, IOH0)
                                CreateByteField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR5._CRS._Y04._MAX, IOL1)  // _MAX: Maximum Base Address
                                CreateByteField (BUF0, 0x05, IOH1)
                                CreateByteField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR5._CRS._Y04._LEN, LEN0)  // _LEN: Length
                                CreateWordField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR5._CRS._Y05._INT, IRQW)  // _INT: Interrupts
                                IOH0 = WR60 /* \_SB_.PCI0.LPCB.WPCN.WR60 */
                                IOL0 = WR61 /* \_SB_.PCI0.LPCB.WPCN.WR61 */
                                IOH1 = WR60 /* \_SB_.PCI0.LPCB.WPCN.WR60 */
                                IOL1 = WR61 /* \_SB_.PCI0.LPCB.WPCN.WR61 */
                                LEN0 = 0x08
                                Local0 = (WR70 & 0x0F)
                                If (Local0)
                                {
                                    IRQW = (One << Local0)
                                }
                                Else
                                {
                                    IRQW = Zero
                                }
                            }

                            Return (BUF0) /* \_SB_.PCI0.LPCB.WPCN.UAR5._CRS.BUF0 */
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x03F8,             // Range Minimum
                                    0x03F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x03F8,             // Range Minimum
                                    0x03F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x02F8,             // Range Minimum
                                    0x02F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x03E8,             // Range Minimum
                                    0x03E8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x02E8,             // Range Minimum
                                    0x02E8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            EndDependentFn ()
                        })
                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateByteField (Arg0, 0x02, IOLO)
                            CreateByteField (Arg0, 0x03, IOHI)
                            CreateWordField (Arg0, 0x09, IRQW)
                            WR07 = 0x03
                            WR30 = Zero
                            WR61 = IOLO /* \_SB_.PCI0.LPCB.WPCN.UAR5._SRS.IOLO */
                            WR60 = IOHI /* \_SB_.PCI0.LPCB.WPCN.UAR5._SRS.IOHI */
                            FindSetRightBit (IRQW, Local0)
                            If ((IRQW != Zero))
                            {
                                Local0--
                            }

                            WR70 = Local0
                            WR30 = One
                        }

                        Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                        {
                            0x19, 
                            0x04
                        })
                        Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                        {
                            Local0 = WR70 /* \_SB_.PCI0.LPCB.WPCN.WR70 */
                            If (Arg0)
                            {
                                WR70 = (Local0 | 0x10)
                            }
                            Else
                            {
                                WR70 = (Local0 & 0x0F)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                            WR07 = 0x03
                            WR30 = One
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                            WR07 = 0x03
                            WR30 = Zero
                        }
                    }

                    Device (UAR8)
                    {
                        Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (W381)
                            {
                                WR07 = 0x02
                                If (WR30)
                                {
                                    Return (0x0F)
                                }

                                Return (0x0D)
                            }

                            Return (Zero)
                        }

                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            WR07 = 0x02
                            WR30 = Zero
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (BUF0, ResourceTemplate ()
                            {
                                IO (Decode16,
                                    0x02F8,             // Range Minimum
                                    0x02F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    _Y06)
                                IRQNoFlags (_Y07)
                                    {3}
                            })
                            WR07 = 0x02
                            If (W381)
                            {
                                CreateByteField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR8._CRS._Y06._MIN, IOL0)  // _MIN: Minimum Base Address
                                CreateByteField (BUF0, 0x03, IOH0)
                                CreateByteField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR8._CRS._Y06._MAX, IOL1)  // _MAX: Maximum Base Address
                                CreateByteField (BUF0, 0x05, IOH1)
                                CreateByteField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR8._CRS._Y06._LEN, LEN0)  // _LEN: Length
                                CreateWordField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR8._CRS._Y07._INT, IRQW)  // _INT: Interrupts
                                IOH0 = WR60 /* \_SB_.PCI0.LPCB.WPCN.WR60 */
                                IOL0 = WR61 /* \_SB_.PCI0.LPCB.WPCN.WR61 */
                                IOH1 = WR60 /* \_SB_.PCI0.LPCB.WPCN.WR60 */
                                IOL1 = WR61 /* \_SB_.PCI0.LPCB.WPCN.WR61 */
                                LEN0 = 0x08
                                Local0 = (WR70 & 0x0F)
                                If (Local0)
                                {
                                    IRQW = (One << Local0)
                                }
                                Else
                                {
                                    IRQW = Zero
                                }
                            }

                            Return (BUF0) /* \_SB_.PCI0.LPCB.WPCN.UAR8._CRS.BUF0 */
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x02F8,             // Range Minimum
                                    0x02F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {3}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x03F8,             // Range Minimum
                                    0x03F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x02F8,             // Range Minimum
                                    0x02F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x03E8,             // Range Minimum
                                    0x03E8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x02E8,             // Range Minimum
                                    0x02E8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            EndDependentFn ()
                        })
                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateByteField (Arg0, 0x02, IOLO)
                            CreateByteField (Arg0, 0x03, IOHI)
                            CreateWordField (Arg0, 0x09, IRQW)
                            WR07 = 0x02
                            WR30 = Zero
                            WR61 = IOLO /* \_SB_.PCI0.LPCB.WPCN.UAR8._SRS.IOLO */
                            WR60 = IOHI /* \_SB_.PCI0.LPCB.WPCN.UAR8._SRS.IOHI */
                            FindSetRightBit (IRQW, Local0)
                            If ((IRQW != Zero))
                            {
                                Local0--
                            }

                            WR70 = Local0
                            WR30 = One
                        }

                        Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                        {
                            0x19, 
                            0x04
                        })
                        Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                        {
                            Local0 = WR70 /* \_SB_.PCI0.LPCB.WPCN.WR70 */
                            If (Arg0)
                            {
                                WR70 = (Local0 | 0x10)
                            }
                            Else
                            {
                                WR70 = (Local0 & 0x0F)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                            WR07 = 0x02
                            WR30 = One
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                            WR07 = 0x02
                            WR30 = Zero
                        }
                    }
                }

                OperationRegion (PKBS, SystemIO, 0x60, 0x05)
                Field (PKBS, ByteAcc, Lock, Preserve)
                {
                    PKBD,   8, 
                    Offset (0x02), 
                    Offset (0x03), 
                    Offset (0x04), 
                    PKBC,   8
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (((PKBD == 0xFF) & (PKBC == 0xFF)))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (((PKBD == 0xFF) & (PKBC == 0xFF)))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                }
            }
        }
    }

    Scope (\)
    {
        OperationRegion (PMIO, SystemIO, PMBS, 0x46)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01), 
            PWBS,   1, 
            Offset (0x20), 
                ,   13, 
            PMEB,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1
        }

        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x20), 
                ,   4, 
            PSCI,   1, 
            SCIS,   1
        }

        OperationRegion (PMCR, SystemMemory, PFDR, 0x04)
        Field (PMCR, DWordAcc, Lock, Preserve)
        {
            L10D,   1, 
            L11D,   1, 
            L12D,   1, 
            L13D,   1, 
            L14D,   1, 
            L15D,   1, 
            Offset (0x01), 
            SD1D,   1, 
            SD2D,   1, 
            SD3D,   1, 
            HSID,   1, 
                ,   1, 
            LPED,   1, 
            OTGD,   1, 
            Offset (0x02), 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            L20D,   1, 
            L21D,   1, 
            L22D,   1, 
            L23D,   1, 
            L24D,   1, 
            L25D,   1, 
            L26D,   1, 
            L27D,   1
        }

        OperationRegion (CLKC, SystemMemory, PCLK, 0x18)
        Field (CLKC, DWordAcc, Lock, Preserve)
        {
            CKC0,   2, 
            CKF0,   1, 
            Offset (0x04), 
            CKC1,   2, 
            CKF1,   1, 
            Offset (0x08), 
            CKC2,   2, 
            CKF2,   1, 
            Offset (0x0C), 
            CKC3,   2, 
            CKF3,   1, 
            Offset (0x10), 
            CKC4,   2, 
            CKF4,   1, 
            Offset (0x14), 
            CKC5,   2, 
            CKF5,   1, 
            Offset (0x18)
        }
    }

    Scope (_SB)
    {
        Device (LPEA)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F28" /* Intel SST Audio DSP */)  // _HID: Hardware ID
            Name (_CID, "80860F28" /* Intel SST Audio DSP */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Low Power Audio Controller - 80860F28")  // _DDN: DOS Device Name
            Name (_SUB, "80867270")  // _SUB: Subsystem ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                ^I2C2.RTEK
            })
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PLPE
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((LPEE == 0x02) && (LPED == Zero)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x12345678,         // Address Base
                    0x00200000,         // Address Length
                    _Y08)
                Memory32Fixed (ReadWrite,
                    0xFE830000,         // Address Base
                    0x00001000,         // Address Length
                    _Y09)
                Memory32Fixed (ReadWrite,
                    0x55AA55AA,         // Address Base
                    0x00200000,         // Address Length
                    _Y0A)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001D,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.LPEA._Y08._BAS, B0BA)  // _BAS: Base Address
                B0BA = LPE0 /* \LPE0 */
                CreateDWordField (RBUF, \_SB.LPEA._Y09._BAS, B1BA)  // _BAS: Base Address
                B1BA = LPE1 /* \LPE1 */
                CreateDWordField (RBUF, \_SB.LPEA._Y0A._BAS, B2BA)  // _BAS: Base Address
                B2BA = LPE2 /* \LPE2 */
                Return (RBUF) /* \_SB_.LPEA.RBUF */
            }

            OperationRegion (KEYS, SystemMemory, LPE1, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            PowerResource (PLPE, 0x05, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (One)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    PSAT &= 0xFFFFFFFC
                    Local0 = PSAT /* \_SB_.LPEA.PSAT */
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    PSAT |= 0x03
                    Local0 = PSAT /* \_SB_.LPEA.PSAT */
                }
            }

            Device (ADMA)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "ADMA0F28" /* Intel Audio DMA */)  // _HID: Hardware ID
                Name (_CID, "ADMA0F28" /* Intel Audio DMA */)  // _CID: Compatible ID
                Name (_DDN, "Intel(R) Audio  DMA0 - DMA0F28")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xDF498000,         // Address Base
                            0x00001000,         // Address Length
                            _Y0B)
                        Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                        {
                            0x00000018,
                        }
                    })
                    CreateDWordField (RBUF, \_SB.LPEA.ADMA._CRS._Y0B._BAS, B0BA)  // _BAS: Base Address
                    B0BA = LPE0 /* \LPE0 */
                    Return (RBUF) /* \_SB_.LPEA.ADMA._CRS.RBUF */
                }
            }

            Device (SSP1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "SSPX0000" /* Intel SSP Device */)  // _HID: Hardware ID
                Name (_CID, "SSPX0000" /* Intel SSP Device */)  // _CID: Compatible ID
                Name (_DDN, "Intel(R) SSP Device")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    If ((OSSL == One))
                    {
                        While (One)
                        {
                            _T_0 = ToInteger (BDID)
                            If ((_T_0 == 0x03))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                If ((_T_0 == 0x04))
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    If ((_T_0 == 0x02))
                                    {
                                        Return (0x0F)
                                    }
                                }
                            }

                            Break
                        }
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xDF4A1000,         // Address Base
                            0x00001000,         // Address Length
                            _Y0C)
                        Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                        {
                            0x0000001B,
                        }
                    })
                    CreateDWordField (RBUF, \_SB.LPEA.SSP1._CRS._Y0C._BAS, B0BA)  // _BAS: Base Address
                    B0BA = (LPE0 + 0x000A1000)
                    Return (RBUF) /* \_SB_.LPEA.SSP1._CRS.RBUF */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    If ((Arg0 == ToUUID ("886a3f26-600c-4401-b7b1-01e9c2e7e77e")))
                    {
                        Return ("BLUET")
                    }

                    If ((Arg0 == ToUUID ("30d3f83e-2ee1-4bf0-86e9-f69ded2887ee")))
                    {
                        Return (One)
                    }

                    If ((Arg0 == ToUUID ("208b1400-f7c8-4325-ab32-53cd79b7d0a6")))
                    {
                        Return (0xFF2A1000)
                    }

                    If ((Arg0 == ToUUID ("e6e37c60-e78b-4fbd-bd26-5bd3667a6c9a")))
                    {
                        While (One)
                        {
                            _T_0 = ToInteger (Arg1)
                            If ((_T_0 == 0x08))
                            {
                                Return (Buffer (0x05)
                                {
                                     0x00, 0x01, 0x00, 0x00, 0x01                     /* ..... */
                                })
                            }
                            Else
                            {
                                If ((_T_0 == 0x10))
                                {
                                    Return (Buffer (0x05)
                                    {
                                         0x06, 0x02, 0x00, 0x0E, 0x10                     /* ..... */
                                    })
                                }
                                Else
                                {
                                    If ((_T_0 == 0x30))
                                    {
                                        Return (Buffer (0x05)
                                        {
                                             0x06, 0x02, 0x00, 0x0E, 0x10                     /* ..... */
                                        })
                                    }
                                }
                            }

                            Break
                        }

                        Return ("ERR-T")
                    }

                    Return ("ERR-M")
                }
            }

            Device (SSP2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "SSPX0000" /* Intel SSP Device */)  // _HID: Hardware ID
                Name (_CID, "SSPX0000" /* Intel SSP Device */)  // _CID: Compatible ID
                Name (_DDN, "Intel(R) SSP Device")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((OSSL == One))
                    {
                        If ((BDID == 0x03))
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xDF4A2000,         // Address Base
                            0x00001000,         // Address Length
                            _Y0D)
                        Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                        {
                            0x0000001C,
                        }
                    })
                    CreateDWordField (RBUF, \_SB.LPEA.SSP2._CRS._Y0D._BAS, B0BA)  // _BAS: Base Address
                    B0BA = (LPE0 + 0x000A2000)
                    Return (RBUF) /* \_SB_.LPEA.SSP2._CRS.RBUF */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    If ((Arg0 == ToUUID ("886a3f26-600c-4401-b7b1-01e9c2e7e77e")))
                    {
                        Return ("MODEM")
                    }

                    If ((Arg0 == ToUUID ("30d3f83e-2ee1-4bf0-86e9-f69ded2887ee")))
                    {
                        Return (0x02)
                    }

                    If ((Arg0 == ToUUID ("208b1400-f7c8-4325-ab32-53cd79b7d0a6")))
                    {
                        Return (0xFF2A2000)
                    }

                    If ((Arg0 == ToUUID ("e6e37c60-e78b-4fbd-bd26-5bd3667a6c9a")))
                    {
                        While (One)
                        {
                            _T_0 = ToInteger (Arg1)
                            If ((_T_0 == 0x08))
                            {
                                Return (Buffer (0x05)
                                {
                                     0x00, 0x01, 0x00, 0x00, 0x01                     /* ..... */
                                })
                            }
                            Else
                            {
                                If ((_T_0 == 0x10))
                                {
                                    Return (Buffer (0x05)
                                    {
                                         0x06, 0x02, 0x00, 0x0E, 0x10                     /* ..... */
                                    })
                                }
                                Else
                                {
                                    If ((_T_0 == 0x30))
                                    {
                                        Return (Buffer (0x05)
                                        {
                                             0x06, 0x02, 0x00, 0x0E, 0x10                     /* ..... */
                                        })
                                    }
                                }
                            }

                            Break
                        }

                        Return ("ERR-T")
                    }

                    Return ("ERR-M")
                }
            }
        }

        Device (VIBR)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "VIB8601")  // _HID: Hardware ID
            Name (_CID, "VIB8601")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Vibra Driver - VIB8601")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0004
                        }
                })
                Return (RBUF) /* \_SB_.VIBR._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((BDID == 0x03))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (AMCR)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "AMCR0F28" /* Intel Audio Machine Driver */)  // _HID: Hardware ID
            Name (_CID, "AMCR0F28" /* Intel Audio Machine Driver */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Audio Machine Driver - AMCR0F28")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                GPO2, 
                ^I2C2.RTEK
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0004
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001B
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001C
                        }
                })
                Return (RBUF) /* \_SB_.AMCR._CRS.RBUF */
            }
        }

        Device (HAD)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "HAD0F28" /* Intel HDMI Audio Driver */)  // _HID: Hardware ID
            Name (_CID, "HAD0F28" /* Intel HDMI Audio Driver */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HDMI Audio Driver - HAD")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00065800,         // Address Base
                        0x00000140,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.HAD_._CRS.RBUF */
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (XHC1)
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            Name (_DDN, "Baytrail XHCI controller (CCG core/Host only)")  // _DDN: DOS Device Name
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_STR, Unicode ("Baytrail XHCI controller (CCG core/Host only)"))  // _STR: Description String
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Name (MSET, Zero)
            Name (DDST, Zero)
            OperationRegion (PCSL, SystemMemory, 0xE00A0074, One)
            Field (PCSL, ByteAcc, NoLock, WriteAsZeros)
            {
                PMPS,   2
            }

            OperationRegion (PCSH, SystemMemory, 0xE00A0075, One)
            Field (PCSH, ByteAcc, NoLock, Preserve)
            {
                PMCH,   8
            }

            OperationRegion (XMSE, SystemMemory, 0xE00A0000, 0x0100)
            Field (XMSE, AnyAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                    ,   1, 
                CMSE,   1, 
                Offset (0x10), 
                BAR0,   32, 
                Offset (0x74), 
                PMCS,   16, 
                Offset (0xB0), 
                    ,   13, 
                PHY2,   2, 
                    ,   13, 
                USHP,   1, 
                    ,   1, 
                SCFG,   1
            }

            Method (PWOF, 0, Serialized)
            {
                P8XH (Zero, 0xAA)
                SCFG = One
            }

            Method (PWON, 0, Serialized)
            {
                P8XH (Zero, 0xBB)
                SCFG = Zero
            }

            OperationRegion (XPRT, SystemMemory, (PEBS + 0x000A0000), 0x0100)
            Field (XPRT, AnyAcc, NoLock, Preserve)
            {
                DVID,   16, 
                Offset (0x74), 
                D0D3,   2, 
                Offset (0x75), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1, 
                Offset (0xB0), 
                    ,   13, 
                MB13,   1, 
                MB14,   1, 
                Offset (0xB4), 
                Offset (0xD0), 
                PR2,    32, 
                PR2M,   32, 
                PR3,    32, 
                PR3M,   32
            }

            OperationRegion (XHCP, SystemMemory, (PEBS + 0x000A0000), 0x0100)
            Field (XHCP, AnyAcc, Lock, Preserve)
            {
                Offset (0x04), 
                PDBM,   16, 
                Offset (0x10), 
                MEMB,   32
            }

            Name (PCHS, Zero)
            Name (SRMB, 0x90800000)
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                ADBG ("XHC D0")
                P8XH (Zero, 0xA0)
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                SRMB = (MEMB & 0xFFFFFFF0)
                Local2 = MEMB /* \_SB_.PCI0.XHC1.MEMB */
                Local1 = PDBM /* \_SB_.PCI0.XHC1.PDBM */
                PDBM &= 0xFFFFFFFFFFFFFFF9
                MEMB = SRMB /* \_SB_.PCI0.XHC1.SRMB */
                PDBM |= 0x02
                OperationRegion (MCA1, SystemMemory, SRMB, 0x9000)
                Field (MCA1, DWordAcc, Lock, Preserve)
                {
                    Offset (0x510), 
                    R510,   32, 
                    Offset (0x520), 
                    R520,   32, 
                    Offset (0x530), 
                    R530,   32, 
                    Offset (0x540), 
                    R540,   32, 
                    Offset (0x8058), 
                    Offset (0x8059), 
                    CDES,   1, 
                    Offset (0x805A), 
                    STSP,   1, 
                        ,   3, 
                    CFEC,   1, 
                    Offset (0x8060), 
                        ,   25, 
                    EPRE,   1, 
                    Offset (0x8094), 
                        ,   14, 
                    CMMF,   1, 
                        ,   6, 
                    ESSP,   1, 
                        ,   1, 
                    DAPA,   1, 
                    Offset (0x80E0), 
                        ,   15, 
                    AX15,   1, 
                    Offset (0x80FC), 
                        ,   25, 
                    PPL1,   1, 
                    Offset (0x8110), 
                        ,   1, 
                    CRNC,   1, 
                    Offset (0x8111), 
                    EPTD,   1, 
                        ,   2, 
                    HTPP,   1, 
                        ,   8, 
                    TRMC,   1, 
                    Offset (0x8140), 
                    MIDS,   12, 
                    AWPC,   12, 
                    EIHR,   8, 
                        ,   6, 
                    SSII,   1, 
                    SSIO,   1, 
                    HSII,   1, 
                    Offset (0x8154), 
                        ,   31, 
                    CLK2,   1, 
                    Offset (0x8164), 
                    ETBC,   1, 
                    ERBC,   1, 
                    ESAI,   1, 
                    ETMA,   1, 
                    EOAI,   1, 
                    EIAI,   1, 
                    TTEA,   1, 
                    ECMA,   1, 
                    Offset (0x816C), 
                        ,   2, 
                    CLK0,   1, 
                        ,   11, 
                    CLK1,   1, 
                    Offset (0x8188), 
                    Offset (0x818B), 
                    FIDD,   1, 
                        ,   1, 
                    FTSS,   1
                }

                Local3 = D0D3 /* \_SB_.PCI0.XHC1.D0D3 */
                If ((Local3 == 0x03))
                {
                    D0D3 = Zero
                    Sleep (0x0A)
                }

                If ((PCHS == 0x02))
                {
                    MB13 = Zero
                    MB14 = Zero
                    CLK0 = Zero
                    CLK1 = Zero
                }

                CLK2 = One
                CDES = One
                STSP = One
                CFEC = Zero
                EPRE = One
                DAPA = One
                ESSP = One
                CMMF = One
                PPL1 = One
                CRNC = Zero
                EPTD = Zero
                HTPP = One
                TRMC = One
                MIDS = 0x3C
                AWPC = 0x0F
                EIHR = 0xFF
                SSII = One
                SSIO = One
                HSII = One
                ERBC = One
                ETBC = One
                ESAI = One
                ETMA = One
                EOAI = One
                EIAI = One
                TTEA = One
                ECMA = One
                FIDD = One
                FTSS = One
                USHP = Zero
                If ((PCHS == 0x02))
                {
                    While (((((R510 & 0x03FB) == 0x02E0) || ((R520 & 
                        0x03FB) == 0x02E0)) || (((R530 & 0x03FB) == 0x02E0) || ((R540 & 
                        0x03FB) == 0x02E0))))
                    {
                        Stall (0x32)
                    }

                    Local0 = R510 /* \_SB_.PCI0.XHC1._PS0.R510 */
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R510 = (Local0 | 0x80000000)
                        While (((R510 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R510 & 0xFFFFFFFFFFFFFFFD)
                        R510 = (Local0 | 0x00FE0000)
                    }

                    Local0 = R520 /* \_SB_.PCI0.XHC1._PS0.R520 */
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R520 = (Local0 | 0x80000000)
                        While (((R520 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R520 & 0xFFFFFFFFFFFFFFFD)
                        R520 = (Local0 | 0x00FE0000)
                    }

                    Local0 = R530 /* \_SB_.PCI0.XHC1._PS0.R530 */
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R530 = (Local0 | 0x80000000)
                        While (((R530 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R530 & 0xFFFFFFFFFFFFFFFD)
                        R530 = (Local0 | 0x00FE0000)
                    }

                    Local0 = R540 /* \_SB_.PCI0.XHC1._PS0.R540 */
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R540 = (Local0 | 0x80000000)
                        While (((R540 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R540 & 0xFFFFFFFFFFFFFFFD)
                        R540 = (Local0 | 0x00FE0000)
                    }

                    AX15 = One
                }

                If ((Local3 == 0x03))
                {
                    ADBG ("PS0->D3")
                    P8XH (Zero, 0xA1)
                    D0D3 = 0x03
                }
                Else
                {
                    P8XH (Zero, 0xA2)
                }

                PDBM &= 0xFFFFFFFFFFFFFFFD
                MEMB = Local2
                PDBM = Local1
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                ADBG ("XHC D3")
                P8XH (Zero, 0xB0)
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                SRMB = (MEMB & 0xFFFFFFF0)
                Local2 = MEMB /* \_SB_.PCI0.XHC1.MEMB */
                Local1 = PDBM /* \_SB_.PCI0.XHC1.PDBM */
                PDBM &= 0xFFFFFFFFFFFFFFF9
                MEMB = SRMB /* \_SB_.PCI0.XHC1.SRMB */
                PDBM |= 0x02
                OperationRegion (MCA1, SystemMemory, SRMB, 0x9000)
                Field (MCA1, DWordAcc, Lock, Preserve)
                {
                    Offset (0x80E0), 
                        ,   15, 
                    AX15,   1, 
                    Offset (0x8154), 
                        ,   31, 
                    CLK2,   1, 
                    Offset (0x816C), 
                        ,   2, 
                    CLK0,   1, 
                        ,   11, 
                    CLK1,   1, 
                    Offset (0x8170)
                }

                Local3 = D0D3 /* \_SB_.PCI0.XHC1.D0D3 */
                If ((Local3 == 0x03))
                {
                    D0D3 = Zero
                }

                If ((PCHS == 0x02))
                {
                    MB13 = One
                    MB14 = One
                    CLK0 = One
                    CLK1 = One
                }

                CLK2 = Zero
                If ((PCHS == 0x02))
                {
                    AX15 = Zero
                }

                If ((PMEE == One))
                {
                    USHP = One
                }

                If ((Local3 == 0x03))
                {
                    ADBG ("PS3->D3")
                    P8XH (Zero, 0xB1)
                    D0D3 = 0x03
                }
                Else
                {
                    P8XH (Zero, 0xB2)
                }

                PDBM &= 0xFFFFFFFFFFFFFFFD
                MEMB = Local2
                PDBM = Local1
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((XHCI != Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (SSP1)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x06, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSP1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x4B, 0x19, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  /* K....... */
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSP1._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM11")
                        If ((Arg0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM12")
                            If ((Arg1 == Zero))
                            {
                                ADBG ("DSM13")
                                If ((Arg2 == Zero))
                                {
                                    ADBG ("SSP1 QUERY")
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x05                                             /* . */
                                    })
                                }

                                If ((Arg2 == 0x02))
                                {
                                    ADBG ("SSP1 DSM")
                                    Debug = "Method _DSM Function Index2"
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x06, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS01._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x4B, 0x19, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  /* K....... */
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS01._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM21")
                        If ((Arg0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM22")
                            If ((Arg1 == Zero))
                            {
                                ADBG ("DSM23")
                                If ((Arg2 == Zero))
                                {
                                    ADBG ("HS01 QUERY")
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x05                                             /* . */
                                    })
                                }

                                If ((Arg2 == 0x02))
                                {
                                    ADBG ("HS01 DSM")
                                    Debug = "Method _DSM Function Index2"
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (UPCR, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        If ((BDID == 0x02))
                        {
                            Return (UPCR) /* \_SB_.PCI0.XHC1.RHUB.HS02._UPC.UPCR */
                        }
                        Else
                        {
                            Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS02._UPC.UPCP */
                        }
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* @....... */
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                            }
                        })
                        Name (PLDR, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x41, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* A....... */
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                            }
                        })
                        If ((BDID == 0x02))
                        {
                            Return (PLDR) /* \_SB_.PCI0.XHC1.RHUB.HS02._PLD.PLDR */
                        }
                        Else
                        {
                            Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS02._PLD.PLDP */
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM31")
                        If ((Arg0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM32")
                            If ((Arg1 == Zero))
                            {
                                ADBG ("DSM33")
                                If ((Arg2 == Zero))
                                {
                                    ADBG ("HS02 QUERY")
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x05                                             /* . */
                                    })
                                }

                                If ((Arg2 == 0x02))
                                {
                                    ADBG ("HS02 DSM")
                                    Debug = "Method _DSM Function Index2"
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HS03)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Name (_DEP, Package (0x01)  // _DEP: Dependencies
                    {
                        GPO2
                    })
                    Name (PSTS, Zero)
                    PowerResource (WWPR, 0x00, 0x0000)
                    {
                        Name (_DEP, Package (0x01)  // _DEP: Dependencies
                        {
                            GPO2
                        })
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If ((\_SB.GPO2.AVBL == One))
                            {
                                Return (\_SB.GPO2.WWD3)
                            }

                            Return (Zero)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If ((PSTS == Zero))
                            {
                                If ((\_SB.GPO2.AVBL == One))
                                {
                                    Sleep (0x0200)
                                    \_SB.GPO2.WWD3 = One
                                    PSTS = One
                                }
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If ((\_SB.GPO2.AVBL == One))
                            {
                                \_SB.GPO2.WWD3 = Zero
                                PSTS = Zero
                            }
                        }
                    }

                    Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                    Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                    {
                        WWPR
                    })
                    Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                    {
                        WWPR
                    })
                    Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                    {
                        WWPR
                    })
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS03._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* 0....... */
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS03._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM41")
                        If ((Arg0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM42")
                            If ((Arg1 == Zero))
                            {
                                ADBG ("DSM43")
                                If ((Arg2 == Zero))
                                {
                                    ADBG ("HS03 QUERY")
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x05                                             /* . */
                                    })
                                }

                                If ((Arg2 == 0x02))
                                {
                                    ADBG ("HS03 DSM")
                                    Debug = "Method _DSM Function Index2"
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }

                    Device (MODM)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                        {
                            WWPR
                        })
                        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                        {
                            WWPR
                        })
                        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                        {
                            WWPR
                        })
                    }
                }

                Device (HS04)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS04._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* 0....... */
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS04._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM51")
                        If ((Arg0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM52")
                            If ((Arg1 == Zero))
                            {
                                ADBG ("DSM53")
                                If ((Arg2 == Zero))
                                {
                                    ADBG ("HS04 QUERY")
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x05                                             /* . */
                                    })
                                }

                                If ((Arg2 == 0x02))
                                {
                                    ADBG ("HS04 DSM")
                                    Debug = "Method _DSM Function Index2"
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HSC1)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Name (_DEP, Package (0x01)  // _DEP: Dependencies
                    {
                        GPO2
                    })
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HSC1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* 0....... */
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HSC1._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM61")
                        If ((Arg0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM62")
                            If ((Arg1 == Zero))
                            {
                                ADBG ("DSM63")
                                If ((Arg2 == Zero))
                                {
                                    ADBG ("HSIC1 QUERY")
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x05                                             /* . */
                                    })
                                }

                                If ((Arg2 == 0x02))
                                {
                                    ADBG ("HSIC1 DSM")
                                    Debug = "Method _DSM Function Index2"
                                    Return (One)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }

                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0017
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0016
                            }
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (RBUF) /* \_SB_.PCI0.XHC1.RHUB.HSC1.RBUF */
                    }
                }

                Device (HSC2)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HSC2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* 0....... */
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HSC2._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM71")
                        If ((Arg0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM72")
                            If ((Arg1 == Zero))
                            {
                                ADBG ("DSM73")
                                If ((Arg2 == Zero))
                                {
                                    ADBG ("HSIC2 QUERY")
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x05                                             /* . */
                                    })
                                }

                                If ((Arg2 == 0x02))
                                {
                                    ADBG ("HSIC2 DSM called")
                                    Debug = "Method _DSM Function Index2"
                                    Return (One)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }
            }
        }

        Device (OTG1)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
            Name (_DDN, "Baytrail XHCI controller (Synopsys core/OTG)")  // _DDN: DOS Device Name
            Name (_STR, Unicode ("Baytrail XHCI controller (Synopsys core/OTG)"))  // _STR: Description String
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (PMEB, PCI_Config, 0x84, 0x04)
            Field (PMEB, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            OperationRegion (GENR, PCI_Config, 0xA0, 0x10)
            Field (GENR, WordAcc, NoLock, Preserve)
            {
                    ,   18, 
                CPME,   1, 
                U2EN,   1, 
                U3EN,   1
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                CPME = One
                U2EN = One
                U3EN = One
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                CPME = Zero
                U2EN = Zero
                U3EN = Zero
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((OTGM != Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (GLAN)
        {
            Name (_ADR, 0x00190000)  // _ADR: Address
            OperationRegion (GBER, PCI_Config, 0xCC, 0x04)
            Field (GBER, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }
        }

        Device (HDEF)
        {
            Name (_ADR, 0x001B0000)  // _ADR: Address
            OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
            Field (HDAR, WordAcc, NoLock, Preserve)
            {
                DCKA,   1, 
                Offset (0x01), 
                DCKM,   1, 
                    ,   6, 
                DCKS,   1, 
                Offset (0x08), 
                Offset (0x09), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }
        }

        Scope (\_SB)
        {
            PowerResource (USBC, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                }
            }
        }

        Device (EHC1)
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            OperationRegion (PWKE, PCI_Config, 0x62, 0x04)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                PWUC,   8
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    PWUC = Ones
                }
                Else
                {
                    PWUC = Zero
                }
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        ToPLD (
                            PLD_Revision       = 0x1,
                            PLD_IgnoreColor    = 0x1,
                            PLD_Red            = 0x0,
                            PLD_Green          = 0x0,
                            PLD_Blue           = 0x0,
                            PLD_Width          = 0x0,
                            PLD_Height         = 0x0,
                            PLD_UserVisible    = 0x0,
                            PLD_Dock           = 0x0,
                            PLD_Lid            = 0x0,
                            PLD_Panel          = "UNKNOWN",
                            PLD_VerticalPosition = "UPPER",
                            PLD_HorizontalPosition = "LEFT",
                            PLD_Shape          = "UNKNOWN",
                            PLD_GroupOrientation = 0x0,
                            PLD_GroupToken     = 0x0,
                            PLD_GroupPosition  = 0x0,
                            PLD_Bay            = 0x0,
                            PLD_Ejectable      = 0x0,
                            PLD_EjectRequired  = 0x0,
                            PLD_CabinetNumber  = 0x0,
                            PLD_CardCageNumber = 0x0,
                            PLD_Reference      = 0x0,
                            PLD_Rotation       = 0x0,
                            PLD_Order          = 0x0,
                            PLD_VerticalOffset = 0x0,
                            PLD_HorizontalOffset = 0x0)

                    })
                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision       = 0x1,
                                PLD_IgnoreColor    = 0x1,
                                PLD_Red            = 0x0,
                                PLD_Green          = 0x0,
                                PLD_Blue           = 0x0,
                                PLD_Width          = 0x0,
                                PLD_Height         = 0x0,
                                PLD_UserVisible    = 0x1,
                                PLD_Dock           = 0x0,
                                PLD_Lid            = 0x0,
                                PLD_Panel          = "FRONT",
                                PLD_VerticalPosition = "",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape          = "UNKNOWN",
                                PLD_GroupOrientation = 0x0,
                                PLD_GroupToken     = 0x0,
                                PLD_GroupPosition  = 0x0,
                                PLD_Bay            = 0x0,
                                PLD_Ejectable      = 0x0,
                                PLD_EjectRequired  = 0x0,
                                PLD_CabinetNumber  = 0x0,
                                PLD_CardCageNumber = 0x0,
                                PLD_Reference      = 0x0,
                                PLD_Rotation       = 0x0,
                                PLD_Order          = 0x0,
                                PLD_VerticalOffset = 0x0,
                                PLD_HorizontalOffset = 0x0)

                        })
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision       = 0x1,
                                PLD_IgnoreColor    = 0x1,
                                PLD_Red            = 0x0,
                                PLD_Green          = 0x0,
                                PLD_Blue           = 0x0,
                                PLD_Width          = 0x0,
                                PLD_Height         = 0x0,
                                PLD_UserVisible    = 0x1,
                                PLD_Dock           = 0x0,
                                PLD_Lid            = 0x0,
                                PLD_Panel          = "FRONT",
                                PLD_VerticalPosition = "",
                                PLD_HorizontalPosition = "CENTER",
                                PLD_Shape          = "UNKNOWN",
                                PLD_GroupOrientation = 0x0,
                                PLD_GroupToken     = 0x0,
                                PLD_GroupPosition  = 0x0,
                                PLD_Bay            = 0x0,
                                PLD_Ejectable      = 0x0,
                                PLD_EjectRequired  = 0x0,
                                PLD_CabinetNumber  = 0x0,
                                PLD_CardCageNumber = 0x0,
                                PLD_Reference      = 0x0,
                                PLD_Rotation       = 0x0,
                                PLD_Order          = 0x0,
                                PLD_VerticalOffset = 0x0,
                                PLD_HorizontalOffset = 0x0)

                        })
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision       = 0x1,
                                PLD_IgnoreColor    = 0x1,
                                PLD_Red            = 0x0,
                                PLD_Green          = 0x0,
                                PLD_Blue           = 0x0,
                                PLD_Width          = 0x0,
                                PLD_Height         = 0x0,
                                PLD_UserVisible    = 0x1,
                                PLD_Dock           = 0x0,
                                PLD_Lid            = 0x0,
                                PLD_Panel          = "FRONT",
                                PLD_VerticalPosition = "",
                                PLD_HorizontalPosition = "CENTER",
                                PLD_Shape          = "UNKNOWN",
                                PLD_GroupOrientation = 0x0,
                                PLD_GroupToken     = 0x0,
                                PLD_GroupPosition  = 0x0,
                                PLD_Bay            = 0x0,
                                PLD_Ejectable      = 0x0,
                                PLD_EjectRequired  = 0x0,
                                PLD_CabinetNumber  = 0x0,
                                PLD_CardCageNumber = 0x0,
                                PLD_Reference      = 0x0,
                                PLD_Rotation       = 0x0,
                                PLD_Order          = 0x0,
                                PLD_VerticalOffset = 0x0,
                                PLD_HorizontalOffset = 0x0)

                        })
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision       = 0x1,
                                PLD_IgnoreColor    = 0x1,
                                PLD_Red            = 0x0,
                                PLD_Green          = 0x0,
                                PLD_Blue           = 0x0,
                                PLD_Width          = 0x0,
                                PLD_Height         = 0x0,
                                PLD_UserVisible    = 0x1,
                                PLD_Dock           = 0x0,
                                PLD_Lid            = 0x0,
                                PLD_Panel          = "FRONT",
                                PLD_VerticalPosition = "",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape          = "UNKNOWN",
                                PLD_GroupOrientation = 0x0,
                                PLD_GroupToken     = 0x0,
                                PLD_GroupPosition  = 0x0,
                                PLD_Bay            = 0x0,
                                PLD_Ejectable      = 0x0,
                                PLD_EjectRequired  = 0x0,
                                PLD_CabinetNumber  = 0x0,
                                PLD_CardCageNumber = 0x0,
                                PLD_Reference      = 0x0,
                                PLD_Rotation       = 0x0,
                                PLD_Order          = 0x0,
                                PLD_VerticalOffset = 0x0,
                                PLD_HorizontalOffset = 0x0)

                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                While (One)
                                {
                                    _T_0 = ToInteger (Arg2)
                                    If ((_T_0 == Zero))
                                    {
                                        If ((Arg1 == One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             /* . */
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             /* . */
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If ((_T_0 == One))
                                        {
                                            If ((SDGV == 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If ((_T_0 == 0x02))
                                            {
                                                Return (SDGV) /* \SDGV */
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision       = 0x1,
                                PLD_IgnoreColor    = 0x1,
                                PLD_Red            = 0x0,
                                PLD_Green          = 0x0,
                                PLD_Blue           = 0x0,
                                PLD_Width          = 0x0,
                                PLD_Height         = 0x0,
                                PLD_UserVisible    = 0x1,
                                PLD_Dock           = 0x0,
                                PLD_Lid            = 0x0,
                                PLD_Panel          = "UNKNOWN",
                                PLD_VerticalPosition = "LOWER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape          = "UNKNOWN",
                                PLD_GroupOrientation = 0x0,
                                PLD_GroupToken     = 0x0,
                                PLD_GroupPosition  = 0x0,
                                PLD_Bay            = 0x0,
                                PLD_Ejectable      = 0x0,
                                PLD_EjectRequired  = 0x0,
                                PLD_CabinetNumber  = 0x0,
                                PLD_CardCageNumber = 0x0,
                                PLD_Reference      = 0x0,
                                PLD_Rotation       = 0x0,
                                PLD_Order          = 0x0,
                                PLD_VerticalOffset = 0x0,
                                PLD_HorizontalOffset = 0x0)

                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                While (One)
                                {
                                    _T_0 = ToInteger (Arg2)
                                    If ((_T_0 == Zero))
                                    {
                                        If ((Arg1 == One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             /* . */
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             /* . */
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If ((_T_0 == One))
                                        {
                                            If ((SDGV == 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If ((_T_0 == 0x02))
                                            {
                                                Return (SDGV) /* \SDGV */
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision       = 0x1,
                                PLD_IgnoreColor    = 0x1,
                                PLD_Red            = 0x0,
                                PLD_Green          = 0x0,
                                PLD_Blue           = 0x0,
                                PLD_Width          = 0x0,
                                PLD_Height         = 0x0,
                                PLD_UserVisible    = 0x1,
                                PLD_Dock           = 0x0,
                                PLD_Lid            = 0x0,
                                PLD_Panel          = "UNKNOWN",
                                PLD_VerticalPosition = "LOWER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape          = "UNKNOWN",
                                PLD_GroupOrientation = 0x0,
                                PLD_GroupToken     = 0x0,
                                PLD_GroupPosition  = 0x0,
                                PLD_Bay            = 0x0,
                                PLD_Ejectable      = 0x0,
                                PLD_EjectRequired  = 0x0,
                                PLD_CabinetNumber  = 0x0,
                                PLD_CardCageNumber = 0x0,
                                PLD_Reference      = 0x0,
                                PLD_Rotation       = 0x0,
                                PLD_Order          = 0x0,
                                PLD_VerticalOffset = 0x0,
                                PLD_HorizontalOffset = 0x0)

                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                While (One)
                                {
                                    _T_0 = ToInteger (Arg2)
                                    If ((_T_0 == Zero))
                                    {
                                        If ((Arg1 == One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             /* . */
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             /* . */
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If ((_T_0 == One))
                                        {
                                            If ((SDGV == 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If ((_T_0 == 0x02))
                                            {
                                                Return (SDGV) /* \SDGV */
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR17)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision       = 0x1,
                                PLD_IgnoreColor    = 0x1,
                                PLD_Red            = 0x0,
                                PLD_Green          = 0x0,
                                PLD_Blue           = 0x0,
                                PLD_Width          = 0x0,
                                PLD_Height         = 0x0,
                                PLD_UserVisible    = 0x1,
                                PLD_Dock           = 0x0,
                                PLD_Lid            = 0x0,
                                PLD_Panel          = "UNKNOWN",
                                PLD_VerticalPosition = "LOWER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape          = "UNKNOWN",
                                PLD_GroupOrientation = 0x0,
                                PLD_GroupToken     = 0x0,
                                PLD_GroupPosition  = 0x0,
                                PLD_Bay            = 0x0,
                                PLD_Ejectable      = 0x0,
                                PLD_EjectRequired  = 0x0,
                                PLD_CabinetNumber  = 0x0,
                                PLD_CardCageNumber = 0x0,
                                PLD_Reference      = 0x0,
                                PLD_Rotation       = 0x0,
                                PLD_Order          = 0x0,
                                PLD_VerticalOffset = 0x0,
                                PLD_HorizontalOffset = 0x0)

                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                While (One)
                                {
                                    _T_0 = ToInteger (Arg2)
                                    If ((_T_0 == Zero))
                                    {
                                        If ((Arg1 == One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             /* . */
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             /* . */
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If ((_T_0 == One))
                                        {
                                            If ((SDGV == 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If ((_T_0 == 0x02))
                                            {
                                                Return (SDGV) /* \SDGV */
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR18)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision       = 0x1,
                                PLD_IgnoreColor    = 0x1,
                                PLD_Red            = 0x0,
                                PLD_Green          = 0x0,
                                PLD_Blue           = 0x0,
                                PLD_Width          = 0x0,
                                PLD_Height         = 0x0,
                                PLD_UserVisible    = 0x1,
                                PLD_Dock           = 0x0,
                                PLD_Lid            = 0x0,
                                PLD_Panel          = "UNKNOWN",
                                PLD_VerticalPosition = "LOWER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape          = "UNKNOWN",
                                PLD_GroupOrientation = 0x0,
                                PLD_GroupToken     = 0x0,
                                PLD_GroupPosition  = 0x0,
                                PLD_Bay            = 0x0,
                                PLD_Ejectable      = 0x0,
                                PLD_EjectRequired  = 0x0,
                                PLD_CabinetNumber  = 0x0,
                                PLD_CardCageNumber = 0x0,
                                PLD_Reference      = 0x0,
                                PLD_Rotation       = 0x0,
                                PLD_Order          = 0x0,
                                PLD_VerticalOffset = 0x0,
                                PLD_HorizontalOffset = 0x0)

                        })
                    }
                }
            }

            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (USBR, PCI_Config, 0x54, 0x04)
            Field (USBR, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((XHCI == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }
        }

        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2, 
                I2CE,   1
            }

            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                    ,   5, 
                SBAR,   11
            }

            OperationRegion (SMBI, SystemIO, (SBAR << 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCON = 0x44
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = Arg2
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT1 = (Arg2 & 0xFF)
                DAT0 = ((Arg2 >> 0x08) & 0xFF)
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (((DAT0 << 0x08) | DAT1))
                }

                Return (0xFFFFFFFF)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg3
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = SizeOf (Arg2)
                Local1 = Zero
                HBDR = DerefOf (Index (Arg2, Zero))
                HCON = 0x54
                While ((SizeOf (Arg2) > Local1))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    HSTS = 0x80
                    Local1++
                    If ((SizeOf (Arg2) > Local1))
                    {
                        HBDR = DerefOf (Index (Arg2, Local1))
                    }
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100) {})
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg2
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x54
                Local0 = 0x0FA0
                While ((!(HSTS & 0x80) && Local0))
                {
                    Local0--
                    Stall (0x32)
                }

                If (!Local0)
                {
                    KILL ()
                    Return (Zero)
                }

                Index (TBUF, Zero) = DAT0 /* \_SB_.PCI0.SBUS.DAT0 */
                HSTS = 0x80
                Local1 = One
                While ((Local1 < DerefOf (Index (TBUF, Zero))))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Index (TBUF, Local1) = HBDR /* \_SB_.PCI0.SBUS.HBDR */
                    HSTS = 0x80
                    Local1++
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (TBUF) /* \_SB_.PCI0.SBUS.SBLR.TBUF */
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Local0 = 0xC8
                While (Local0)
                {
                    If ((HSTS & 0x40))
                    {
                        Local0--
                        Sleep (One)
                        If ((Local0 == Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Local0 = Zero
                    }
                }

                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & One))
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                HCON |= 0x02
                HSTS |= 0xFF
            }
        }

        Device (SEC0)
        {
            Name (_ADR, 0x001A0000)  // _ADR: Address
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (PMEB, PCI_Config, 0x84, 0x04)
            Field (PMEB, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x1F000000,         // Address Base
                        0x01000000,         // Address Length
                        )
                })
                If ((PAVP == 0x02))
                {
                    Return (RBUF) /* \_SB_.PCI0.SEC0._CRS.RBUF */
                }

                Return (ResourceTemplate ()
                {
                })
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Name (NDEP, Package (0x03)
            {
                PEPD, 
                I2C7, 
                ^^I2C7.PMIC
            })
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                DSEN = (Arg0 & 0x07)
            }

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                NDID = Zero
                If ((DIDL != Zero))
                {
                    DID1 = SDDL (DIDL)
                }

                If ((DDL2 != Zero))
                {
                    DID2 = SDDL (DDL2)
                }

                If ((DDL3 != Zero))
                {
                    DID3 = SDDL (DDL3)
                }

                If ((DDL4 != Zero))
                {
                    DID4 = SDDL (DDL4)
                }

                If ((DDL5 != Zero))
                {
                    DID5 = SDDL (DDL5)
                }

                If ((NDID == One))
                {
                    Name (TMP1, Package (0x02)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Index (TMP1, Zero) = (0x00010000 | DID1)
                    If ((SOCS < 0x02))
                    {
                        Index (TMP1, One) = 0x00020F39
                    }
                    Else
                    {
                        Index (TMP1, One) = 0x00020F38
                    }

                    Return (TMP1) /* \_SB_.PCI0.GFX0._DOD.TMP1 */
                }

                If ((NDID == 0x02))
                {
                    Name (TMP2, Package (0x03)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Index (TMP2, Zero) = (0x00010000 | DID1)
                    Index (TMP2, One) = (0x00010000 | DID2)
                    If ((SOCS < 0x02))
                    {
                        Index (TMP2, 0x02) = 0x00020F39
                    }
                    Else
                    {
                        Index (TMP2, 0x02) = 0x00020F38
                    }

                    Return (TMP2) /* \_SB_.PCI0.GFX0._DOD.TMP2 */
                }

                If ((NDID == 0x03))
                {
                    Name (TMP3, Package (0x04)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Index (TMP3, Zero) = (0x00010000 | DID1)
                    Index (TMP3, One) = (0x00010000 | DID2)
                    Index (TMP3, 0x02) = (0x00010000 | DID3)
                    If ((SOCS < 0x02))
                    {
                        Index (TMP3, 0x03) = 0x00020F39
                    }
                    Else
                    {
                        Index (TMP3, 0x03) = 0x00020F38
                    }

                    Return (TMP3) /* \_SB_.PCI0.GFX0._DOD.TMP3 */
                }

                If ((NDID == 0x04))
                {
                    Name (TMP4, Package (0x05)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Index (TMP4, Zero) = (0x00010000 | DID1)
                    Index (TMP4, One) = (0x00010000 | DID2)
                    Index (TMP4, 0x02) = (0x00010000 | DID3)
                    Index (TMP4, 0x03) = (0x00010000 | DID4)
                    If ((SOCS < 0x02))
                    {
                        Index (TMP4, 0x04) = 0x00020F39
                    }
                    Else
                    {
                        Index (TMP4, 0x04) = 0x00020F38
                    }

                    Return (TMP4) /* \_SB_.PCI0.GFX0._DOD.TMP4 */
                }

                If ((NDID > 0x04))
                {
                    Name (TMP5, Package (0x06)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Index (TMP5, Zero) = (0x00010000 | DID1)
                    Index (TMP5, One) = (0x00010000 | DID2)
                    Index (TMP5, 0x02) = (0x00010000 | DID3)
                    Index (TMP5, 0x03) = (0x00010000 | DID4)
                    Index (TMP5, 0x04) = (0x00010000 | DID5)
                    If ((SOCS < 0x02))
                    {
                        Index (TMP5, 0x05) = 0x00020F39
                    }
                    Else
                    {
                        Index (TMP5, 0x05) = 0x00020F38
                    }

                    Return (TMP5) /* \_SB_.PCI0.GFX0._DOD.TMP5 */
                }

                If ((SOCS < 0x02))
                {
                    Return (Package (0x02)
                    {
                        0x0400, 
                        0x00020F39
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x0400, 
                        0x00020F38
                    })
                }
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID1) == 0x0400))
                    {
                        EDPV = One
                        DIDX = DID1 /* \DID1 */
                        Return (One)
                    }

                    If ((DID1 == Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID2) == 0x0400))
                    {
                        EDPV = 0x02
                        DIDX = DID2 /* \DID2 */
                        Return (0x02)
                    }

                    If ((DID2 == Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID3) == 0x0400))
                    {
                        EDPV = 0x03
                        DIDX = DID3 /* \DID3 */
                        Return (0x03)
                    }

                    If ((DID3 == Zero))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID3 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID4) == 0x0400))
                    {
                        EDPV = 0x04
                        DIDX = DID4 /* \DID4 */
                        Return (0x04)
                    }

                    If ((DID4 == Zero))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID4 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID5) == 0x0400))
                    {
                        EDPV = 0x05
                        DIDX = DID5 /* \DID5 */
                        Return (0x05)
                    }

                    If ((DID5 == Zero))
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID5 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID6) == 0x0400))
                    {
                        EDPV = 0x06
                        DIDX = DID6 /* \DID6 */
                        Return (0x06)
                    }

                    If ((DID6 == Zero))
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID6 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID7) == 0x0400))
                    {
                        EDPV = 0x07
                        DIDX = DID7 /* \DID7 */
                        Return (0x07)
                    }

                    If ((DID7 == Zero))
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID7 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (((0x0F00 & DID8) == 0x0400))
                    {
                        EDPV = 0x08
                        DIDX = DID8 /* \DID8 */
                        Return (0x08)
                    }

                    If ((DID8 == Zero))
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID8 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD1F)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((EDPV == Zero))
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return ((0xFFFF & DIDX))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((EDPV == Zero))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (CDDS (DIDX))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DIDX))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (Package (0x67)
                    {
                        0x50, 
                        0x32, 
                        Zero, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                    {
                        AINT (One, Arg0)
                        BRTL = Arg0
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL) /* \BRTL */
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                NDID++
                Local0 = (Arg0 & 0x0F0F)
                Local1 = (0x80000000 | Local0)
                If ((DIDL == Local0))
                {
                    Return (Local1)
                }

                If ((DDL2 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL3 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL4 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL5 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL6 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL7 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL8 == Local0))
                {
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (CDDS, 1, NotSerialized)
            {
                Local0 = (Arg0 & 0x0F0F)
                If ((Zero == Local0))
                {
                    Return (0x1D)
                }

                If ((CADL == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL2 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL3 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL4 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL5 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL6 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL7 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL8 == Local0))
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                Local0 = (Arg0 & 0x0F0F)
                If ((Zero == Local0))
                {
                    Return (Zero)
                }

                If ((NADL == Local0))
                {
                    Return (One)
                }

                If ((NDL2 == Local0))
                {
                    Return (One)
                }

                If ((NDL3 == Local0))
                {
                    Return (One)
                }

                If ((NDL4 == Local0))
                {
                    Return (One)
                }

                If ((NDL5 == Local0))
                {
                    Return (One)
                }

                If ((NDL6 == Local0))
                {
                    Return (One)
                }

                If ((NDL7 == Local0))
                {
                    Return (One)
                }

                If ((NDL8 == Local0))
                {
                    Return (One)
                }

                Return (Zero)
            }

            OperationRegion (IGDP, PCI_Config, Zero, 0x0100)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                MADR,   32, 
                Offset (0x50), 
                    ,   1, 
                GIVD,   1, 
                    ,   1, 
                GUMA,   5, 
                Offset (0x52), 
                Offset (0x54), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x58), 
                Offset (0x5C), 
                GSTM,   32, 
                Offset (0xE0), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xE4), 
                ASLE,   8, 
                Offset (0xE8), 
                Offset (0xFC), 
                ASLS,   32
            }

            OperationRegion (IGMM, SystemMemory, MADR, 0x3000)
            Field (IGMM, AnyAcc, NoLock, Preserve)
            {
                Offset (0x20C8), 
                    ,   4, 
                DCFE,   4
            }

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CAD1,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Name (CDCT, Package (0x06)
            {
                Package (0x01)
                {
                    0xA0
                }, 

                Package (0x01)
                {
                    0xC8
                }, 

                Package (0x01)
                {
                    0x010B
                }, 

                Package (0x01)
                {
                    0x0140
                }, 

                Package (0x01)
                {
                    0x0164
                }, 

                Package (0x01)
                {
                    0x0190
                }
            })
            Name (SUCC, One)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GSCI, 0, Serialized)
            {
                Method (GBDA, 0, Serialized)
                {
                    If ((GESF == Zero))
                    {
                        PARM = 0x0279
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == One))
                    {
                        PARM = 0x0240
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x04))
                    {
                        PARM &= 0xEFFF0000
                        PARM &= (DerefOf (Index (DBTB, IBTT)) << 0x10)
                        PARM |= IBTT /* \_SB_.PCI0.GFX0.PARM */
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x05))
                    {
                        PARM = IPSC /* \IPSC */
                        PARM |= (IPAT << 0x08)
                        PARM += 0x0100
                        PARM |= (LIDS << 0x10)
                        PARM += 0x00010000
                        PARM |= (IBLC << 0x12)
                        PARM |= (IBIA << 0x14)
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x06))
                    {
                        PARM = ITVF /* \ITVF */
                        PARM |= (ITVM << 0x04)
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x07))
                    {
                        PARM = GIVD /* \_SB_.PCI0.GFX0.GIVD */
                        PARM ^= One
                        PARM |= (GMFN << One)
                        PARM |= 0x1800
                        PARM |= (IDMS << 0x11)
                        PARM |= (DerefOf (Index (CDCT, DCFE)) << 0x15) /* \_SB_.PCI0.GFX0.PARM */
                        GESF = One
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x0A))
                    {
                        PARM = Zero
                        If (ISSC)
                        {
                            PARM |= 0x03
                        }

                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    GESF = Zero
                    Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                }

                Method (SBCB, 0, Serialized)
                {
                    If ((GESF == Zero))
                    {
                        PARM = Zero
                        If ((PFLV == FMBL))
                        {
                            PARM = 0x000F87FD
                        }

                        If ((PFLV == FDTP))
                        {
                            PARM = 0x000F87BD
                        }

                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == One))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x03))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x04))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x05))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x06))
                    {
                        ITVF = (PARM & 0x0F)
                        ITVM = ((PARM & 0xF0) >> 0x04)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x07))
                    {
                        If ((PARM == Zero))
                        {
                            Local0 = CLID /* \_SB_.PCI0.GFX0.CLID */
                            If ((0x80000000 & Local0))
                            {
                                CLID &= 0x0F
                                GLID (CLID)
                            }
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x08))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x09))
                    {
                        IBTT = (PARM & 0xFF)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x0A))
                    {
                        IPSC = (PARM & 0xFF)
                        If (((PARM >> 0x08) & 0xFF))
                        {
                            IPAT = ((PARM >> 0x08) & 0xFF)
                            IPAT--
                        }

                        IBLC = ((PARM >> 0x12) & 0x03)
                        IBIA = ((PARM >> 0x14) & 0x07)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x0B))
                    {
                        IF1E = ((PARM >> One) & One)
                        IDMS = ((PARM >> 0x11) & 0x0F)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x10))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x11))
                    {
                        PARM = (LIDS << 0x08)
                        PARM += 0x0100
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x12))
                    {
                        If ((PARM & One))
                        {
                            If (((PARM >> One) == One))
                            {
                                ISSC = One
                            }
                            Else
                            {
                                GESF = Zero
                                Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                            }
                        }
                        Else
                        {
                            ISSC = Zero
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x13))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x14))
                    {
                        PAVP = (PARM & 0x0F)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    GESF = Zero
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If ((GEFC == 0x04))
                {
                    GXFC = GBDA ()
                }

                If ((GEFC == 0x06))
                {
                    GXFC = SBCB ()
                }

                GEFC = Zero
                SCIS = One
                GSSE = Zero
                SCIE = Zero
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                If (!DRDY)
                {
                    Sleep (ASLP)
                }

                Return (!DRDY)
            }

            Method (PSTS, 0, NotSerialized)
            {
                If ((CSTS > 0x02))
                {
                    Sleep (ASLP)
                }

                Return ((CSTS == 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                CEVT = Arg0
                CSTS = 0x03
                If (((CHPD == Zero) && (Arg1 == Zero)))
                {
                    If (((OSYS > 0x07D0) || (OSYS < 0x07D6)))
                    {
                        Notify (PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (GFX0, Arg1)
                    }
                }

                Notify (GFX0, 0x80) // Status Change
                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                TIDX = Arg0
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                CLID = Arg0
                Return (GNOT (0x02, Zero))
            }

            Method (GDCK, 1, NotSerialized)
            {
                CDCK = Arg0
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (!ARDY)
                {
                    Sleep (ASLP)
                }

                Return (!ARDY)
            }

            Method (AINT, 2, NotSerialized)
            {
                If (!(TCHE & (One << Arg0)))
                {
                    Return (One)
                }

                If (PARD ())
                {
                    Return (One)
                }

                If ((Arg0 == 0x02))
                {
                    If (CPFM)
                    {
                        Local0 = (CPFM & 0x0F)
                        Local1 = (EPFM & 0x0F)
                        If ((Local0 == One))
                        {
                            If ((Local1 & 0x06))
                            {
                                PFIT = 0x06
                            }
                            Else
                            {
                                If ((Local1 & 0x08))
                                {
                                    PFIT = 0x08
                                }
                                Else
                                {
                                    PFIT = One
                                }
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            If ((Local1 & 0x08))
                            {
                                PFIT = 0x08
                            }
                            Else
                            {
                                If ((Local1 & One))
                                {
                                    PFIT = One
                                }
                                Else
                                {
                                    PFIT = 0x06
                                }
                            }
                        }

                        If ((Local0 == 0x08))
                        {
                            If ((Local1 & One))
                            {
                                PFIT = One
                            }
                            Else
                            {
                                If ((Local1 & 0x06))
                                {
                                    PFIT = 0x06
                                }
                                Else
                                {
                                    PFIT = 0x08
                                }
                            }
                        }
                    }
                    Else
                    {
                        PFIT ^= 0x07
                    }

                    PFIT |= 0x80000000
                    ASLC = 0x04
                }
                Else
                {
                    If ((Arg0 == One))
                    {
                        BCLP = ((Arg1 * 0xFF) / 0x64)
                        BCLP |= 0x80000000
                        ASLC = 0x02
                    }
                    Else
                    {
                        If ((Arg0 == Zero))
                        {
                            ALSI = Arg1
                            ASLC = One
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                ASLE = One
                Return (Zero)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If ((OVER != Zero))
                {
                    Return (!GSMI)
                }

                Return (Zero)
            }

            Device (ISP0)
            {
                Name (_ADR, 0x0F38)  // _ADR: Address
                Name (_DDN, "VLV2 ISP - 80860F38")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    PEPD
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((SOCS >= 0x02))
                    {
                        If ((ISPD == One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    Else
                    {
                        _ADR = 0x0F39
                        _DDN = "VLV2 ISP - 80860F39"
                        If ((ISPD == One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Name (SBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00400000,         // Address Length
                        )
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (SBUF) /* \_SB_.PCI0.GFX0.ISP0.SBUF */
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        If ((Arg0 == 0x02))
                        {
                            Return (0x02)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }
                }
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000000, 0x00) {}
        Processor (CPU1, 0x02, 0x00000000, 0x00) {}
        Processor (CPU2, 0x03, 0x00000000, 0x00) {}
        Processor (CPU3, 0x04, 0x00000000, 0x00) {}
    }

    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 2, Serialized)
    {
        If ((Arg0 == Zero))
        {
            P80D = ((P80D & 0xFFFFFF00) | Arg1)
        }

        If ((Arg0 == One))
        {
            P80D = ((P80D & 0xFFFF00FF) | (Arg1 << 0x08))
        }

        If ((Arg0 == 0x02))
        {
            P80D = ((P80D & 0xFF00FFFF) | (Arg1 << 0x10))
        }

        If ((Arg0 == 0x03))
        {
            P80D = ((P80D & 0x00FFFFFF) | (Arg1 << 0x18))
        }

        P80H = P80D /* \P80D */
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        PICM = Arg0
    }

    OperationRegion (SWC0, SystemIO, 0x0610, 0x0F)
    Field (SWC0, ByteAcc, NoLock, Preserve)
    {
        G1S,    8, 
        Offset (0x04), 
        G1E,    8, 
        Offset (0x0A), 
        G1S2,   8, 
        G1S3,   8
    }

    OperationRegion (SWC1, SystemIO, PMBS, 0x2C)
    Field (SWC1, DWordAcc, NoLock, Preserve)
    {
        Offset (0x20), 
        G0S,    32, 
        Offset (0x28), 
        G0EN,   32
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        P80D = Zero
        P8XH (Zero, Arg0)
        G1S3 = Ones
        G1S2 = Ones
        G1S = One
        G1E = One
        G0S = Ones
        If (CondRefOf (TCGM))
        {
            \_SB.PCI0.LPCB.TPM.PTS (Arg0)
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P8XH (One, 0xAB)
        If (NEXP)
        {
            If ((OSCC & 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If ((OSCC & 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If ((PFLV == FMBL))
            {
                If ((Arg0 == 0x04))
                {
                    PNOT ()
                }
            }

            If ((CFGD & 0x01000000)) {}
            If ((OSYS == 0x07D2))
            {
                If ((CFGD & One))
                {
                    If ((\_PR.CPU0._PPC > Zero))
                    {
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                        \_PR.CPU0._PPC += One
                        PNOT ()
                    }
                    Else
                    {
                        \_PR.CPU0._PPC += One
                        PNOT ()
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                    }
                }
            }
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (PNOT, 0, Serialized)
    {
        If (MPEN)
        {
            If ((PDC0 & 0x08))
            {
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                If ((PDC0 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81) // C-State Change
                }
            }

            If ((PDC1 & 0x08))
            {
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                If ((PDC1 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81) // C-State Change
                }
            }

            If ((PDC2 & 0x08))
            {
                Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                If ((PDC2 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81) // C-State Change
                }
            }

            If ((PDC3 & 0x08))
            {
                Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                If ((PDC3 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81) // C-State Change
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81) // C-State Change
        }
    }

    Scope (_SB)
    {
        Name (CRTT, 0x6E)
        Name (ACTT, 0x55)
        Name (SCR0, 0x0102)
        Name (SCR1, 0x0102)
        Name (SCR2, 0x0102)
        Name (SCR3, 0x0102)
        Name (GCR0, 0x46)
        Name (GCR1, 0x46)
        Name (GCR2, 0x46)
        Name (GCR3, 0x46)
        Name (GCR4, 0x46)
        Name (PST0, 0x3C)
        Name (PST1, 0x3C)
        Name (PST2, 0x3C)
        Name (PST3, 0x3C)
        Name (PST4, 0x3C)
        Name (LPMV, 0x03)
        Name (PDBG, Zero)
        Name (PDPM, One)
        Name (PDBP, One)
        Name (DLPO, Package (0x06)
        {
            One, 
            One, 
            One, 
            0x19, 
            One, 
            One
        })
        Name (BRQD, Zero)
        Name (PSC1, Zero)
        Name (PSC2, Zero)
        Name (PSC3, Zero)
        Name (PSA1, Zero)
        Name (PSA2, Zero)
        Name (PSA3, Zero)
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            CRTT = DPCT /* \DPCT */
            ACTT = DPPT /* \DPPT */
            GCR0 = DGC0 /* \DGC0 */
            GCR1 = DGC1 /* \DGC1 */
            GCR2 = DGC2 /* \DGC2 */
            GCR3 = DGC3 /* \DGC3 */
            GCR4 = DGC4 /* \DGC4 */
            PST0 = DGP0 /* \DGP0 */
            PST1 = DGP1 /* \DGP1 */
            PST2 = DGP2 /* \DGP2 */
            PST3 = DGP3 /* \DGP3 */
            PST4 = DGP4 /* \DGP4 */
            SCR0 = DSC0 /* \DSC0 */
            SCR1 = DSC1 /* \DSC1 */
            SCR2 = DSC2 /* \DSC2 */
            SCR3 = DSC3 /* \DSC3 */
            LPMV = DLPM /* \DLPM */
            PDBG = DDBG /* \DDBG */
            Index (DLPO, One) = LPOE /* \LPOE */
            Index (DLPO, 0x02) = LPPS /* \LPPS */
            Index (DLPO, 0x03) = LPST /* \LPST */
            Index (DLPO, 0x04) = LPPC /* \LPPC */
            Index (DLPO, 0x05) = LPPF /* \LPPF */
            PDPM = DPME /* \DPME */
        }

        Scope (PCI0)
        {
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                OSYS = 0x07D0
                If (CondRefOf (\_OSI, Local0))
                {
                    If (_OSI ("Windows 2001"))
                    {
                        OSYS = 0x07D1
                    }

                    If (_OSI ("Windows 2001 SP1"))
                    {
                        OSYS = 0x07D1
                    }

                    If (_OSI ("Windows 2001 SP2"))
                    {
                        OSYS = 0x07D2
                    }

                    If (_OSI ("Windows 2006"))
                    {
                        OSYS = 0x07D6
                    }

                    If (_OSI ("Windows 2009"))
                    {
                        OSYS = 0x07D9
                    }

                    If (_OSI ("Windows 2012"))
                    {
                        OSYS = 0x07DC
                    }

                    If (_OSI ("Windows 2013"))
                    {
                        OSYS = 0x07DD
                    }
                }
            }

            Method (NHPG, 0, Serialized)
            {
            }

            Method (NPME, 0, Serialized)
            {
            }
        }

        Device (GPED)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT0002" /* Virtual GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "INT0002" /* Virtual GPIO Controller */)  // _CID: Compatible ID
            Name (_DDN, "Virtual GPIO controller")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (INST, One)
            Name (XTMP, Zero)
            OperationRegion (SCIS, SystemMemory, 0xFED030C0, 0x04)
            Field (SCIS, DWordAcc, NoLock, Preserve)
            {
                LGBE,   1, 
                LHAD,   1, 
                LATA,   1, 
                LDIO,   1, 
                LARD,   1, 
                LIO1,   1, 
                LCEP,   1, 
                LANB,   1, 
                LHCI,   1, 
                LOTG,   1, 
                LECI,   1, 
                LHSI,   1
            }

            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("8b38b469-6f95-4b08-9b02-2defcc2d2c35")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             /* . */
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return ((PMBS + 0x20))
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             /* . */
                    })
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x00000009,
                    }
                })
                Return (RBUF) /* \_SB_.GPED._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullDown, 0x0000,
                        "\\_SB.GPED", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                Return (RBUF) /* \_SB_.GPED._AEI.RBUF */
            }

            Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                If ((STEP <= 0x04))
                {
                    If ((^^PCI0.GLAN.PMES == One))
                    {
                        ^^PCI0.GLAN.PMEE = Zero
                        Local0 = ^^PCI0.GLAN.PMEE /* \_SB_.PCI0.GLAN.PMEE */
                        Notify (^^PCI0.GLAN, 0x02) // Device Wake
                    }
                }

                If ((STEP <= 0x04))
                {
                    If ((^^PCI0.HDEF.PMES == One))
                    {
                        ^^PCI0.HDEF.PMEE = Zero
                        Local0 = ^^PCI0.HDEF.PMEE /* \_SB_.PCI0.HDEF.PMEE */
                        Notify (^^PCI0.HDEF, 0x02) // Device Wake
                    }
                }

                If ((XHCI == Zero))
                {
                    If ((^^PCI0.EHC1.PMES == One))
                    {
                        ^^PCI0.EHC1.PMEE = Zero
                        Local0 = ^^PCI0.EHC1.PMEE /* \_SB_.PCI0.EHC1.PMEE */
                        Notify (^^PCI0.EHC1, 0x02) // Device Wake
                    }
                }
                Else
                {
                    If ((SOCS > 0x05))
                    {
                        XTMP = (^^PCI0.XHC1.PMCS & 0x8000)
                        If ((XTMP == 0x8000))
                        {
                            Notify (^^PCI0.XHC1, 0x02) // Device Wake
                        }
                    }
                    Else
                    {
                        If ((SOCS > 0x02))
                        {
                            XTMP = (^^PCI0.XHC1.PMCS & 0x8000)
                            If ((XTMP == 0x8000))
                            {
                                ^^PCI0.XHC1.PMCH = 0x81
                                Notify (^^PCI0.XHC1, 0x02) // Device Wake
                            }
                        }
                        Else
                        {
                            XTMP = (^^PCI0.XHC1.PMCS & 0x0103)
                            If ((XTMP == 0x0103))
                            {
                                ^^PCI0.XHC1.PMCS = 0x0100
                                Sleep (0x0A)
                                XTMP = (^^PCI0.XHC1.PMCS & 0x8000)
                                If ((XTMP == 0x8000))
                                {
                                    ^^PCI0.XHC1.PMCH = 0x81
                                }
                                Else
                                {
                                    ^^PCI0.XHC1.PMCS = 0x0103
                                }

                                Sleep (0x0A)
                                Notify (^^PCI0.XHC1, 0x02) // Device Wake
                            }
                            Else
                            {
                                ^^PCI0.XHC1.PMCH = 0x81
                                Sleep (0x0A)
                            }
                        }
                    }
                }

                If ((OTGM != Zero))
                {
                    If ((^^PCI0.OTG1.PMES == One))
                    {
                        ADBG ("OTG wake")
                        ^^PCI0.OTG1.PMEE = Zero
                        ^^PCI0.OTG1.CPME = Zero
                        ^^PCI0.OTG1.U2EN = Zero
                        ^^PCI0.OTG1.U3EN = Zero
                        Notify (^^PCI0.OTG1, 0x02) // Device Wake
                    }
                }

                If ((^^PCI0.SEC0.PMES == One))
                {
                    ^^PCI0.SEC0.PMEE = Zero
                    Local0 = ^^PCI0.SEC0.PMEE /* \_SB_.PCI0.SEC0.PMEE */
                    Notify (^^PCI0.SEC0, 0x02) // Device Wake
                }
            }
        }

        Device (GPO0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _CID: Compatible ID
            Name (_DDN, "ValleyView General Purpose Input/Output (GPIO) controller")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED0C000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000031,
                    }
                })
                Return (RBUF) /* \_SB_.GPO0._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x08))
                {
                    AVBL = Arg1
                }
            }

            OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0C)
            Field (GPOP, ByteAcc, NoLock, Preserve)
            {
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0035
                        }
                ), 
                BTD3,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x003A
                        }
                ), 
                SUSB,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x003C
                        }
                ), 
                TCD3,   1
            }
        }

        Device (GPO1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _CID: Compatible ID
            Name (_DDN, "ValleyView GPNCORE controller")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED0D000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000030,
                    }
                })
                Return (RBUF) /* \_SB_.GPO1._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (GPO2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _CID: Compatible ID
            Name (_DDN, "ValleyView GPSUS controller")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED0E000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000032,
                    }
                })
                Return (RBUF) /* \_SB_.GPO2._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x08))
                {
                    AVBL = Arg1
                }
            }

            OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0C)
            Field (GPOP, ByteAcc, NoLock, Preserve)
            {
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0014
                        }
                ), 
                WFD3,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0016
                        }
                ), 
                WWD3,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001D
                        }
                ), 
                WWR3,   1
            }
        }

        Device (PEPD)
        {
            Name (_HID, "INT3396" /* Standard Power Management Controller */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0D80") /* Windows-compatible System Power Management Controller */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (PEPP, Zero)
            Name (DEVS, Package (0x01)
            {
                Zero
            })
            Name (DEVX, Package (0x12)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.XHC1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.EHC1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0.ISP0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SEC0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C2", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C3", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C4", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C5", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C6", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C7", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHA", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHB", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHC", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SPI1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.URT1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.URT2", 
                    One
                }
            })
            Name (CDMP, Package (0x02) {})
            Name (DEVY, Package (0x16)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0.ISP0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C4", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C5", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C6", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C7", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SEC0", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.LPEA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHB", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHC", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SPI1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.URT1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.URT2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }
            })
            Name (BCCD, Package (0x01)
            {
                Package (0x02)
                {
                    "\\_SB.SDHA", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                Zero, 
                                0x20, 
                                Zero, 
                                0x03, 
                                Ones
                            }, 

                            Package (0x03)
                            {
                                0xFFFFFFFC, 
                                Zero, 
                                0x04
                            }, 

                            Zero
                        }
                    }
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("b8febfe0-baf8-454b-aecd-49fb91137b21")))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x0F                                             /* . */
                        })
                    }

                    If ((Arg2 == One))
                    {
                        PEPP = One
                        Return (0x0F)
                    }

                    If ((Arg2 == 0x02))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (DEVS) /* \_SB_.PEPD.DEVS */
                        }

                        If ((Arg1 == One))
                        {
                            Return (DEVX) /* \_SB_.PEPD.DEVX */
                        }
                    }

                    If ((Arg2 == 0x03))
                    {
                        Index (CDMP, Zero) = "\\_SB.SDHA"
                        Index (CDMP, One) = EM1A /* \EM1A */
                        Return (CDMP) /* \_SB_.PEPD.CDMP */
                    }
                }

                If ((Arg0 == ToUUID ("c4eb40a0-6cd2-11e2-bcfd-0800200c9a66")))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x07                                             /* . */
                        })
                    }

                    If ((Arg2 == One))
                    {
                        Return (DEVY) /* \_SB_.PEPD.DEVY */
                    }

                    If ((Arg2 == 0x02))
                    {
                        Local0 = EM1A /* \EM1A */
                        Local0 += 0x84
                        Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (BCCD, Zero
                            )), One)), Zero)), Zero)), 0x04) = Local0
                        Return (BCCD) /* \_SB_.PEPD.BCCD */
                    }
                }

                Return (One)
            }
        }

        Device (SDHA)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F14" /* Intel Baytrail SDIO/MMC Host Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0D40" /* SDA Standard Compliant SD Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) eMMC Controller - 80860F14")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBF1, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0E)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002D,
                }
            })
            Name (RBF2, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0F)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002C,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBF1, \_SB.SDHA._Y0E._BAS, B0B1)  // _BAS: Base Address
                CreateDWordField (RBF1, \_SB.SDHA._Y0E._LEN, B0L1)  // _LEN: Length
                B0B1 = EM0A /* \EM0A */
                B0L1 = EM0L /* \EM0L */
                CreateDWordField (RBF2, \_SB.SDHA._Y0F._BAS, B0B2)  // _BAS: Base Address
                CreateDWordField (RBF2, \_SB.SDHA._Y0F._LEN, B0L2)  // _LEN: Length
                B0B2 = EM0A /* \EM0A */
                B0L2 = EM0L /* \EM0L */
                If ((EMVR == One))
                {
                    Return (RBF2) /* \_SB_.SDHA.RBF2 */
                }

                Return (RBF1) /* \_SB_.SDHA.RBF1 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
                If (((SOCS < 0x02) || ((SOCS == 0x02) && (EMVR == One))))
                {
                    Sleep (0x02)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
                If (((SOCS < 0x02) || ((SOCS == 0x02) && (EMVR == One))))
                {
                    Sleep (0x02)
                }
            }

            OperationRegion (KEYS, SystemMemory, EM1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Device (EMMD)
            {
                Name (_ADR, 0x08)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }

        Device (SDHB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33BB" /* Intel Baytrail SD Host Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0D40" /* SDA Standard Compliant SD Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SDIO Controller - 80860F15")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_HRV, 0x02)  // _HRV: Hardware Revision
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                PEPD, 
                GPO2
            })
            Name (PSTS, Zero)
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y10)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002E,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.SDHB._Y10._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.SDHB._Y10._LEN, B0LN)  // _LEN: Length
                B0BA = SI0A /* \SI0A */
                B0LN = SI0L /* \SI0L */
                Return (RBUF) /* \_SB_.SDHB.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((STEP <= 0x04))
                {
                    _HRV = SDMD /* \SDMD */
                }

                If (((SI0A == Zero) || (SD2D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
                If ((PSTS == Zero))
                {
                    If ((^^GPO2.AVBL == One))
                    {
                        ^^GPO2.WFD3 = One
                        PSTS = One
                    }
                }
            }

            OperationRegion (KEYS, SystemMemory, SI1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (BRCM)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    GPO2
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((BDID == 0x03))
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    Zero, 
                    Zero
                })
                Name (_S4W, 0x02)  // _S4W: S4 Device Wake State
                Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000049,
                        }
                    })
                    Return (RBUF) /* \_SB_.SDHB.BRCM._CRS.RBUF */
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    If ((^^^GPO2.AVBL == One))
                    {
                        ^^^GPO2.WFD3 = Zero
                        PSTS = Zero
                    }
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    If ((PSTS == Zero))
                    {
                        If ((^^^GPO2.AVBL == One))
                        {
                            ^^^GPO2.WFD3 = One
                            PSTS = One
                        }
                    }
                }
            }

            Device (BRC2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((BDID == 0x03))
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (NAM, Buffer (0x0F)
                    {
                        "\\_SB.SDHB.BRCM"
                    })
                    Name (SPB, Buffer (0x0C)
                    {
                        /* 0000 */  0x8E, 0x18, 0x00, 0x01, 0x00, 0xC0, 0x02, 0x00,  /* ........ */
                        /* 0008 */  0x00, 0x01, 0x00, 0x00                           /* .... */
                    })
                    Name (END, ResourceTemplate ()
                    {
                    })
                    Concatenate (SPB, NAM, Local0)
                    Concatenate (Local0, END, Local1)
                    Return (Local1)
                }
            }

            Device (BRC3)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    GPO2
                })
                Name (_HID, "BCM4321")  // _HID: Hardware ID
                Name (_CID, "BCM43241")  // _CID: Compatible ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((BDID == 0x03))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    Zero, 
                    Zero
                })
                Name (_S4W, 0x02)  // _S4W: S4 Device Wake State
                Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000049,
                        }
                        GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000F
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0014
                            }
                    })
                    Return (RBUF) /* \_SB_.SDHB.BRC3._CRS.RBUF */
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    If ((^^^GPO2.AVBL == One))
                    {
                        ^^^GPO2.WFD3 = Zero
                        PSTS = Zero
                    }
                }

                Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                {
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    If ((PSTS == Zero))
                    {
                        If ((^^^GPO2.AVBL == One))
                        {
                            ^^^GPO2.WFD3 = One
                            PSTS = One
                        }
                    }
                }
            }
        }

        Device (SDHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F14" /* Intel Baytrail SDIO/MMC Host Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0D40" /* SDA Standard Compliant SD Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SD Card Controller - 80860F16")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                PEPD, 
                GPO0
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002F,
                }
                GpioInt (Edge, ActiveBoth, SharedAndWake, PullNone, 0x2710,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
            })
            Name (ABUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y12)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002F,
                }
                GpioInt (Edge, ActiveBoth, SharedAndWake, PullNone, 0x2710,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0028
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0029
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.SDHC._Y11._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.SDHC._Y11._LEN, B0LN)  // _LEN: Length
                B0BA = SD0A /* \SD0A */
                B0LN = SD0L /* \SD0L */
                CreateDWordField (ABUF, \_SB.SDHC._Y12._BAS, B0BX)  // _BAS: Base Address
                CreateDWordField (ABUF, \_SB.SDHC._Y12._LEN, B0LX)  // _LEN: Length
                B0BX = SD0A /* \SD0A */
                B0LX = SD0L /* \SD0L */
                If (((BDID == 0x03) && (OSSL == One)))
                {
                    Return (ABUF) /* \_SB_.SDHC.ABUF */
                }

                Return (RBUF) /* \_SB_.SDHC.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((SD0A == Zero) || (SD3D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, SD1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (MHSI)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F50")  // _HID: Hardware ID
            Name (_CID, "80860F50")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HSI Controller - 80860F50")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y13)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002C,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.MHSI._Y13._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.MHSI._Y13._LEN, B0LN)  // _LEN: Length
                B0BA = MH0A /* \MH0A */
                B0LN = MH0L /* \MH0L */
                Return (RBUF) /* \_SB_.MHSI.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((MH0A == Zero) || (HSID == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (GDM1)
        {
            Name (_HID, "INTL9C60" /* Intel Baytrail SOC DMA Controller */)  // _HID: Hardware ID
            Name (_DDN, "Intel(R) DMA Controller #1 - INTL9C60")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y14)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002A,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.GDM1._Y14._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.GDM1._Y14._LEN, B0LN)  // _LEN: Length
                B0BA = D10A /* \D10A */
                B0LN = D10L /* \D10L */
                Return (RBUF) /* \_SB_.GDM1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((D10A == Zero) || (L10D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (GDM2)
        {
            Name (_HID, "INTL9C60" /* Intel Baytrail SOC DMA Controller */)  // _HID: Hardware ID
            Name (_DDN, "Intel(R) DMA Controller #2 - INTL9C60")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y15)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002B,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.GDM2._Y15._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.GDM2._Y15._LEN, B0LN)  // _LEN: Length
                B0BA = D20A /* \D20A */
                B0LN = D20L /* \D20L */
                Return (RBUF) /* \_SB_.GDM2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((D20A == Zero) || (L20D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (PWM1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F09" /* Intel PWM Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F09" /* Intel PWM Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) PWM Controller #1 - 80860F08")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y16)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PWM1._Y16._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PWM1._Y16._LEN, B0LN)  // _LEN: Length
                B0BA = P10A /* \P10A */
                B0LN = P10L /* \P10L */
                Return (RBUF) /* \_SB_.PWM1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((P10A == Zero) || (L11D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (PWM2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F09" /* Intel PWM Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F09" /* Intel PWM Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) PWM Controller #2 - 80860F09")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y17)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PWM2._Y17._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PWM2._Y17._LEN, B0LN)  // _LEN: Length
                B0BA = P20A /* \P20A */
                B0LN = P20L /* \P20L */
                Return (RBUF) /* \_SB_.PWM2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((P20A == Zero) || (L12D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (URT1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F0A" /* Intel Atom UART Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F0A" /* Intel Atom UART Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HS-UART Controller #1 - 80860F0A")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y18)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000027,
                }
                FixedDMA (0x0002, 0x0002, Width32bit, )
                FixedDMA (0x0003, 0x0003, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.URT1._Y18._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.URT1._Y18._LEN, B0LN)  // _LEN: Length
                B0BA = U10A /* \U10A */
                B0LN = U10L /* \U10L */
                Return (RBUF) /* \_SB_.URT1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((U10A == Zero) || (L13D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, U11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (BTH0)
            {
                Name (_HID, "BCM2E3A")  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((UTS == One))
                    {
                        Return (Zero)
                    }

                    If ((BDID == 0x03))
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        UartSerialBus (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlNone,
                            0x0020, 0x0020, "\\_SB.URT1",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000046,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                    })
                    Name (PBUF, ResourceTemplate ()
                    {
                        UartSerialBus (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlNone,
                            0x0020, 0x0020, "\\_SB.URT1",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000046,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                    })
                    If ((BDID == 0x04))
                    {
                        If ((FBID == Zero))
                        {
                            Return (PBUF) /* \_SB_.URT1.BTH0._CRS.PBUF */
                        }
                    }

                    Return (UBUF) /* \_SB_.URT1.BTH0._CRS.UBUF */
                }
            }

            Device (BTH1)
            {
                Name (_HID, "BCM2E1A")  // _HID: Hardware ID
                Name (UART, Zero)
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        UartSerialBus (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlNone,
                            0x0020, 0x0020, "\\_SB.URT1",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000046,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0093
                            }
                    })
                    Name (PBUF, ResourceTemplate ()
                    {
                        UartSerialBus (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlNone,
                            0x0020, 0x0020, "\\_SB.URT1",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000046,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0093
                            }
                    })
                    If ((BDID == 0x04))
                    {
                        If ((FBID == Zero))
                        {
                            Return (PBUF) /* \_SB_.URT1.BTH1._CRS.PBUF */
                        }
                    }

                    Return (UBUF) /* \_SB_.URT1.BTH1._CRS.UBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((BDID == 0x03))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }
        }

        Device (URT2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F0A" /* Intel Atom UART Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F0A" /* Intel Atom UART Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HS-UART Controller #2 - 80860F0C")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y19)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000028,
                }
                FixedDMA (0x0004, 0x0004, Width32bit, )
                FixedDMA (0x0005, 0x0005, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.URT2._Y19._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.URT2._Y19._LEN, B0LN)  // _LEN: Length
                B0BA = U20A /* \U20A */
                B0LN = U20L /* \U20L */
                Return (RBUF) /* \_SB_.URT2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((U20A == Zero) || (L14D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, U21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (GPS0)
            {
                Name (_HID, "BCM4752")  // _HID: Hardware ID
                Name (UART, One)
                Name (ENAB, Zero)
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        UartSerialBus (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlHardware,
                            0x0020, 0x0020, "\\_SB.URT2",
                            0x00, ResourceConsumer, ,
                            )
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0001
                            }
                    })
                    Return (UBUF) /* \_SB_.URT2.GPS0._CRS.UBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }
        }

        Device (SPI1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F0E" /* Intel SPI Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F0E" /* Intel SPI Controller */)  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) SPI Controller - 80860F0E")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1A)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000029,
                }
                FixedDMA (0x0000, 0x0000, Width32bit, )
                FixedDMA (0x0001, 0x0001, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.SPI1._Y1A._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.SPI1._Y1A._LEN, B0LN)  // _LEN: Length
                B0BA = SP0A /* \SP0A */
                B0LN = SP0L /* \SP0L */
                Return (RBUF) /* \_SB_.SPI1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((SP0A == Zero) || (L15D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, SP1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (FPNT)
            {
                Name (_HID, "AUTH2750" /* AuthenTec AES2750 */)  // _HID: Hardware ID
                Name (_DDN, "AuthenTec AES2750")  // _DDN: DOS Device Name
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        SpiSerialBus (0x0001, PolarityLow, FourWireMode, 0x08,
                            ControllerInitiated, 0x007A1200, ClockPolarityLow,
                            ClockPhaseSecond, "\\_SB.SPI1",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000048,
                        }
                    })
                    Return (UBUF) /* \_SB_.SPI1.FPNT._CRS.UBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }
            }
        }

        Device (NFC2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "NXP5442" /* NXP 5442 Near Field Communications Controller */)  // _HID: Hardware ID
            Name (_CID, "NXP5442" /* NXP 5442 Near Field Communications Controller */)  // _CID: Compatible ID
            Name (_DDN, "NXP NFC")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((NFCS == 0x02))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (I2C1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) I2C Controller #1 - 80860F41")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1B)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000020,
                }
                FixedDMA (0x0010, 0x0000, Width32bit, )
                FixedDMA (0x0011, 0x0001, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C1._Y1B._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C1._Y1B._LEN, B0LN)  // _LEN: Length
                B0BA = I10A /* \I10A */
                B0LN = I10L /* \I10L */
                Return (RBUF) /* \_SB_.I2C1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I10A == Zero) || (L21D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (I2C2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) I2C Controller #2 - 80860F42")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1C)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000021,
                }
                FixedDMA (0x0012, 0x0002, Width32bit, )
                FixedDMA (0x0013, 0x0003, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C2._Y1C._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C2._Y1C._LEN, B0LN)  // _LEN: Length
                B0BA = I20A /* \I20A */
                B0LN = I20L /* \I20L */
                Return (RBUF) /* \_SB_.I2C2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I20A == Zero) || (L22D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (RTEK)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "10WM5102")  // _HID: Hardware ID
                Name (_CID, "10WM5102")  // _CID: Compatible ID
                Name (_DDN, "RTEK Codec Controller ")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        SpiSerialBus (0x0001, PolarityLow, FourWireMode, 0x08,
                            ControllerInitiated, 0x00E4E1C0, ClockPolarityLow,
                            ClockPhaseSecond, "\\_SB.SPI1",
                            0x00, ResourceConsumer, ,
                            )
                        GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0004
                            }
                    })
                    Return (SBUF) /* \_SB_.I2C2.RTEK._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    CKC3 = Zero
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    CKC3 = One
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }
            }
        }

        Device (I2C3)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #3 - 80860F43")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1D)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000022,
                }
                FixedDMA (0x0014, 0x0004, Width32bit, )
                FixedDMA (0x0015, 0x0005, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C3._Y1D._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C3._Y1D._LEN, B0LN)  // _LEN: Length
                B0BA = I30A /* \I30A */
                B0LN = I30L /* \I30L */
                Return (RBUF) /* \_SB_.I2C3.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I30A == Zero) || (L23D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I31A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (I2C4)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #4 - 80860F44")  // _DDN: DOS Device Name
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1E)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000023,
                }
                FixedDMA (0x0016, 0x0006, Width32bit, )
                FixedDMA (0x0017, 0x0007, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C4._Y1E._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C4._Y1E._LEN, B0LN)  // _LEN: Length
                B0BA = I40A /* \I40A */
                B0LN = I40L /* \I40L */
                Return (RBUF) /* \_SB_.I2C4.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I40A == Zero) || (L24D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I41A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            PowerResource (CLK0, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC0) /* \CKC0 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC0 = One
                    CKF0 = One
                    Sleep (0x20)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC0 = 0x02
                }
            }

            PowerResource (CLK1, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC1) /* \CKC1 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC1 = One
                    CKF1 = One
                    Sleep (0x20)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC1 = 0x02
                }
            }
        }

        Device (I2C5)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #5 - 80860F45")  // _DDN: DOS Device Name
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1F)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000024,
                }
                FixedDMA (0x0018, 0x0000, Width32bit, )
                FixedDMA (0x0019, 0x0001, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C5._Y1F._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C5._Y1F._LEN, B0LN)  // _LEN: Length
                B0BA = I50A /* \I50A */
                B0LN = I50L /* \I50L */
                Return (RBUF) /* \_SB_.I2C5.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I50A == Zero) || (L25D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I51A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (I2C6)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #6 - 80860F46")  // _DDN: DOS Device Name
            Name (_UID, 0x06)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y20)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000025,
                }
                FixedDMA (0x001A, 0x0002, Width32bit, )
                FixedDMA (0x001B, 0x0003, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C6._Y20._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C6._Y20._LEN, B0LN)  // _LEN: Length
                B0BA = I60A /* \I60A */
                B0LN = I60L /* \I60L */
                Return (RBUF) /* \_SB_.I2C6.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I60A == Zero) || (L26D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I61A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            PowerResource (TCPR, 0x00, 0x0000)
            {
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C7, 
                    ^^I2C7.PMIC
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((^^^I2C7.PMIC.AVBL == One))
                    {
                        Return (^^^I2C7.PMIC.TCON) /* \_SB_.I2C7.PMIC.TCON */
                    }

                    Return (Zero)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((^^^GPO0.AVBL == One))
                    {
                        ^^^GPO0.TCD3 = Zero
                    }

                    Sleep (0x05)
                    If ((^^^I2C7.PMIC.AVBG == One))
                    {
                        ^^^I2C7.PMIC.TCON = One
                    }

                    Sleep (0x0A)
                    If ((^^^GPO0.AVBL == One))
                    {
                        ^^^GPO0.TCD3 = One
                    }

                    Sleep (0x50)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((^^^I2C7.PMIC.AVBG == One))
                    {
                        ^^^I2C7.PMIC.TCON = Zero
                    }
                }
            }

            Device (TCS0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "ATML1000" /* Atmel Touchscreen Controller */)  // _HID: Hardware ID
                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Name (_S0W, Zero)  // _S0W: S0 Device Wake State
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    GPO0, 
                    I2C7
                })
                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    If ((^^^I2C7.PMIC.AVBG == One))
                    {
                        ^^^I2C7.PMIC.TCON = Zero
                    }
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If ((^^^GPO0.AVBL == One))
                    {
                        ^^^GPO0.TCD3 = Zero
                    }

                    Sleep (0x05)
                    If ((^^^I2C7.PMIC.AVBG == One))
                    {
                        ^^^I2C7.PMIC.TCON = One
                    }

                    Sleep (0x1E)
                    If ((^^^GPO0.AVBL == One))
                    {
                        ^^^GPO0.TCD3 = One
                    }

                    Sleep (0x78)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x004A, ControllerInitiated, 0x0019F0A0,
                            AddressingMode7Bit, "\\_SB.I2C6",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000045,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003C
                            }
                    })
                    Name (PBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x004B, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C6",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000045,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003C
                            }
                    })
                    Name (ABUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x0020, ControllerInitiated, 0x0019F0A0,
                            AddressingMode7Bit, "\\_SB.I2C6",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000045,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003C
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000B
                            }
                    })
                    If ((ITSA == 0x4B))
                    {
                        Return (PBUF) /* \_SB_.I2C6.TCS0._CRS.PBUF */
                    }
                    Else
                    {
                        If (((BDID == 0x03) && (OSSL == One)))
                        {
                            Return (ABUF) /* \_SB_.I2C6.TCS0._CRS.ABUF */
                        }
                        Else
                        {
                            Return (RBUF) /* \_SB_.I2C6.TCS0._CRS.RBUF */
                        }
                    }
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Debug = "Method _DSM begin"
                    If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                    {
                        While (One)
                        {
                            _T_0 = ToInteger (Arg2)
                            If ((_T_0 == Zero))
                            {
                                While (One)
                                {
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == One))
                                    {
                                        Debug = "Method _DSM Function Query"
                                        Return (Buffer (One)
                                        {
                                             0x03                                             /* . */
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             /* . */
                                        })
                                    }

                                    Break
                                }
                            }
                            Else
                            {
                                If ((_T_0 == One))
                                {
                                    Debug = "Method _DSM Function HID"
                                    Return (Zero)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             /* . */
                        })
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }
        }

        Device (I2C7)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #7 - 80860F47")  // _DDN: DOS Device Name
            Name (_UID, 0x07)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y21)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000026,
                }
                FixedDMA (0x001C, 0x0004, Width32bit, )
                FixedDMA (0x001D, 0x0005, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C7._Y21._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C7._Y21._LEN, B0LN)  // _LEN: Length
                B0BA = I70A /* \I70A */
                B0LN = I70L /* \I70L */
                Return (RBUF) /* \_SB_.I2C7.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I70A == Zero) || (L27D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I71A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Scope (I2C7)
        {
            Device (PMIC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33FD" /* Intel Baytrail Power Management IC */)  // _HID: Hardware ID
                Name (_CID, "INT33FD" /* Intel Baytrail Power Management IC */)  // _CID: Compatible ID
                Name (_DDN, "PMIC GPIO Controller")  // _DDN: DOS Device Name
                Name (_HRV, 0x02)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    I2C7
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x006E, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.I2C7",
                            0x00, ResourceConsumer, ,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                    })
                    Return (SBUF) /* \_SB_.I2C7.PMIC._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PMEN == Zero))
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }

                OperationRegion (DPTF, 0x8C, Zero, 0x0100)
                Field (DPTF, DWordAcc, NoLock, Preserve)
                {
                    TMP0,   32, 
                    AX00,   32, 
                    AX01,   32, 
                    TMP1,   32, 
                    AX10,   32, 
                    AX11,   32, 
                    TMP2,   32, 
                    AX20,   32, 
                    AX21,   32, 
                    TMP3,   32, 
                    AX30,   32, 
                    AX31,   32, 
                    TMP4,   32, 
                    AX40,   32, 
                    AX41,   32, 
                    TMP5,   32, 
                    AX50,   32, 
                    AX51,   32, 
                    PEN0,   32, 
                    PEN1,   32, 
                    PEN2,   32, 
                    PEN3,   32, 
                    PEN4,   32, 
                    PEN5,   32
                }

                OperationRegion (PMOP, 0x8D, Zero, 0x0100)
                Field (PMOP, DWordAcc, NoLock, Preserve)
                {
                    VSYS,   32, 
                    SYSX,   32, 
                    SYSU,   32, 
                    SYSS,   32, 
                    V50S,   32, 
                    HOST,   32, 
                    VBUS,   32, 
                    HDMI,   32, 
                    S285,   32, 
                    X285,   32, 
                    V33A,   32, 
                    V33S,   32, 
                    V33U,   32, 
                    V33I,   32, 
                    V18A,   32, 
                    REFQ,   32, 
                    V12A,   32, 
                    V18S,   32, 
                    V18X,   32, 
                    V18U,   32, 
                    V12X,   32, 
                    V12S,   32, 
                    V10A,   32, 
                    V10S,   32, 
                    V10X,   32, 
                    V105,   32
                }

                OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0100)
                Field (GPOP, ByteAcc, NoLock, Preserve)
                {
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0020
                            }
                    ), 
                    GMP0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0021
                            }
                    ), 
                    GX00,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0022
                            }
                    ), 
                    GX01,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0023
                            }
                    ), 
                    GMP1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0024
                            }
                    ), 
                    GX10,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0025
                            }
                    ), 
                    GX11,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0026
                            }
                    ), 
                    GMP2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0027
                            }
                    ), 
                    GX20,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0028
                            }
                    ), 
                    GX21,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0029
                            }
                    ), 
                    GMP3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002A
                            }
                    ), 
                    GX30,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002B
                            }
                    ), 
                    GX31,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002C
                            }
                    ), 
                    GMP4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002D
                            }
                    ), 
                    GX40,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002E
                            }
                    ), 
                    GX41,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002F
                            }
                    ), 
                    GMP5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0030
                            }
                    ), 
                    GX50,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0031
                            }
                    ), 
                    GX51,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0032
                            }
                    ), 
                    GEN0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0033
                            }
                    ), 
                    GEN1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                    ), 
                    GEN2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                    ), 
                    GEN3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0036
                            }
                    ), 
                    GEN4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0037
                            }
                    ), 
                    GEN5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0040
                            }
                    ), 
                    GSYS,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0041
                            }
                    ), 
                    GYSX,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0042
                            }
                    ), 
                    GYSU,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0043
                            }
                    ), 
                    GYSS,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0044
                            }
                    ), 
                    G50S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0045
                            }
                    ), 
                    GOST,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0046
                            }
                    ), 
                    GBUS,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0047
                            }
                    ), 
                    GDMI,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0048
                            }
                    ), 
                    G28S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0049
                            }
                    ), 
                    G28X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004A
                            }
                    ), 
                    G33A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004B
                            }
                    ), 
                    G33S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004C
                            }
                    ), 
                    G33U,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004D
                            }
                    ), 
                    G33I,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004E
                            }
                    ), 
                    G18A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004F
                            }
                    ), 
                    GEFQ,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0050
                            }
                    ), 
                    G12A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0051
                            }
                    ), 
                    G18S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0052
                            }
                    ), 
                    G18X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0053
                            }
                    ), 
                    G18U,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0054
                            }
                    ), 
                    G12X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0055
                            }
                    ), 
                    G12S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0056
                            }
                    ), 
                    G10A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0057
                            }
                    ), 
                    G10S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0058
                            }
                    ), 
                    G10X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0059
                            }
                    ), 
                    G105,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005E
                            }
                    ), 
                    FCOT,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000B
                            }
                    ), 
                    TCON,   1
                }

                Name (AVBL, Zero)
                Name (AVBD, Zero)
                Name (AVBG, Zero)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If ((Arg0 == 0x08))
                    {
                        AVBG = Arg1
                    }

                    If ((Arg0 == 0x8D))
                    {
                        AVBL = Arg1
                    }

                    If ((Arg0 == 0x8C))
                    {
                        AVBD = Arg1
                    }
                }

                Name (LPAT, Package (0x30)
                {
                    0x09E3, 
                    0x03D1, 
                    0x0A15, 
                    0x03C1, 
                    0x0A47, 
                    0x03AD, 
                    0x0A79, 
                    0x0395, 
                    0x0AAB, 
                    0x0377, 
                    0x0ADD, 
                    0x0355, 
                    0x0B0F, 
                    0x032D, 
                    0x0B41, 
                    0x0301, 
                    0x0B73, 
                    0x02D0, 
                    0x0BA5, 
                    0x029D, 
                    0x0BD7, 
                    0x0267, 
                    0x0C09, 
                    0x0231, 
                    0x0C3B, 
                    0x01FC, 
                    0x0C6D, 
                    0x01C8, 
                    0x0C9F, 
                    0x0197, 
                    0x0CD1, 
                    0x0165, 
                    0x0D03, 
                    0x013B, 
                    0x0D35, 
                    0x0115, 
                    0x0D67, 
                    0xF3, 
                    0x0D99, 
                    0xD4, 
                    0x0DCB, 
                    0xBA, 
                    0x0DFD, 
                    0xA2, 
                    0x0E2F, 
                    0x8C, 
                    0x0E93, 
                    0x6B
                })
            }
        }

        Scope (I2C1)
        {
            Device (IMP1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "IMPJ0001")  // _HID: Hardware ID
                Name (_CID, "IMPJ0001")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PSSD == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x006E, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C1",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C1.IMP1._CRS.SBUF */
                }
            }

            Device (IMP2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "IMPJ0002")  // _HID: Hardware ID
                Name (_CID, "IMPJ0002")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PSSD == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x006F, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C1",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C1.IMP2._CRS.SBUF */
                }
            }

            Device (IMP3)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "IMPJ0003")  // _HID: Hardware ID
                Name (_CID, "IMPJ0003")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PSSD == 0x02))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x006E, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C1",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C1.IMP3._CRS.SBUF */
                }
            }
        }

        PowerResource (P28X, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C7, 
                ^I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^I2C7.PMIC.AVBG == One))
                {
                    ^^I2C7.PMIC.G28X = Zero
                    If ((^^I2C7.PMIC.AVBL == One))
                    {
                        Return (^^I2C7.PMIC.X285) /* \_SB_.I2C7.PMIC.X285 */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^I2C7.PMIC.AVBL == One))
                {
                    ^^I2C7.PMIC.X285 = One
                    If ((^^I2C7.PMIC.AVBG == One))
                    {
                        ^^I2C7.PMIC.G28X = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^I2C7.PMIC.AVBL == One))
                {
                    ^^I2C7.PMIC.X285 = Zero
                    If ((^^I2C7.PMIC.AVBG == One))
                    {
                        ^^I2C7.PMIC.G28X = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P18X, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C7, 
                ^I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^I2C7.PMIC.AVBG == One))
                {
                    ^^I2C7.PMIC.G18X = Zero
                    If ((^^I2C7.PMIC.AVBL == One))
                    {
                        Return (^^I2C7.PMIC.V18X) /* \_SB_.I2C7.PMIC.V18X */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^I2C7.PMIC.AVBL == One))
                {
                    ^^I2C7.PMIC.V18X = One
                    If ((^^I2C7.PMIC.AVBG == One))
                    {
                        ^^I2C7.PMIC.G18X = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^I2C7.PMIC.AVBL == One))
                {
                    ^^I2C7.PMIC.V18X = Zero
                    If ((^^I2C7.PMIC.AVBG == One))
                    {
                        ^^I2C7.PMIC.G18X = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        Device (TBAD)
        {
            Name (_HID, "INTCFD9" /* Intel Baytrail SOC GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0C40" /* Standard Button Controller */)  // _CID: Compatible ID
            Name (_DDN, "Keyboard less system - 5 Button Array Device")  // _DDN: DOS Device Name
            Name (_DEP, Package (0x04)  // _DEP: Dependencies
            {
                GPO0, 
                GPO2, 
                I2C7, 
                ^I2C7.PMIC
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0010
                        }
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0001
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0007
                        }
                })
                Name (PBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0010
                        }
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0005
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0004
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                If ((BDID == 0x04))
                {
                    If ((FBID == 0x02))
                    {
                        Return (PBUF) /* \_SB_.TBAD._CRS.PBUF */
                    }

                    If ((FBID == 0x03))
                    {
                        Return (PBUF) /* \_SB_.TBAD._CRS.PBUF */
                    }
                }
                Else
                {
                    If ((BDID == 0x02))
                    {
                        If ((FBID == 0x02))
                        {
                            Return (PBUF) /* \_SB_.TBAD._CRS.PBUF */
                        }
                    }
                }

                Return (RBUF) /* \_SB_.TBAD._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If ((OSYS == 0x07DD))
                {
                    ^^I2C7.PMIC.FCOT = One
                }
                Else
                {
                    ^^I2C7.PMIC.FCOT = Zero
                }

                If ((Arg0 == ToUUID ("dfbcf3c5-e7a5-44e6-9c1f-29c76f6e059c") /* Power Button Device */))
                {
                    While (One)
                    {
                        _T_0 = ToInteger (Arg2)
                        If ((_T_0 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             /* . */
                            })
                        }
                        Else
                        {
                            If ((_T_0 == One))
                            {
                                Return (0x07)
                            }
                        }

                        Break
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             /* . */
                    })
                }

                Return (Zero)
            }
        }

        Device (MBID)
        {
            Name (_HID, "INT33BD" /* Intel Baytrail Mailbox Device */)  // _HID: Hardware ID
            Name (_CID, "INT33BD" /* Intel Baytrail Mailbox Device */)  // _CID: Compatible ID
            Name (_HRV, 0x02)  // _HRV: Hardware Revision
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xE00000D0,         // Address Base
                        0x0000000C,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.MBID._CRS.RBUF */
            }

            OperationRegion (REGS, 0x87, Zero, 0x30)
            Field (REGS, DWordAcc, NoLock, Preserve)
            {
                PORT,   32, 
                REG,    32, 
                DATA,   32, 
                MASK,   32, 
                BE,     32, 
                OP,     32
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x87))
                {
                    AVBL = Arg1
                }
            }

            Method (READ, 3, Serialized)
            {
                Local0 = 0xFFFFFFFF
                If ((AVBL == One))
                {
                    OP = Zero
                    PORT = Arg0
                    REG = Arg1
                    BE = Arg2
                    Local0 = DATA /* \_SB_.MBID.DATA */
                }

                Return (Local0)
            }

            Method (WRIT, 4, Serialized)
            {
                If ((AVBL == One))
                {
                    OP = One
                    PORT = Arg0
                    REG = Arg1
                    BE = Arg2
                    DATA = Arg3
                }
            }

            Method (MODI, 5, Serialized)
            {
                If ((AVBL == One))
                {
                    OP = 0x02
                    PORT = Arg0
                    REG = Arg1
                    BE = Arg2
                    DATA = Arg3
                    MASK = Arg4
                }
            }
        }

        Device (PAGD)
        {
            Name (_HID, "ACPI000C" /* Processor Aggregator Device */)  // _HID: Hardware ID
            Name (_CID, "ACPI000C" /* Processor Aggregator Device */)  // _CID: Compatible ID
            Name (IDCN, Zero)
            Name (PURP, Package (0x02)
            {
                One, 
                Zero
            })
            Method (_PUR, 0, Serialized)  // _PUR: Processor Utilization Request
            {
                Index (PURP, One) = IDCN /* \_SB_.PAGD.IDCN */
                Return (PURP) /* \_SB_.PAGD.PURP */
            }

            Method (_OST, 3, Serialized)  // _OST: OSPM Status Indication
            {
                Debug = "_OST is invoked"
            }
        }
    }

    Name (PICM, Zero)
    Device (MDM)
    {
        Name (_HID, EisaId ("MCD0001"))  // _HID: Hardware ID
        Name (_CID, "MCD0001")  // _CID: Compatible ID
        Name (CPU, "ValleyView2")
        Name (MDMN, "XMM_7160")
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((BDID == 0x03))
            {
                Return (0x0F)
            }

            Return (Zero)
        }

        Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
        {
            Name (UBUF, ResourceTemplate ()
            {
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x001A
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x001E
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x001C
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x001D
                    }
            })
            Return (UBUF) /* \MDM_._CRS.UBUF */
        }

        Name (PMIC, Package (0x04)
        {
            0x29, 
            One, 
            Zero, 
            0xFC
        })
        Name (EPWR, Package (0x02)
        {
            Zero, 
            One
        })
    }

    Scope (_TZ)
    {
        ThermalZone (TZ00)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C7, 
                \_SB.I2C7.PMIC
            })
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((\_SB.I2C7.PMIC.AVBG == One))
                {
                    \_SB.I2C7.PMIC.GMP2 = Zero
                    If ((\_SB.I2C7.PMIC.AVBD == One))
                    {
                        Return (\_SB.I2C7.PMIC.TMP2)
                    }
                }

                Return (0x0AAC)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0xE0000000,         // Address Base
                    0x10000000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED01000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED03000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED04000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED0C000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED08000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED1C000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEF00000,         // Address Base
                    0x00100000,         // Address Length
                    )
            })
        }
    }

    Method (BRTN, 1, Serialized)
    {
        If (((DID1 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD01, Arg0)
        }

        If (((DID2 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD02, Arg0)
        }

        If (((DID3 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD03, Arg0)
        }

        If (((DID4 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD04, Arg0)
        }

        If (((DID5 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD05, Arg0)
        }

        If (CondRefOf (NDN3))
        {
            NDN3 (Arg0)
        }
    }

    Scope (_SB.I2C3)
    {
    }

    Scope (_SB.I2C1)
    {
        Device (SMFG)
        {
            Name (_HID, "BQF27541")  // _HID: Hardware ID
            Name (_CID, "BQF27541")  // _CID: Compatible ID
            Name (_DDN, "Fuel Gauge Controller")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBus (0x0055, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, ,
                    )
                GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0012
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.I2C1.SMFG.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((BDID == 0x03) && (OSSL == One)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (SMCG)
        {
            Name (_HID, "TBQ24296" /* Charger */)  // _HID: Hardware ID
            Name (_CID, "TBQ24296" /* Charger */)  // _CID: Compatible ID
            Name (_DDN, "Charger")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBus (0x006B, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, ,
                    )
                GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0002
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.I2C1.SMCG.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((BDID == 0x03) && (OSSL == One)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB)
    {
        Device (ADP1)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                Return (One)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB) /* \_SB_ */
            }
        }
    }

    Scope (_SB.I2C5)
    {
        Device (TP1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK0001")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((WITT == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBus (0x007F, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB_.I2C5",
                        0x00, ResourceConsumer, ,
                        )
                })
                Return (RBUF) /* \_SB_.I2C5.TP1_._CRS.RBUF */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4fb3fc66-c8fb-4680-b6eb-9564a980d434")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "Method _DSM Function Query"
                            Return (Buffer (One)
                            {
                                 0x03                                             /* . */
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Debug = "Method _DSM Function HID"
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             /* . */
                    })
                }

                Return (Zero)
            }
        }

        Device (TP2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK0002")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((WITT == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBus (0x0011, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB_.I2C5",
                        0x00, ResourceConsumer, ,
                        )
                })
                Return (RBUF) /* \_SB_.I2C5.TP2_._CRS.RBUF */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4fb3fc66-c8fb-4680-b6eb-9564a980d434")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "Method _DSM Function Query"
                            Return (Buffer (One)
                            {
                                 0x03                                             /* . */
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Debug = "Method _DSM Function HID"
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             /* . */
                    })
                }

                Return (Zero)
            }
        }

        Device (TP3)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK0003")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((WITT == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBus (0x0012, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB_.I2C5",
                        0x00, ResourceConsumer, ,
                        )
                })
                Return (RBUF) /* \_SB_.I2C5.TP3_._CRS.RBUF */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4fb3fc66-c8fb-4680-b6eb-9564a980d434")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "Method _DSM Function Query"
                            Return (Buffer (One)
                            {
                                 0x03                                             /* . */
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Debug = "Method _DSM Function HID"
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             /* . */
                    })
                }

                Return (Zero)
            }
        }

        Device (TP4)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK0004")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((WITT == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBus (0x0013, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB_.I2C5",
                        0x00, ResourceConsumer, ,
                        )
                })
                Return (RBUF) /* \_SB_.I2C5.TP4_._CRS.RBUF */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4fb3fc66-c8fb-4680-b6eb-9564a980d434")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "Method _DSM Function Query"
                            Return (Buffer (One)
                            {
                                 0x03                                             /* . */
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Debug = "Method _DSM Function HID"
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             /* . */
                    })
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.URT1)
    {
        Device (UART)
        {
            Name (_HID, "UTK0001")  // _HID: Hardware ID
            Name (_CID, "UARTTest")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((UTS == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    UartSerialBus (0x0001C200, DataBitsEight, StopBitsOne,
                        0xC0, LittleEndian, ParityTypeNone, FlowControlHardware,
                        0x0020, 0x0020, "\\_SB.URT1",
                        0x00, ResourceConsumer, ,
                        )
                })
                Return (RBUF) /* \_SB_.URT1.UART._CRS.RBUF */
            }
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
}


/*
Raw Table Data: Length 45038 (0xAFEE)

  0000: 44 53 44 54 EE AF 00 00 02 FD 49 4E 54 45 4C 20  // DSDT......INTEL 
  0010: 45 44 4B 32 20 20 20 20 03 00 00 00 56 4C 56 32  // EDK2    ....VLV2
  0020: 0D 00 00 01 14 17 41 44 42 47 09 A0 0E 5B 12 4D  // ......ADBG...[.M
  0030: 44 42 47 00 A4 4D 44 42 47 68 A4 00 08 53 50 33  // DBG..MDBGh...SP3
  0040: 4F 0A 2E 08 49 4F 34 42 0B 20 0A 08 49 4F 34 4C  // O...IO4B. ..IO4L
  0050: 0A 20 08 53 50 31 4F 0A 4E 08 53 4D 42 53 0B A0  // . .SP1O.N.SMBS..
  0060: EF 08 53 4D 42 4C 0A 20 08 50 4D 42 53 0B 00 04  // ..SMBL. .PMBS...
  0070: 08 53 4D 49 50 0A B2 08 47 50 42 53 0B 00 05 08  // .SMIP...GPBS....
  0080: 41 50 43 42 0C 00 00 C0 FE 08 41 50 43 4C 0B 00  // APCB......APCL..
  0090: 10 08 50 46 44 52 0C 34 30 D0 FE 08 50 4D 43 42  // ..PFDR.40...PMCB
  00A0: 0C 00 30 D0 FE 08 50 43 4C 4B 0C 60 30 D0 FE 08  // ..0...PCLK.`0...
  00B0: 50 55 4E 42 0C 00 50 D0 FE 08 49 42 41 53 0C 00  // PUNB..P...IBAS..
  00C0: 80 D0 FE 08 53 52 43 42 0C 00 C0 D1 FE 08 53 52  // ....SRCB......SR
  00D0: 43 4C 0B 00 10 08 48 50 54 42 0C 00 00 D0 FE 08  // CL....HPTB......
  00E0: 4D 43 48 42 0C 00 40 D1 FE 08 4D 43 48 4C 0B 00  // MCHB..@...MCHL..
  00F0: 40 08 45 47 50 42 0C 00 90 D1 FE 08 45 47 50 4C  // @.EGPB......EGPL
  0100: 0B 00 10 08 44 4D 49 42 0C 00 80 D1 FE 08 44 4D  // ....DMIB......DM
  0110: 49 4C 0B 00 10 08 49 46 50 42 0C 00 40 D1 FE 08  // IL....IFPB..@...
  0120: 49 46 50 4C 0B 00 10 08 50 45 42 53 0C 00 00 00  // IFPL....PEBS....
  0130: E0 08 50 45 4C 4E 0C 00 00 00 10 08 46 4D 42 4C  // ..PELN......FMBL
  0140: 01 08 46 44 54 50 0A 02 08 47 43 44 44 01 08 44  // ..FDTP...GCDD..D
  0150: 53 54 41 0A 0A 08 44 53 4C 4F 0A 02 08 44 53 4C  // STA...DSLO...DSL
  0160: 43 0A 03 08 50 49 54 53 0A 10 08 53 42 43 53 0A  // C...PITS...SBCS.
  0170: 12 08 53 41 4C 53 0A 13 08 4C 53 53 53 0A 2A 08  // ..SALS...LSSS.*.
  0180: 50 53 53 53 0A 2B 08 53 4F 4F 54 0A 35 08 45 53  // PSSS.+.SOOT.5.ES
  0190: 43 53 0A 48 08 53 44 47 56 0A 1C 08 41 43 50 48  // CS.H.SDGV...ACPH
  01A0: 0A DE 08 41 53 53 42 00 08 41 4F 54 42 00 08 41  // ...ASSB..AOTB..A
  01B0: 41 58 42 00 08 50 45 48 50 01 08 53 48 50 43 00  // AXB..PEHP..SHPC.
  01C0: 08 50 45 50 4D 01 08 50 45 45 52 01 08 50 45 43  // .PEPM..PEER..PEC
  01D0: 53 01 08 49 54 4B 45 00 08 46 54 42 4C 0A 04 5B  // S..ITKE..FTBL..[
  01E0: 80 47 4E 56 53 00 0C 98 AA EE 79 0B 42 03 5B 81  // .GNVS.....y.B.[.
  01F0: 48 58 47 4E 56 53 10 4F 53 59 53 10 53 4D 49 46  // HXGNVS.OSYS.SMIF
  0200: 08 50 52 4D 30 08 50 52 4D 31 08 53 43 49 46 08  // .PRM0.PRM1.SCIF.
  0210: 50 52 4D 32 08 50 52 4D 33 08 4C 43 4B 46 08 50  // PRM2.PRM3.LCKF.P
  0220: 52 4D 34 08 50 52 4D 35 08 50 38 30 44 20 4C 49  // RM4.PRM5.P80D LI
  0230: 44 53 08 50 57 52 53 08 44 42 47 53 08 54 48 4F  // DS.PWRS.DBGS.THO
  0240: 46 08 41 43 54 31 08 41 43 54 54 08 50 53 56 54  // F.ACT1.ACTT.PSVT
  0250: 08 54 43 31 56 08 54 43 32 56 08 54 53 50 56 08  // .TC1V.TC2V.TSPV.
  0260: 43 52 54 54 08 44 54 53 45 08 44 54 53 31 08 44  // CRTT.DTSE.DTS1.D
  0270: 54 53 32 08 44 54 53 46 08 42 4E 55 4D 08 42 30  // TS2.DTSF.BNUM.B0
  0280: 53 43 08 42 31 53 43 08 42 32 53 43 08 42 30 53  // SC.B1SC.B2SC.B0S
  0290: 53 08 42 31 53 53 08 42 32 53 53 08 00 18 41 50  // S.B1SS.B2SS...AP
  02A0: 49 43 08 4D 50 45 4E 08 50 43 50 30 08 50 43 50  // IC.MPEN.PCP0.PCP
  02B0: 31 08 50 50 43 4D 08 50 50 4D 46 20 00 08 4E 41  // 1.PPCM.PPMF ..NA
  02C0: 54 50 08 43 4D 41 50 08 43 4D 42 50 08 4C 50 54  // TP.CMAP.CMBP.LPT
  02D0: 50 08 46 44 43 50 08 43 4D 43 50 08 43 49 52 50  // P.FDCP.CMCP.CIRP
  02E0: 08 57 33 38 31 08 4E 50 43 45 08 00 08 49 47 44  // .W381.NPCE...IGD
  02F0: 53 08 54 4C 53 54 08 43 41 44 4C 08 50 41 44 4C  // S.TLST.CADL.PADL
  0300: 08 43 53 54 45 10 4E 53 54 45 10 53 53 54 45 10  // .CSTE.NSTE.SSTE.
  0310: 4E 44 49 44 08 44 49 44 31 20 44 49 44 32 20 44  // NDID.DID1 DID2 D
  0320: 49 44 33 20 44 49 44 34 20 44 49 44 35 20 4B 53  // ID3 DID4 DID5 KS
  0330: 56 30 20 4B 53 56 31 08 00 38 42 4C 43 53 08 42  // V0 KSV1..8BLCS.B
  0340: 52 54 4C 08 41 4C 53 45 08 41 4C 41 46 08 4C 4C  // RTL.ALSE.ALAF.LL
  0350: 4F 57 08 4C 48 49 48 08 00 08 45 4D 41 45 08 45  // OW.LHIH...EMAE.E
  0360: 4D 41 50 10 45 4D 41 4C 10 00 08 4D 45 46 45 08  // MAP.EMAL...MEFE.
  0370: 44 53 54 53 08 00 10 54 50 4D 50 08 54 50 4D 45  // DSTS...TPMP.TPME
  0380: 08 4D 4F 52 44 08 54 43 47 50 08 50 50 52 50 20  // .MORD.TCGP.PPRP 
  0390: 50 50 52 51 08 4C 50 50 52 08 47 54 46 30 38 47  // PPRQ.LPPR.GTF08G
  03A0: 54 46 32 38 49 44 45 4D 08 47 54 46 31 38 00 40  // TF28IDEM.GTF18.@
  03B0: 09 41 53 4C 42 20 49 42 54 54 08 49 50 41 54 08  // .ASLB IBTT.IPAT.
  03C0: 49 54 56 46 08 49 54 56 4D 08 49 50 53 43 08 49  // ITVF.ITVM.IPSC.I
  03D0: 42 4C 43 08 49 42 49 41 08 49 53 53 43 08 49 34  // BLC.IBIA.ISSC.I4
  03E0: 30 39 08 49 35 30 39 08 49 36 30 39 08 49 37 30  // 09.I509.I609.I70
  03F0: 39 08 49 44 4D 4D 08 49 44 4D 53 08 49 46 31 45  // 9.IDMM.IDMS.IF1E
  0400: 08 48 56 43 4F 08 4E 58 44 31 20 4E 58 44 32 20  // .HVCO.NXD1 NXD2 
  0410: 4E 58 44 33 20 4E 58 44 34 20 4E 58 44 35 20 4E  // NXD3 NXD4 NXD5 N
  0420: 58 44 36 20 4E 58 44 37 20 4E 58 44 38 20 47 53  // XD6 NXD7 NXD8 GS
  0430: 4D 49 08 50 41 56 50 08 00 08 4F 53 43 43 08 4E  // MI.PAVP...OSCC.N
  0440: 45 58 50 08 00 40 04 44 53 45 4E 08 45 43 4F 4E  // EXP..@.DSEN.ECON
  0450: 08 47 50 49 43 08 43 54 59 50 08 4C 30 31 43 08  // .GPIC.CTYP.L01C.
  0460: 56 46 4E 30 08 56 46 4E 31 08 00 40 07 4E 56 47  // VFN0.VFN1..@.NVG
  0470: 41 20 4E 56 48 41 20 41 4D 44 41 20 44 49 44 36  // A NVHA AMDA DID6
  0480: 20 44 49 44 37 20 44 49 44 38 20 00 40 1A 55 53  //  DID7 DID8 .@.US
  0490: 45 4C 08 50 55 31 45 08 50 55 32 45 08 4C 50 45  // EL.PU1E.PU2E.LPE
  04A0: 30 20 4C 50 45 31 20 4C 50 45 32 20 41 43 53 54  // 0 LPE1 LPE2 ACST
  04B0: 08 42 54 53 54 08 50 46 4C 56 08 00 08 41 4F 41  // .BTST.PFLV...AOA
  04C0: 43 08 58 48 43 49 08 50 4D 45 4E 08 4C 50 45 45  // C.XHCI.PMEN.LPEE
  04D0: 08 49 53 50 41 20 49 53 50 44 08 50 43 49 42 20  // .ISPA ISPD.PCIB 
  04E0: 50 43 49 54 20 44 31 30 41 20 44 31 30 4C 20 44  // PCIT D10A D10L D
  04F0: 31 31 41 20 44 31 31 4C 20 50 31 30 41 20 50 31  // 11A D11L P10A P1
  0500: 30 4C 20 50 31 31 41 20 50 31 31 4C 20 50 32 30  // 0L P11A P11L P20
  0510: 41 20 50 32 30 4C 20 50 32 31 41 20 50 32 31 4C  // A P20L P21A P21L
  0520: 20 55 31 30 41 20 55 31 30 4C 20 55 31 31 41 20  //  U10A U10L U11A 
  0530: 55 31 31 4C 20 55 32 30 41 20 55 32 30 4C 20 55  // U11L U20A U20L U
  0540: 32 31 41 20 55 32 31 4C 20 53 50 30 41 20 53 50  // 21A U21L SP0A SP
  0550: 30 4C 20 53 50 31 41 20 53 50 31 4C 20 44 32 30  // 0L SP1A SP1L D20
  0560: 41 20 44 32 30 4C 20 44 32 31 41 20 44 32 31 4C  // A D20L D21A D21L
  0570: 20 49 31 30 41 20 49 31 30 4C 20 49 31 31 41 20  //  I10A I10L I11A 
  0580: 49 31 31 4C 20 49 32 30 41 20 49 32 30 4C 20 49  // I11L I20A I20L I
  0590: 32 31 41 20 49 32 31 4C 20 49 33 30 41 20 49 33  // 21A I21L I30A I3
  05A0: 30 4C 20 49 33 31 41 20 49 33 31 4C 20 49 34 30  // 0L I31A I31L I40
  05B0: 41 20 49 34 30 4C 20 49 34 31 41 20 49 34 31 4C  // A I40L I41A I41L
  05C0: 20 49 35 30 41 20 49 35 30 4C 20 49 35 31 41 20  //  I50A I50L I51A 
  05D0: 49 35 31 4C 20 49 36 30 41 20 49 36 30 4C 20 49  // I51L I60A I60L I
  05E0: 36 31 41 20 49 36 31 4C 20 49 37 30 41 20 49 37  // 61A I61L I70A I7
  05F0: 30 4C 20 49 37 31 41 20 49 37 31 4C 20 45 4D 30  // 0L I71A I71L EM0
  0600: 41 20 45 4D 30 4C 20 45 4D 31 41 20 45 4D 31 4C  // A EM0L EM1A EM1L
  0610: 20 53 49 30 41 20 53 49 30 4C 20 53 49 31 41 20  //  SI0A SI0L SI1A 
  0620: 53 49 31 4C 20 53 44 30 41 20 53 44 30 4C 20 53  // SI1L SD0A SD0L S
  0630: 44 31 41 20 53 44 31 4C 20 4D 48 30 41 20 4D 48  // D1A SD1L MH0A MH
  0640: 30 4C 20 4D 48 31 41 20 4D 48 31 4C 20 4F 53 53  // 0L MH1A MH1L OSS
  0650: 4C 08 00 18 44 50 54 45 08 54 48 4D 30 08 54 48  // L...DPTE.THM0.TH
  0660: 4D 31 08 54 48 4D 32 08 54 48 4D 33 08 54 48 4D  // M1.THM2.THM3.THM
  0670: 34 08 43 48 47 52 08 44 44 53 50 08 44 53 4F 43  // 4.CHGR.DDSP.DSOC
  0680: 08 44 50 53 52 08 44 50 43 54 20 44 50 50 54 20  // .DPSR.DPCT DPPT 
  0690: 44 47 43 30 20 44 47 50 30 20 44 47 43 31 20 44  // DGC0 DGP0 DGC1 D
  06A0: 47 50 31 20 44 47 43 32 20 44 47 50 32 20 44 47  // GP1 DGC2 DGP2 DG
  06B0: 43 33 20 44 47 50 33 20 44 47 43 34 20 44 47 50  // C3 DGP3 DGC4 DGP
  06C0: 34 20 44 4C 50 4D 08 44 53 43 30 20 44 53 43 31  // 4 DLPM.DSC0 DSC1
  06D0: 20 44 53 43 32 20 44 53 43 33 20 44 53 43 34 20  //  DSC2 DSC3 DSC4 
  06E0: 44 44 42 47 08 4C 50 4F 45 20 4C 50 50 53 20 4C  // DDBG.LPOE LPPS L
  06F0: 50 53 54 20 4C 50 50 43 20 4C 50 50 46 20 44 50  // PST LPPC LPPF DP
  0700: 4D 45 08 42 43 53 4C 08 4E 46 43 53 08 00 08 54  // ME.BCSL.NFCS...T
  0710: 50 4D 41 20 54 50 4D 4C 20 49 54 53 41 08 53 30  // PMA TPML ITSA.S0
  0720: 49 58 08 53 44 4D 44 08 45 4D 56 52 08 42 4D 42  // IX.SDMD.EMVR.BMB
  0730: 44 20 46 53 41 53 08 42 44 49 44 08 46 42 49 44  // D FSAS.BDID.FBID
  0740: 08 4F 54 47 4D 08 53 54 45 50 08 57 49 54 54 08  // .OTGM.STEP.WITT.
  0750: 53 4F 43 53 08 41 4D 54 45 08 55 54 53 5F 08 53  // SOCS.AMTE.UTS_.S
  0760: 43 50 45 08 53 41 52 45 08 50 53 53 44 08 45 44  // CPE.SARE.PSSD.ED
  0770: 50 56 08 44 49 44 58 20 10 8C 80 01 5F 53 42 5F  // PV.DIDX ...._SB_
  0780: 5B 82 22 52 54 43 5F 08 5F 48 49 44 0C 41 D0 0B  // [."RTC_._HID.A..
  0790: 00 08 5F 43 52 53 11 0D 0A 0A 47 01 70 00 70 00  // .._CRS....G.p.p.
  07A0: 01 08 79 00 5B 82 4C 04 48 50 45 54 08 5F 48 49  // ..y.[.L.HPET._HI
  07B0: 44 0C 41 D0 01 03 08 5F 55 49 44 00 14 09 5F 53  // D.A...._UID..._S
  07C0: 54 41 00 A4 0A 0F 14 2B 5F 43 52 53 08 08 52 42  // TA.....+_CRS..RB
  07D0: 55 46 11 1A 0A 17 86 09 00 01 00 00 D0 FE 00 04  // UF..............
  07E0: 00 00 89 06 00 01 01 08 00 00 00 79 00 A4 52 42  // ...........y..RB
  07F0: 55 46 08 50 52 30 30 12 4D 12 15 12 0D 04 0C FF  // UF.PR00.M.......
  0800: FF 10 00 00 4C 4E 4B 41 00 12 0D 04 0C FF FF 11  // ....LNKA........
  0810: 00 00 4C 4E 4B 42 00 12 0D 04 0C FF FF 12 00 00  // ..LNKB..........
  0820: 4C 4E 4B 43 00 12 0D 04 0C FF FF 14 00 00 4C 4E  // LNKC..........LN
  0830: 4B 45 00 12 0D 04 0C FF FF 15 00 00 4C 4E 4B 46  // KE..........LNKF
  0840: 00 12 0D 04 0C FF FF 16 00 00 4C 4E 4B 47 00 12  // ..........LNKG..
  0850: 0D 04 0C FF FF 17 00 00 4C 4E 4B 48 00 12 0D 04  // ........LNKH....
  0860: 0C FF FF 18 00 00 4C 4E 4B 42 00 12 0E 04 0C FF  // ......LNKB......
  0870: FF 18 00 0A 02 4C 4E 4B 44 00 12 0E 04 0C FF FF  // .....LNKD.......
  0880: 18 00 0A 03 4C 4E 4B 43 00 12 0D 04 0C FF FF 18  // ....LNKC........
  0890: 00 01 4C 4E 4B 41 00 12 0D 04 0C FF FF 19 00 00  // ..LNKA..........
  08A0: 4C 4E 4B 45 00 12 0D 04 0C FF FF 1A 00 00 4C 4E  // LNKE..........LN
  08B0: 4B 46 00 12 0D 04 0C FF FF 1B 00 00 4C 4E 4B 47  // KF..........LNKG
  08C0: 00 12 0D 04 0C FF FF 1D 00 00 4C 4E 4B 48 00 12  // ..........LNKH..
  08D0: 0D 04 0C FF FF 1E 00 00 4C 4E 4B 44 00 12 0E 04  // ........LNKD....
  08E0: 0C FF FF 1E 00 0A 03 4C 4E 4B 41 00 12 0D 04 0C  // .......LNKA.....
  08F0: FF FF 1E 00 01 4C 4E 4B 42 00 12 0E 04 0C FF FF  // .....LNKB.......
  0900: 1E 00 0A 02 4C 4E 4B 43 00 12 0D 04 0C FF FF 1F  // ....LNKC........
  0910: 00 01 4C 4E 4B 43 00 12 0D 04 0C FF FF 02 00 00  // ..LNKC..........
  0920: 4C 4E 4B 41 00 08 41 52 30 30 12 43 10 15 12 0B  // LNKA..AR00.C....
  0930: 04 0C FF FF 10 00 00 00 0A 10 12 0B 04 0C FF FF  // ................
  0940: 11 00 00 00 0A 11 12 0B 04 0C FF FF 12 00 00 00  // ................
  0950: 0A 12 12 0B 04 0C FF FF 14 00 00 00 0A 14 12 0B  // ................
  0960: 04 0C FF FF 15 00 00 00 0A 15 12 0B 04 0C FF FF  // ................
  0970: 16 00 00 00 0A 16 12 0B 04 0C FF FF 17 00 00 00  // ................
  0980: 0A 17 12 0B 04 0C FF FF 18 00 00 00 0A 11 12 0C  // ................
  0990: 04 0C FF FF 18 00 0A 02 00 0A 13 12 0C 04 0C FF  // ................
  09A0: FF 18 00 0A 03 00 0A 12 12 0B 04 0C FF FF 18 00  // ................
  09B0: 01 00 0A 10 12 0B 04 0C FF FF 19 00 00 00 0A 14  // ................
  09C0: 12 0B 04 0C FF FF 1A 00 00 00 0A 15 12 0B 04 0C  // ................
  09D0: FF FF 1B 00 00 00 0A 16 12 0B 04 0C FF FF 1D 00  // ................
  09E0: 00 00 0A 17 12 0B 04 0C FF FF 1E 00 00 00 0A 13  // ................
  09F0: 12 0C 04 0C FF FF 1E 00 0A 03 00 0A 10 12 0B 04  // ................
  0A00: 0C FF FF 1E 00 01 00 0A 11 12 0C 04 0C FF FF 1E  // ................
  0A10: 00 0A 02 00 0A 12 12 0B 04 0C FF FF 1F 00 01 00  // ................
  0A20: 0A 12 12 0B 04 0C FF FF 02 00 00 00 0A 10 08 50  // ...............P
  0A30: 52 30 34 12 34 04 12 0B 04 0B FF FF 00 4C 4E 4B  // R04.4........LNK
  0A40: 41 00 12 0B 04 0B FF FF 01 4C 4E 4B 42 00 12 0C  // A........LNKB...
  0A50: 04 0B FF FF 0A 02 4C 4E 4B 43 00 12 0C 04 0B FF  // ......LNKC......
  0A60: FF 0A 03 4C 4E 4B 44 00 08 41 52 30 34 12 2C 04  // ...LNKD..AR04.,.
  0A70: 12 09 04 0B FF FF 00 00 0A 10 12 09 04 0B FF FF  // ................
  0A80: 01 00 0A 11 12 0A 04 0B FF FF 0A 02 00 0A 12 12  // ................
  0A90: 0A 04 0B FF FF 0A 03 00 0A 13 08 50 52 30 35 12  // ...........PR05.
  0AA0: 34 04 12 0B 04 0B FF FF 00 4C 4E 4B 42 00 12 0B  // 4........LNKB...
  0AB0: 04 0B FF FF 01 4C 4E 4B 43 00 12 0C 04 0B FF FF  // .....LNKC.......
  0AC0: 0A 02 4C 4E 4B 44 00 12 0C 04 0B FF FF 0A 03 4C  // ..LNKD.........L
  0AD0: 4E 4B 41 00 08 41 52 30 35 12 2C 04 12 09 04 0B  // NKA..AR05.,.....
  0AE0: FF FF 00 00 0A 11 12 09 04 0B FF FF 01 00 0A 12  // ................
  0AF0: 12 0A 04 0B FF FF 0A 02 00 0A 13 12 0A 04 0B FF  // ................
  0B00: FF 0A 03 00 0A 10 08 50 52 30 36 12 34 04 12 0B  // .......PR06.4...
  0B10: 04 0B FF FF 00 4C 4E 4B 43 00 12 0B 04 0B FF FF  // .....LNKC.......
  0B20: 01 4C 4E 4B 44 00 12 0C 04 0B FF FF 0A 02 4C 4E  // .LNKD.........LN
  0B30: 4B 41 00 12 0C 04 0B FF FF 0A 03 4C 4E 4B 42 00  // KA.........LNKB.
  0B40: 08 41 52 30 36 12 2C 04 12 09 04 0B FF FF 00 00  // .AR06.,.........
  0B50: 0A 12 12 09 04 0B FF FF 01 00 0A 13 12 0A 04 0B  // ................
  0B60: FF FF 0A 02 00 0A 10 12 0A 04 0B FF FF 0A 03 00  // ................
  0B70: 0A 11 08 50 52 30 37 12 34 04 12 0B 04 0B FF FF  // ...PR07.4.......
  0B80: 00 4C 4E 4B 44 00 12 0B 04 0B FF FF 01 4C 4E 4B  // .LNKD........LNK
  0B90: 41 00 12 0C 04 0B FF FF 0A 02 4C 4E 4B 42 00 12  // A.........LNKB..
  0BA0: 0C 04 0B FF FF 0A 03 4C 4E 4B 43 00 08 41 52 30  // .......LNKC..AR0
  0BB0: 37 12 2C 04 12 09 04 0B FF FF 00 00 0A 13 12 09  // 7.,.............
  0BC0: 04 0B FF FF 01 00 0A 10 12 0A 04 0B FF FF 0A 02  // ................
  0BD0: 00 0A 11 12 0A 04 0B FF FF 0A 03 00 0A 12 08 50  // ...............P
  0BE0: 52 30 31 12 43 0E 10 12 0B 04 0B FF FF 00 4C 4E  // R01.C.........LN
  0BF0: 4B 46 00 12 0B 04 0B FF FF 01 4C 4E 4B 47 00 12  // KF........LNKG..
  0C00: 0C 04 0B FF FF 0A 02 4C 4E 4B 48 00 12 0C 04 0B  // .......LNKH.....
  0C10: FF FF 0A 03 4C 4E 4B 45 00 12 0D 04 0C FF FF 01  // ....LNKE........
  0C20: 00 00 4C 4E 4B 47 00 12 0D 04 0C FF FF 01 00 01  // ..LNKG..........
  0C30: 4C 4E 4B 46 00 12 0E 04 0C FF FF 01 00 0A 02 4C  // LNKF...........L
  0C40: 4E 4B 45 00 12 0E 04 0C FF FF 01 00 0A 03 4C 4E  // NKE...........LN
  0C50: 4B 48 00 12 0D 04 0C FF FF 02 00 00 4C 4E 4B 43  // KH..........LNKC
  0C60: 00 12 0D 04 0C FF FF 02 00 01 4C 4E 4B 44 00 12  // ..........LNKD..
  0C70: 0E 04 0C FF FF 02 00 0A 02 4C 4E 4B 42 00 12 0E  // .........LNKB...
  0C80: 04 0C FF FF 02 00 0A 03 4C 4E 4B 41 00 12 0D 04  // ........LNKA....
  0C90: 0C FF FF 03 00 00 4C 4E 4B 44 00 12 0D 04 0C FF  // ......LNKD......
  0CA0: FF 03 00 01 4C 4E 4B 43 00 12 0E 04 0C FF FF 03  // ....LNKC........
  0CB0: 00 0A 02 4C 4E 4B 46 00 12 0E 04 0C FF FF 03 00  // ...LNKF.........
  0CC0: 0A 03 4C 4E 4B 47 00 08 41 52 30 31 12 43 0C 10  // ..LNKG..AR01.C..
  0CD0: 12 09 04 0B FF FF 00 00 0A 15 12 09 04 0B FF FF  // ................
  0CE0: 01 00 0A 16 12 0A 04 0B FF FF 0A 02 00 0A 17 12  // ................
  0CF0: 0A 04 0B FF FF 0A 03 00 0A 14 12 0B 04 0C FF FF  // ................
  0D00: 01 00 00 00 0A 16 12 0B 04 0C FF FF 01 00 01 00  // ................
  0D10: 0A 15 12 0C 04 0C FF FF 01 00 0A 02 00 0A 14 12  // ................
  0D20: 0C 04 0C FF FF 01 00 0A 03 00 0A 17 12 0B 04 0C  // ................
  0D30: FF FF 02 00 00 00 0A 12 12 0B 04 0C FF FF 02 00  // ................
  0D40: 01 00 0A 13 12 0C 04 0C FF FF 02 00 0A 02 00 0A  // ................
  0D50: 11 12 0C 04 0C FF FF 02 00 0A 03 00 0A 10 12 0B  // ................
  0D60: 04 0C FF FF 03 00 00 00 0A 13 12 0B 04 0C FF FF  // ................
  0D70: 03 00 01 00 0A 12 12 0C 04 0C FF FF 03 00 0A 02  // ................
  0D80: 00 0A 15 12 0C 04 0C FF FF 03 00 0A 03 00 0A 16  // ................
  0D90: 08 50 52 53 41 11 09 0A 06 23 78 DC 18 79 00 06  // .PRSA....#x..y..
  0DA0: 50 52 53 41 50 52 53 42 06 50 52 53 41 50 52 53  // PRSAPRSB.PRSAPRS
  0DB0: 43 06 50 52 53 41 50 52 53 44 06 50 52 53 41 50  // C.PRSAPRSD.PRSAP
  0DC0: 52 53 45 06 50 52 53 41 50 52 53 46 06 50 52 53  // RSE.PRSAPRSF.PRS
  0DD0: 41 50 52 53 47 06 50 52 53 41 50 52 53 48 5B 82  // APRSG.PRSAPRSH[.
  0DE0: 85 1A 01 50 43 49 30 08 5F 48 49 44 0C 41 D0 0A  // ...PCI0._HID.A..
  0DF0: 08 08 5F 43 49 44 0C 41 D0 0A 03 08 5F 41 44 52  // .._CID.A...._ADR
  0E00: 00 14 09 5E 42 4E 30 30 00 A4 00 14 0B 5F 42 42  // ...^BN00....._BB
  0E10: 4E 00 A4 42 4E 30 30 08 5F 55 49 44 00 08 5F 44  // N..BN00._UID.._D
  0E20: 45 50 12 06 01 50 45 50 44 14 16 5F 50 52 54 00  // EP...PEPD.._PRT.
  0E30: A0 0A 50 49 43 4D A4 41 52 30 30 A4 50 52 30 30  // ..PICM.AR00.PR00
  0E40: 5B 82 47 07 56 4C 56 43 08 5F 41 44 52 00 5B 80  // [.G.VLVC._ADR.[.
  0E50: 48 42 55 53 02 00 0A FF 5B 81 18 48 42 55 53 03  // HBUS....[..HBUS.
  0E60: 00 40 68 53 4D 43 52 20 53 4D 44 52 20 4D 43 52  // .@hSMCR SMDR MCR
  0E70: 58 20 14 22 52 4D 42 52 0A 7D 79 68 0A 10 00 79  // X ."RMBR.}yh...y
  0E80: 69 0A 08 00 60 7D 0C F0 00 00 10 60 53 4D 43 52  // i...`}.....`SMCR
  0E90: A4 53 4D 44 52 14 23 57 4D 42 52 0B 70 6A 53 4D  // .SMDR.#WMBR.pjSM
  0EA0: 44 52 7D 79 68 0A 10 00 79 69 0A 08 00 60 7D 0C  // DR}yh...yi...`}.
  0EB0: F0 00 00 11 60 53 4D 43 52 14 4D 12 5F 43 52 53  // ....`SMCR.M._CRS
  0EC0: 08 A0 19 54 50 4D 50 8A 52 45 53 30 0B 02 01 54  // ...TPMP.RES0...T
  0ED0: 50 4D 4C 70 0B 00 10 54 50 4D 4C 8A 52 45 53 30  // PMLp...TPML.RES0
  0EE0: 0A A8 49 53 4D 4E 8A 52 45 53 30 0A AC 49 53 4D  // ..ISMN.RES0..ISM
  0EF0: 58 8A 52 45 53 30 0A B4 49 53 4C 4E A0 27 93 49  // X.RES0..ISLN.'.I
  0F00: 53 50 44 01 70 49 53 50 41 49 53 4D 4E 72 49 53  // SPD.pISPAISMNrIS
  0F10: 4D 4E 49 53 4C 4E 49 53 4D 58 74 49 53 4D 58 01  // MNISLNISMXtISMX.
  0F20: 49 53 4D 58 A1 13 70 00 49 53 4D 4E 70 00 49 53  // ISMX..p.ISMNp.IS
  0F30: 4D 58 70 00 49 53 4C 4E 8A 52 45 53 30 0A DC 4D  // MXp.ISLN.RES0..M
  0F40: 31 4D 4E 8A 52 45 53 30 0A E0 4D 31 4D 58 8A 52  // 1MN.RES0..M1MX.R
  0F50: 45 53 30 0A E8 4D 31 4C 4E 7B 42 4D 42 44 0C 00  // ES0..M1LN{BMBD..
  0F60: 00 00 FF 4D 31 4D 4E 70 50 43 49 54 4D 31 4D 58  // ...M1MNpPCITM1MX
  0F70: 72 74 4D 31 4D 58 4D 31 4D 4E 00 01 4D 31 4C 4E  // rtM1MXM1MN..M1LN
  0F80: 74 4D 31 4D 58 01 4D 31 4D 58 8A 52 45 53 30 0A  // tM1MX.M1MX.RES0.
  0F90: C2 47 53 4D 4E 8A 52 45 53 30 0A C6 47 53 4D 58  // .GSMN.RES0..GSMX
  0FA0: 8A 52 45 53 30 0A CE 47 53 4C 4E 70 5E 2E 47 46  // .RES0..GSLNp^.GF
  0FB0: 58 30 47 53 54 4D 47 53 4D 4E 79 5E 2E 47 46 58  // X0GSTMGSMNy^.GFX
  0FC0: 30 47 55 4D 41 0A 19 47 53 4C 4E 72 47 53 4D 4E  // 0GUMA..GSLNrGSMN
  0FD0: 47 53 4C 4E 47 53 4D 58 74 47 53 4D 58 01 47 53  // GSLNGSMXtGSMX.GS
  0FE0: 4D 58 A4 52 45 53 30 08 52 45 53 30 11 4D 10 0B  // MX.RES0.RES0.M..
  0FF0: 08 01 88 0D 00 02 0C 00 00 00 00 00 FF 00 00 00  // ................
  1000: 00 01 47 01 70 00 77 00 01 08 47 01 F8 0C F8 0C  // ..G.p.w...G.....
  1010: 01 08 88 0D 00 01 0C 03 00 00 00 00 6F 00 00 00  // ............o...
  1020: 70 00 88 0D 00 01 0C 03 00 00 78 00 F7 0C 00 00  // p.........x.....
  1030: 80 0C 88 0D 00 01 0C 03 00 00 00 0D FF FF 00 00  // ................
  1040: 00 F3 87 17 00 00 0C 03 00 00 00 00 00 00 0A 00  // ................
  1050: FF FF 0B 00 00 00 00 00 00 00 02 00 87 17 00 00  // ................
  1060: 0C 03 00 00 00 00 00 00 0C 00 FF FF 0D 00 00 00  // ................
  1070: 00 00 00 00 02 00 87 17 00 00 0C 03 00 00 00 00  // ................
  1080: 00 00 0E 00 FF FF 0F 00 00 00 00 00 00 00 02 00  // ................
  1090: 87 17 00 00 0C 03 00 00 00 00 00 00 00 7A FF FF  // .............z..
  10A0: 3F 7A 00 00 00 00 00 00 40 00 87 17 00 00 0C 03  // ?z......@.......
  10B0: 00 00 00 00 00 00 00 7C FF FF FF 7F 00 00 00 00  // .......|........
  10C0: 00 00 00 04 87 17 00 00 0C 03 00 00 00 00 00 00  // ................
  10D0: 00 80 FF FF FF DF 00 00 00 00 00 00 00 60 87 17  // .............`..
  10E0: 00 00 0C 03 00 00 00 00 00 00 D4 FE FF 0F D4 FE  // ................
  10F0: 00 00 00 00 00 10 00 00 79 00 08 47 55 49 44 11  // ........y..GUID.
  1100: 13 0A 10 5B 4D DB 33 F7 1F 1C 40 96 57 74 41 C0  // ...[M.3...@.WtA.
  1110: 3D D7 66 08 53 55 50 50 00 08 43 54 52 4C 00 14  // =.f.SUPP..CTRL..
  1120: 43 0B 5F 4F 53 43 0C 70 6B 60 8A 60 00 43 44 57  // C._OSC.pk`.`.CDW
  1130: 31 8A 60 0A 04 43 44 57 32 8A 60 0A 08 43 44 57  // 1.`..CDW2.`..CDW
  1140: 33 A0 42 08 90 93 68 47 55 49 44 4E 45 58 50 70  // 3.B...hGUIDNEXPp
  1150: 43 44 57 32 53 55 50 50 70 43 44 57 33 43 54 52  // CDW2SUPPpCDW3CTR
  1160: 4C A0 26 80 7B 43 44 57 31 01 00 00 A0 0D 7B 43  // L.&.{CDW1.....{C
  1170: 54 52 4C 0A 02 00 4E 48 50 47 A0 0D 7B 43 54 52  // TRL...NHPG..{CTR
  1180: 4C 0A 04 00 4E 50 4D 45 A0 10 92 93 69 01 7D 43  // L...NPME....i.}C
  1190: 44 57 31 0A 08 43 44 57 31 A0 16 92 93 43 44 57  // DW1..CDW1....CDW
  11A0: 33 43 54 52 4C 7D 43 44 57 31 0A 10 43 44 57 31  // 3CTRL}CDW1..CDW1
  11B0: 70 43 54 52 4C 43 44 57 33 70 43 54 52 4C 4F 53  // pCTRLCDW3pCTRLOS
  11C0: 43 43 A4 60 A1 0E 7D 43 44 57 31 0A 04 43 44 57  // CC.`..}CDW1..CDW
  11D0: 31 A4 60 5B 82 40 DB 4C 50 43 42 08 5F 41 44 52  // 1.`[.@.LPCB._ADR
  11E0: 0C 00 00 1F 00 10 4E 57 5C 5F 53 42 5F 5B 80 49  // ......NW\_SB_[.I
  11F0: 4C 42 52 00 49 42 41 53 0A 8C 5B 81 41 04 49 4C  // LBR.IBAS..[.A.IL
  1200: 42 52 00 00 40 04 50 41 52 43 08 50 42 52 43 08  // BR..@.PARC.PBRC.
  1210: 50 43 52 43 08 50 44 52 43 08 50 45 52 43 08 50  // PCRC.PDRC.PERC.P
  1220: 46 52 43 08 50 47 52 43 08 50 48 52 43 08 00 40  // FRC.PGRC.PHRC..@
  1230: 3C 00 03 55 49 33 45 01 55 49 34 45 01 5B 82 42  // <..UI3E.UI4E.[.B
  1240: 0A 4C 4E 4B 41 08 5F 48 49 44 0C 41 D0 0C 0F 08  // .LNKA._HID.A....
  1250: 5F 55 49 44 01 14 11 5F 44 49 53 08 7D 50 41 52  // _UID..._DIS.}PAR
  1260: 43 0A 80 50 41 52 43 14 0B 5F 50 52 53 08 A4 50  // C..PARC.._PRS..P
  1270: 52 53 41 14 38 5F 43 52 53 08 08 52 54 4C 41 11  // RSA.8_CRS..RTLA.
  1280: 09 0A 06 23 00 00 18 79 00 8B 52 54 4C 41 01 49  // ...#...y..RTLA.I
  1290: 52 51 30 70 00 49 52 51 30 79 01 7B 50 41 52 43  // RQ0p.IRQ0y.{PARC
  12A0: 0A 0F 00 49 52 51 30 A4 52 54 4C 41 14 1B 5F 53  // ...IRQ0.RTLA.._S
  12B0: 52 53 09 8B 68 01 49 52 51 30 82 49 52 51 30 60  // RS..h.IRQ0.IRQ0`
  12C0: 76 60 70 60 50 41 52 43 14 18 5F 53 54 41 08 A0  // v`p`PARC.._STA..
  12D0: 0C 7B 50 41 52 43 0A 80 00 A4 0A 09 A1 04 A4 0A  // .{PARC..........
  12E0: 0B 5B 82 43 0A 4C 4E 4B 42 08 5F 48 49 44 0C 41  // .[.C.LNKB._HID.A
  12F0: D0 0C 0F 08 5F 55 49 44 0A 02 14 11 5F 44 49 53  // ...._UID...._DIS
  1300: 08 7D 50 42 52 43 0A 80 50 42 52 43 14 0B 5F 50  // .}PBRC..PBRC.._P
  1310: 52 53 08 A4 50 52 53 42 14 38 5F 43 52 53 08 08  // RS..PRSB.8_CRS..
  1320: 52 54 4C 42 11 09 0A 06 23 00 00 18 79 00 8B 52  // RTLB....#...y..R
  1330: 54 4C 42 01 49 52 51 30 70 00 49 52 51 30 79 01  // TLB.IRQ0p.IRQ0y.
  1340: 7B 50 42 52 43 0A 0F 00 49 52 51 30 A4 52 54 4C  // {PBRC...IRQ0.RTL
  1350: 42 14 1B 5F 53 52 53 09 8B 68 01 49 52 51 30 82  // B.._SRS..h.IRQ0.
  1360: 49 52 51 30 60 76 60 70 60 50 42 52 43 14 18 5F  // IRQ0`v`p`PBRC.._
  1370: 53 54 41 08 A0 0C 7B 50 42 52 43 0A 80 00 A4 0A  // STA...{PBRC.....
  1380: 09 A1 04 A4 0A 0B 5B 82 43 0A 4C 4E 4B 43 08 5F  // ......[.C.LNKC._
  1390: 48 49 44 0C 41 D0 0C 0F 08 5F 55 49 44 0A 03 14  // HID.A...._UID...
  13A0: 11 5F 44 49 53 08 7D 50 43 52 43 0A 80 50 43 52  // ._DIS.}PCRC..PCR
  13B0: 43 14 0B 5F 50 52 53 08 A4 50 52 53 43 14 38 5F  // C.._PRS..PRSC.8_
  13C0: 43 52 53 08 08 52 54 4C 43 11 09 0A 06 23 00 00  // CRS..RTLC....#..
  13D0: 18 79 00 8B 52 54 4C 43 01 49 52 51 30 70 00 49  // .y..RTLC.IRQ0p.I
  13E0: 52 51 30 79 01 7B 50 43 52 43 0A 0F 00 49 52 51  // RQ0y.{PCRC...IRQ
  13F0: 30 A4 52 54 4C 43 14 1B 5F 53 52 53 09 8B 68 01  // 0.RTLC.._SRS..h.
  1400: 49 52 51 30 82 49 52 51 30 60 76 60 70 60 50 43  // IRQ0.IRQ0`v`p`PC
  1410: 52 43 14 18 5F 53 54 41 08 A0 0C 7B 50 43 52 43  // RC.._STA...{PCRC
  1420: 0A 80 00 A4 0A 09 A1 04 A4 0A 0B 5B 82 43 0A 4C  // ...........[.C.L
  1430: 4E 4B 44 08 5F 48 49 44 0C 41 D0 0C 0F 08 5F 55  // NKD._HID.A...._U
  1440: 49 44 0A 04 14 11 5F 44 49 53 08 7D 50 44 52 43  // ID...._DIS.}PDRC
  1450: 0A 80 50 44 52 43 14 0B 5F 50 52 53 08 A4 50 52  // ..PDRC.._PRS..PR
  1460: 53 44 14 38 5F 43 52 53 08 08 52 54 4C 44 11 09  // SD.8_CRS..RTLD..
  1470: 0A 06 23 00 00 18 79 00 8B 52 54 4C 44 01 49 52  // ..#...y..RTLD.IR
  1480: 51 30 70 00 49 52 51 30 79 01 7B 50 44 52 43 0A  // Q0p.IRQ0y.{PDRC.
  1490: 0F 00 49 52 51 30 A4 52 54 4C 44 14 1B 5F 53 52  // ..IRQ0.RTLD.._SR
  14A0: 53 09 8B 68 01 49 52 51 30 82 49 52 51 30 60 76  // S..h.IRQ0.IRQ0`v
  14B0: 60 70 60 50 44 52 43 14 18 5F 53 54 41 08 A0 0C  // `p`PDRC.._STA...
  14C0: 7B 50 44 52 43 0A 80 00 A4 0A 09 A1 04 A4 0A 0B  // {PDRC...........
  14D0: 5B 82 43 0A 4C 4E 4B 45 08 5F 48 49 44 0C 41 D0  // [.C.LNKE._HID.A.
  14E0: 0C 0F 08 5F 55 49 44 0A 05 14 11 5F 44 49 53 08  // ..._UID...._DIS.
  14F0: 7D 50 45 52 43 0A 80 50 45 52 43 14 0B 5F 50 52  // }PERC..PERC.._PR
  1500: 53 08 A4 50 52 53 45 14 38 5F 43 52 53 08 08 52  // S..PRSE.8_CRS..R
  1510: 54 4C 45 11 09 0A 06 23 00 00 18 79 00 8B 52 54  // TLE....#...y..RT
  1520: 4C 45 01 49 52 51 30 70 00 49 52 51 30 79 01 7B  // LE.IRQ0p.IRQ0y.{
  1530: 50 45 52 43 0A 0F 00 49 52 51 30 A4 52 54 4C 45  // PERC...IRQ0.RTLE
  1540: 14 1B 5F 53 52 53 09 8B 68 01 49 52 51 30 82 49  // .._SRS..h.IRQ0.I
  1550: 52 51 30 60 76 60 70 60 50 45 52 43 14 18 5F 53  // RQ0`v`p`PERC.._S
  1560: 54 41 08 A0 0C 7B 50 45 52 43 0A 80 00 A4 0A 09  // TA...{PERC......
  1570: A1 04 A4 0A 0B 5B 82 43 0A 4C 4E 4B 46 08 5F 48  // .....[.C.LNKF._H
  1580: 49 44 0C 41 D0 0C 0F 08 5F 55 49 44 0A 06 14 11  // ID.A...._UID....
  1590: 5F 44 49 53 08 7D 50 46 52 43 0A 80 50 46 52 43  // _DIS.}PFRC..PFRC
  15A0: 14 0B 5F 50 52 53 08 A4 50 52 53 46 14 38 5F 43  // .._PRS..PRSF.8_C
  15B0: 52 53 08 08 52 54 4C 46 11 09 0A 06 23 00 00 18  // RS..RTLF....#...
  15C0: 79 00 8B 52 54 4C 46 01 49 52 51 30 70 00 49 52  // y..RTLF.IRQ0p.IR
  15D0: 51 30 79 01 7B 50 46 52 43 0A 0F 00 49 52 51 30  // Q0y.{PFRC...IRQ0
  15E0: A4 52 54 4C 46 14 1B 5F 53 52 53 09 8B 68 01 49  // .RTLF.._SRS..h.I
  15F0: 52 51 30 82 49 52 51 30 60 76 60 70 60 50 46 52  // RQ0.IRQ0`v`p`PFR
  1600: 43 14 18 5F 53 54 41 08 A0 0C 7B 50 46 52 43 0A  // C.._STA...{PFRC.
  1610: 80 00 A4 0A 09 A1 04 A4 0A 0B 5B 82 43 0A 4C 4E  // ..........[.C.LN
  1620: 4B 47 08 5F 48 49 44 0C 41 D0 0C 0F 08 5F 55 49  // KG._HID.A...._UI
  1630: 44 0A 07 14 11 5F 44 49 53 08 7D 50 47 52 43 0A  // D...._DIS.}PGRC.
  1640: 80 50 47 52 43 14 0B 5F 50 52 53 08 A4 50 52 53  // .PGRC.._PRS..PRS
  1650: 47 14 38 5F 43 52 53 08 08 52 54 4C 47 11 09 0A  // G.8_CRS..RTLG...
  1660: 06 23 00 00 18 79 00 8B 52 54 4C 47 01 49 52 51  // .#...y..RTLG.IRQ
  1670: 30 70 00 49 52 51 30 79 01 7B 50 47 52 43 0A 0F  // 0p.IRQ0y.{PGRC..
  1680: 00 49 52 51 30 A4 52 54 4C 47 14 1B 5F 53 52 53  // .IRQ0.RTLG.._SRS
  1690: 09 8B 68 01 49 52 51 30 82 49 52 51 30 60 76 60  // ..h.IRQ0.IRQ0`v`
  16A0: 70 60 50 47 52 43 14 18 5F 53 54 41 08 A0 0C 7B  // p`PGRC.._STA...{
  16B0: 50 47 52 43 0A 80 00 A4 0A 09 A1 04 A4 0A 0B 5B  // PGRC...........[
  16C0: 82 43 0A 4C 4E 4B 48 08 5F 48 49 44 0C 41 D0 0C  // .C.LNKH._HID.A..
  16D0: 0F 08 5F 55 49 44 0A 08 14 11 5F 44 49 53 08 7D  // .._UID...._DIS.}
  16E0: 50 48 52 43 0A 80 50 48 52 43 14 0B 5F 50 52 53  // PHRC..PHRC.._PRS
  16F0: 08 A4 50 52 53 48 14 38 5F 43 52 53 08 08 52 54  // ..PRSH.8_CRS..RT
  1700: 4C 48 11 09 0A 06 23 00 00 18 79 00 8B 52 54 4C  // LH....#...y..RTL
  1710: 48 01 49 52 51 30 70 00 49 52 51 30 79 01 7B 50  // H.IRQ0p.IRQ0y.{P
  1720: 48 52 43 0A 0F 00 49 52 51 30 A4 52 54 4C 48 14  // HRC...IRQ0.RTLH.
  1730: 1B 5F 53 52 53 09 8B 68 01 49 52 51 30 82 49 52  // ._SRS..h.IRQ0.IR
  1740: 51 30 60 76 60 70 60 50 48 52 43 14 18 5F 53 54  // Q0`v`p`PHRC.._ST
  1750: 41 08 A0 0C 7B 50 48 52 43 0A 80 00 A4 0A 09 A1  // A...{PHRC.......
  1760: 04 A4 0A 0B 5B 80 4C 50 43 30 02 00 0A C0 5B 81  // ....[.LPC0....[.
  1770: 18 4C 50 43 30 00 00 40 04 53 52 49 44 08 00 48  // .LPC0..@.SRID..H
  1780: 3B 43 31 45 4E 01 00 1F 5B 82 26 46 57 48 44 08  // ;C1EN...[.&FWHD.
  1790: 5F 48 49 44 0C 25 D4 08 00 08 5F 43 52 53 11 11  // _HID.%...._CRS..
  17A0: 0A 0E 86 09 00 00 00 00 00 FF 00 00 00 01 79 00  // ..............y.
  17B0: 5B 82 45 0A 49 50 49 43 08 5F 48 49 44 0B 41 D0  // [.E.IPIC._HID.A.
  17C0: 08 5F 43 52 53 11 41 09 0A 8D 47 01 20 00 20 00  // ._CRS.A...G. . .
  17D0: 01 02 47 01 24 00 24 00 01 02 47 01 28 00 28 00  // ..G.$.$...G.(.(.
  17E0: 01 02 47 01 2C 00 2C 00 01 02 47 01 30 00 30 00  // ..G.,.,...G.0.0.
  17F0: 01 02 47 01 34 00 34 00 01 02 47 01 38 00 38 00  // ..G.4.4...G.8.8.
  1800: 01 02 47 01 3C 00 3C 00 01 02 47 01 A0 00 A0 00  // ..G.<.<...G.....
  1810: 01 02 47 01 A4 00 A4 00 01 02 47 01 A8 00 A8 00  // ..G.......G.....
  1820: 01 02 47 01 AC 00 AC 00 01 02 47 01 B0 00 B0 00  // ..G.......G.....
  1830: 01 02 47 01 B4 00 B4 00 01 02 47 01 B8 00 B8 00  // ..G.......G.....
  1840: 01 02 47 01 BC 00 BC 00 01 02 47 01 D0 04 D0 04  // ..G.......G.....
  1850: 01 02 22 04 00 79 00 5B 82 4B 09 4C 44 52 43 08  // .."..y.[.K.LDRC.
  1860: 5F 48 49 44 0C 41 D0 0C 02 08 5F 55 49 44 0A 02  // _HID.A...._UID..
  1870: 08 5F 43 52 53 11 4E 07 0A 7A 47 01 2E 00 2E 00  // ._CRS.N..zG.....
  1880: 01 02 47 01 4E 00 4E 00 01 02 47 01 61 00 61 00  // ..G.N.N...G.a.a.
  1890: 01 01 47 01 63 00 63 00 01 01 47 01 65 00 65 00  // ..G.c.c...G.e.e.
  18A0: 01 01 47 01 67 00 67 00 01 01 47 01 70 00 70 00  // ..G.g.g...G.p.p.
  18B0: 01 01 47 01 80 00 80 00 01 10 47 01 92 00 92 00  // ..G.......G.....
  18C0: 01 01 47 01 B2 00 B2 00 01 02 47 01 80 06 80 06  // ..G.......G.....
  18D0: 01 20 47 01 00 04 00 04 01 80 47 01 00 05 00 05  // . G.......G.....
  18E0: 01 FF 47 01 00 06 00 06 01 20 47 01 4E 16 4E 16  // ..G...... G.N.N.
  18F0: 01 02 79 00 5B 82 2D 54 49 4D 52 08 5F 48 49 44  // ..y.[.-TIMR._HID
  1900: 0C 41 D0 01 00 08 5F 43 52 53 11 18 0A 15 47 01  // .A...._CRS....G.
  1910: 40 00 40 00 01 04 47 01 50 00 50 00 10 04 22 01  // @.@...G.P.P...".
  1920: 00 79 00 5B 82 47 0A 49 55 52 33 08 5F 48 49 44  // .y.[.G.IUR3._HID
  1930: 0C 41 D0 05 01 08 5F 55 49 44 01 14 2D 5F 53 54  // .A...._UID..-_ST
  1940: 41 08 A0 24 93 55 53 45 4C 00 A0 1C 93 50 55 31  // A..$.USEL....PU1
  1950: 45 01 70 01 55 49 33 45 70 01 55 49 34 45 70 01  // E.p.UI3Ep.UI4Ep.
  1960: 43 31 45 4E A4 0A 0F A4 00 14 18 5F 44 49 53 08  // C1EN......._DIS.
  1970: 70 00 55 49 33 45 70 00 55 49 34 45 70 00 43 31  // p.UI3Ep.UI4Ep.C1
  1980: 45 4E 14 49 04 5F 43 52 53 08 08 42 55 46 30 11  // EN.I._CRS..BUF0.
  1990: 10 0A 0D 47 01 F8 03 F8 03 01 08 22 08 00 79 00  // ...G......."..y.
  19A0: 08 42 55 46 31 11 10 0A 0D 47 01 F8 03 F8 03 01  // .BUF1....G......
  19B0: 08 22 10 00 79 00 A0 0E 92 94 53 52 49 44 0A 04  // ."..y.....SRID..
  19C0: A4 42 55 46 30 A1 06 A4 42 55 46 31 5B 82 4C 4D  // .BUF0...BUF1[.LM
  19D0: 57 50 43 4E 08 5F 48 49 44 0C 41 D0 0A 05 08 5F  // WPCN._HID.A...._
  19E0: 55 49 44 0A 03 14 11 5F 53 54 41 08 A0 08 57 33  // UID...._STA...W3
  19F0: 38 31 A4 0A 0F A4 00 5B 80 57 50 43 4E 01 0A 2E  // 81.....[.WPCN...
  1A00: 0A 02 5B 81 10 57 50 43 4E 11 49 4E 44 58 08 44  // ..[..WPCN.INDX.D
  1A10: 41 54 41 08 5B 86 46 08 49 4E 44 58 44 41 54 41  // ATA.[.F.INDXDATA
  1A20: 11 00 38 57 52 30 37 08 00 40 0C 57 52 32 30 08  // ..8WR07..@.WR20.
  1A30: 57 52 32 31 08 57 52 32 32 08 57 52 32 33 08 57  // WR21.WR22.WR23.W
  1A40: 52 32 34 08 57 52 32 35 08 57 52 32 36 08 57 52  // R24.WR25.WR26.WR
  1A50: 32 37 08 57 52 32 38 08 57 52 32 39 08 57 52 32  // 27.WR28.WR29.WR2
  1A60: 41 08 00 28 57 52 33 30 08 00 48 17 57 52 36 30  // A..(WR30..H.WR60
  1A70: 08 57 52 36 31 08 00 40 07 57 52 37 30 08 57 52  // .WR61..@.WR70.WR
  1A80: 37 31 08 00 10 57 52 37 34 08 57 52 37 35 08 00  // 71...WR74.WR75..
  1A90: 40 3D 57 52 46 30 08 57 52 46 31 08 5B 82 45 20  // @=WRF0.WRF1.[.E 
  1AA0: 55 41 52 35 08 5F 48 49 44 0C 41 D0 05 01 08 5F  // UAR5._HID.A...._
  1AB0: 55 49 44 0A 03 14 21 5F 53 54 41 08 A0 18 57 33  // UID...!_STA...W3
  1AC0: 38 31 70 0A 03 57 52 30 37 A0 08 57 52 33 30 A4  // 81p..WR07..WR30.
  1AD0: 0A 0F A4 0A 0D A4 00 14 13 5F 44 49 53 08 70 0A  // ........._DIS.p.
  1AE0: 03 57 52 30 37 70 00 57 52 33 30 14 47 0B 5F 43  // .WR07p.WR30.G._C
  1AF0: 52 53 08 08 42 55 46 30 11 10 0A 0D 47 01 F8 03  // RS..BUF0....G...
  1B00: F8 03 01 08 22 10 00 79 00 70 0A 03 57 52 30 37  // ...."..y.p..WR07
  1B10: A0 4D 08 57 33 38 31 8C 42 55 46 30 0A 02 49 4F  // .M.W381.BUF0..IO
  1B20: 4C 30 8C 42 55 46 30 0A 03 49 4F 48 30 8C 42 55  // L0.BUF0..IOH0.BU
  1B30: 46 30 0A 04 49 4F 4C 31 8C 42 55 46 30 0A 05 49  // F0..IOL1.BUF0..I
  1B40: 4F 48 31 8C 42 55 46 30 0A 07 4C 45 4E 30 8B 42  // OH1.BUF0..LEN0.B
  1B50: 55 46 30 0A 09 49 52 51 57 70 57 52 36 30 49 4F  // UF0..IRQWpWR60IO
  1B60: 48 30 70 57 52 36 31 49 4F 4C 30 70 57 52 36 30  // H0pWR61IOL0pWR60
  1B70: 49 4F 48 31 70 57 52 36 31 49 4F 4C 31 70 0A 08  // IOH1pWR61IOL1p..
  1B80: 4C 45 4E 30 7B 57 52 37 30 0A 0F 60 A0 09 60 79  // LEN0{WR70..`..`y
  1B90: 01 60 49 52 51 57 A1 07 70 00 49 52 51 57 A4 42  // .`IRQW..p.IRQW.B
  1BA0: 55 46 30 08 5F 50 52 53 11 48 04 0A 44 31 08 47  // UF0._PRS.H..D1.G
  1BB0: 01 F8 03 F8 03 01 08 22 10 00 31 08 47 01 F8 03  // ......."..1.G...
  1BC0: F8 03 01 08 22 F0 1C 31 08 47 01 F8 02 F8 02 01  // ...."..1.G......
  1BD0: 08 22 F0 1C 31 08 47 01 E8 03 E8 03 01 08 22 F0  // ."..1.G.......".
  1BE0: 1C 31 08 47 01 E8 02 E8 02 01 08 22 F0 1C 38 79  // .1.G......."..8y
  1BF0: 00 14 4B 05 5F 53 52 53 09 8C 68 0A 02 49 4F 4C  // ..K._SRS..h..IOL
  1C00: 4F 8C 68 0A 03 49 4F 48 49 8B 68 0A 09 49 52 51  // O.h..IOHI.h..IRQ
  1C10: 57 70 0A 03 57 52 30 37 70 00 57 52 33 30 70 49  // Wp..WR07p.WR30pI
  1C20: 4F 4C 4F 57 52 36 31 70 49 4F 48 49 57 52 36 30  // OLOWR61pIOHIWR60
  1C30: 82 49 52 51 57 60 A0 0A 92 93 49 52 51 57 00 76  // .IRQW`....IRQW.v
  1C40: 60 70 60 57 52 37 30 70 01 57 52 33 30 08 5F 50  // `p`WR70p.WR30._P
  1C50: 52 57 12 06 02 0A 19 0A 04 14 21 5F 50 53 57 01  // RW........!_PSW.
  1C60: 70 57 52 37 30 60 A0 0A 68 7D 60 0A 10 57 52 37  // pWR70`..h}`..WR7
  1C70: 30 A1 09 7B 60 0A 0F 57 52 37 30 14 13 5F 50 53  // 0..{`..WR70.._PS
  1C80: 30 08 70 0A 03 57 52 30 37 70 01 57 52 33 30 14  // 0.p..WR07p.WR30.
  1C90: 13 5F 50 53 33 08 70 0A 03 57 52 30 37 70 00 57  // ._PS3.p..WR07p.W
  1CA0: 52 33 30 5B 82 45 20 55 41 52 38 08 5F 48 49 44  // R30[.E UAR8._HID
  1CB0: 0C 41 D0 05 01 08 5F 55 49 44 0A 04 14 21 5F 53  // .A...._UID...!_S
  1CC0: 54 41 08 A0 18 57 33 38 31 70 0A 02 57 52 30 37  // TA...W381p..WR07
  1CD0: A0 08 57 52 33 30 A4 0A 0F A4 0A 0D A4 00 14 13  // ..WR30..........
  1CE0: 5F 44 49 53 08 70 0A 02 57 52 30 37 70 00 57 52  // _DIS.p..WR07p.WR
  1CF0: 33 30 14 47 0B 5F 43 52 53 08 08 42 55 46 30 11  // 30.G._CRS..BUF0.
  1D00: 10 0A 0D 47 01 F8 02 F8 02 01 08 22 08 00 79 00  // ...G......."..y.
  1D10: 70 0A 02 57 52 30 37 A0 4D 08 57 33 38 31 8C 42  // p..WR07.M.W381.B
  1D20: 55 46 30 0A 02 49 4F 4C 30 8C 42 55 46 30 0A 03  // UF0..IOL0.BUF0..
  1D30: 49 4F 48 30 8C 42 55 46 30 0A 04 49 4F 4C 31 8C  // IOH0.BUF0..IOL1.
  1D40: 42 55 46 30 0A 05 49 4F 48 31 8C 42 55 46 30 0A  // BUF0..IOH1.BUF0.
  1D50: 07 4C 45 4E 30 8B 42 55 46 30 0A 09 49 52 51 57  // .LEN0.BUF0..IRQW
  1D60: 70 57 52 36 30 49 4F 48 30 70 57 52 36 31 49 4F  // pWR60IOH0pWR61IO
  1D70: 4C 30 70 57 52 36 30 49 4F 48 31 70 57 52 36 31  // L0pWR60IOH1pWR61
  1D80: 49 4F 4C 31 70 0A 08 4C 45 4E 30 7B 57 52 37 30  // IOL1p..LEN0{WR70
  1D90: 0A 0F 60 A0 09 60 79 01 60 49 52 51 57 A1 07 70  // ..`..`y.`IRQW..p
  1DA0: 00 49 52 51 57 A4 42 55 46 30 08 5F 50 52 53 11  // .IRQW.BUF0._PRS.
  1DB0: 48 04 0A 44 31 08 47 01 F8 02 F8 02 01 08 22 08  // H..D1.G.......".
  1DC0: 00 31 08 47 01 F8 03 F8 03 01 08 22 F0 1C 31 08  // .1.G......."..1.
  1DD0: 47 01 F8 02 F8 02 01 08 22 F0 1C 31 08 47 01 E8  // G......."..1.G..
  1DE0: 03 E8 03 01 08 22 F0 1C 31 08 47 01 E8 02 E8 02  // ....."..1.G.....
  1DF0: 01 08 22 F0 1C 38 79 00 14 4B 05 5F 53 52 53 09  // .."..8y..K._SRS.
  1E00: 8C 68 0A 02 49 4F 4C 4F 8C 68 0A 03 49 4F 48 49  // .h..IOLO.h..IOHI
  1E10: 8B 68 0A 09 49 52 51 57 70 0A 02 57 52 30 37 70  // .h..IRQWp..WR07p
  1E20: 00 57 52 33 30 70 49 4F 4C 4F 57 52 36 31 70 49  // .WR30pIOLOWR61pI
  1E30: 4F 48 49 57 52 36 30 82 49 52 51 57 60 A0 0A 92  // OHIWR60.IRQW`...
  1E40: 93 49 52 51 57 00 76 60 70 60 57 52 37 30 70 01  // .IRQW.v`p`WR70p.
  1E50: 57 52 33 30 08 5F 50 52 57 12 06 02 0A 19 0A 04  // WR30._PRW.......
  1E60: 14 21 5F 50 53 57 01 70 57 52 37 30 60 A0 0A 68  // .!_PSW.pWR70`..h
  1E70: 7D 60 0A 10 57 52 37 30 A1 09 7B 60 0A 0F 57 52  // }`..WR70..{`..WR
  1E80: 37 30 14 13 5F 50 53 30 08 70 0A 02 57 52 30 37  // 70.._PS0.p..WR07
  1E90: 70 01 57 52 33 30 14 13 5F 50 53 33 08 70 0A 02  // p.WR30.._PS3.p..
  1EA0: 57 52 30 37 70 00 57 52 33 30 5B 80 50 4B 42 53  // WR07p.WR30[.PKBS
  1EB0: 01 0A 60 0A 05 5B 81 16 50 4B 42 53 11 50 4B 42  // ..`..[..PKBS.PKB
  1EC0: 44 08 00 08 00 08 00 08 50 4B 42 43 08 5B 82 46  // D.......PKBC.[.F
  1ED0: 06 50 53 32 4B 08 5F 48 49 44 0C 41 D0 03 03 14  // .PS2K._HID.A....
  1EE0: 1D 5F 53 54 41 00 A0 13 7B 93 50 4B 42 44 0A FF  // ._STA...{.PKBD..
  1EF0: 93 50 4B 42 43 0A FF 00 A4 00 A4 0A 0F 08 5F 43  // .PKBC........._C
  1F00: 52 53 11 19 0A 16 47 01 60 00 60 00 01 01 47 01  // RS....G.`.`...G.
  1F10: 64 00 64 00 01 01 23 02 00 01 79 00 08 5F 50 52  // d.d...#...y.._PR
  1F20: 53 11 13 0A 10 31 00 4B 60 00 01 4B 64 00 01 22  // S....1.K`..Kd.."
  1F30: 02 00 38 79 00 5B 82 4E 04 50 53 32 4D 08 5F 48  // ..8y.[.N.PS2M._H
  1F40: 49 44 0C 41 D0 0F 13 14 1D 5F 53 54 41 00 A0 13  // ID.A....._STA...
  1F50: 7B 93 50 4B 42 44 0A FF 93 50 4B 42 43 0A FF 00  // {.PKBD...PKBC...
  1F60: A4 00 A4 0A 0F 08 5F 43 52 53 11 09 0A 06 23 00  // ......_CRS....#.
  1F70: 10 01 79 00 08 5F 50 52 53 11 0B 0A 08 31 00 22  // ..y.._PRS....1."
  1F80: 00 10 38 79 00 10 45 14 5C 00 5B 80 50 4D 49 4F  // ..8y..E.\.[.PMIO
  1F90: 01 50 4D 42 53 0A 46 5B 81 21 50 4D 49 4F 01 00  // .PMBS.F[.!PMIO..
  1FA0: 08 50 57 42 53 01 00 47 0F 00 0D 50 4D 45 42 01  // .PWBS..G...PMEB.
  1FB0: 00 42 10 00 01 47 50 45 43 01 5B 81 15 50 4D 49  // .B...GPEC.[..PMI
  1FC0: 4F 41 00 40 10 00 04 50 53 43 49 01 53 43 49 53  // OA.@...PSCI.SCIS
  1FD0: 01 5B 80 50 4D 43 52 00 50 46 44 52 0A 04 5B 81  // .[.PMCR.PFDR..[.
  1FE0: 4D 08 50 4D 43 52 13 4C 31 30 44 01 4C 31 31 44  // M.PMCR.L10D.L11D
  1FF0: 01 4C 31 32 44 01 4C 31 33 44 01 4C 31 34 44 01  // .L12D.L13D.L14D.
  2000: 4C 31 35 44 01 00 02 53 44 31 44 01 53 44 32 44  // L15D...SD1D.SD2D
  2010: 01 53 44 33 44 01 48 53 49 44 01 00 01 4C 50 45  // .SD3D.HSID...LPE
  2020: 44 01 4F 54 47 44 01 00 01 00 01 00 01 00 01 00  // D.OTGD..........
  2030: 01 52 50 31 44 01 52 50 32 44 01 52 50 33 44 01  // .RP1D.RP2D.RP3D.
  2040: 52 50 34 44 01 4C 32 30 44 01 4C 32 31 44 01 4C  // RP4D.L20D.L21D.L
  2050: 32 32 44 01 4C 32 33 44 01 4C 32 34 44 01 4C 32  // 22D.L23D.L24D.L2
  2060: 35 44 01 4C 32 36 44 01 4C 32 37 44 01 5B 80 43  // 5D.L26D.L27D.[.C
  2070: 4C 4B 43 00 50 43 4C 4B 0A 18 5B 81 4F 04 43 4C  // LKC.PCLK..[.O.CL
  2080: 4B 43 13 43 4B 43 30 02 43 4B 46 30 01 00 1D 43  // KC.CKC0.CKF0...C
  2090: 4B 43 31 02 43 4B 46 31 01 00 1D 43 4B 43 32 02  // KC1.CKF1...CKC2.
  20A0: 43 4B 46 32 01 00 1D 43 4B 43 33 02 43 4B 46 33  // CKF2...CKC3.CKF3
  20B0: 01 00 1D 43 4B 43 34 02 43 4B 46 34 01 00 1D 43  // ...CKC4.CKF4...C
  20C0: 4B 43 35 02 43 4B 46 35 01 00 1D 10 4A 79 5F 53  // KC5.CKF5....Jy_S
  20D0: 42 5F 5B 82 45 57 4C 50 45 41 08 5F 41 44 52 00  // B_[.EWLPEA._ADR.
  20E0: 08 5F 48 49 44 0D 38 30 38 36 30 46 32 38 00 08  // ._HID.80860F28..
  20F0: 5F 43 49 44 0D 38 30 38 36 30 46 32 38 00 08 5F  // _CID.80860F28.._
  2100: 44 44 4E 0D 49 6E 74 65 6C 28 52 29 20 4C 6F 77  // DDN.Intel(R) Low
  2110: 20 50 6F 77 65 72 20 41 75 64 69 6F 20 43 6F 6E  //  Power Audio Con
  2120: 74 72 6F 6C 6C 65 72 20 2D 20 38 30 38 36 30 46  // troller - 80860F
  2130: 32 38 00 08 5F 53 55 42 0D 38 30 38 36 37 32 37  // 28.._SUB.8086727
  2140: 30 00 08 5F 55 49 44 01 08 5F 44 45 50 12 0C 01  // 0.._UID.._DEP...
  2150: 5E 2E 49 32 43 32 52 54 45 4B 08 5F 50 52 30 12  // ^.I2C2RTEK._PR0.
  2160: 06 01 50 4C 50 45 14 1B 5F 53 54 41 00 A0 12 90  // ..PLPE.._STA....
  2170: 93 4C 50 45 45 0A 02 93 4C 50 45 44 00 A4 0A 0F  // .LPEE...LPED....
  2180: A4 00 14 06 5F 44 49 53 00 08 52 42 55 46 11 32  // ...._DIS..RBUF.2
  2190: 0A 2F 86 09 00 01 78 56 34 12 00 00 20 00 86 09  // ./....xV4... ...
  21A0: 00 01 00 00 83 FE 00 10 00 00 86 09 00 01 AA 55  // ...............U
  21B0: AA 55 00 00 20 00 89 06 00 05 01 1D 00 00 00 79  // .U.. ..........y
  21C0: 00 14 48 04 5F 43 52 53 00 8A 52 42 55 46 0A 04  // ..H._CRS..RBUF..
  21D0: 42 30 42 41 70 4C 50 45 30 42 30 42 41 8A 52 42  // B0BApLPE0B0BA.RB
  21E0: 55 46 0A 10 42 31 42 41 70 4C 50 45 31 42 31 42  // UF..B1BApLPE1B1B
  21F0: 41 8A 52 42 55 46 0A 1C 42 32 42 41 70 4C 50 45  // A.RBUF..B2BApLPE
  2200: 32 42 32 42 41 A4 52 42 55 46 5B 80 4B 45 59 53  // 2B2BA.RBUF[.KEYS
  2210: 00 4C 50 45 31 0B 00 01 5B 81 0E 4B 45 59 53 43  // .LPE1...[..KEYSC
  2220: 00 40 42 50 53 41 54 20 5B 84 45 04 50 4C 50 45  // .@BPSAT [.E.PLPE
  2230: 05 00 00 14 08 5F 53 54 41 00 A4 01 14 1A 5F 4F  // ....._STA....._O
  2240: 4E 5F 00 7B 50 53 41 54 0C FC FF FF FF 50 53 41  // N_.{PSAT.....PSA
  2250: 54 70 50 53 41 54 60 14 17 5F 4F 46 46 00 7D 50  // TpPSAT`.._OFF.}P
  2260: 53 41 54 0A 03 50 53 41 54 70 50 53 41 54 60 5B  // SAT..PSATpPSAT`[
  2270: 82 45 09 41 44 4D 41 08 5F 41 44 52 00 08 5F 48  // .E.ADMA._ADR.._H
  2280: 49 44 0D 41 44 4D 41 30 46 32 38 00 08 5F 43 49  // ID.ADMA0F28.._CI
  2290: 44 0D 41 44 4D 41 30 46 32 38 00 08 5F 44 44 4E  // D.ADMA0F28.._DDN
  22A0: 0D 49 6E 74 65 6C 28 52 29 20 41 75 64 69 6F 20  // .Intel(R) Audio 
  22B0: 20 44 4D 41 30 20 2D 20 44 4D 41 30 46 32 38 00  //  DMA0 - DMA0F28.
  22C0: 08 5F 55 49 44 01 14 3F 5F 43 52 53 00 08 52 42  // ._UID..?_CRS..RB
  22D0: 55 46 11 1A 0A 17 86 09 00 01 00 80 49 DF 00 10  // UF..........I...
  22E0: 00 00 89 06 00 05 01 18 00 00 00 79 00 8A 52 42  // ...........y..RB
  22F0: 55 46 0A 04 42 30 42 41 70 4C 50 45 30 42 30 42  // UF..B0BApLPE0B0B
  2300: 41 A4 52 42 55 46 5B 82 48 1B 53 53 50 31 08 5F  // A.RBUF[.H.SSP1._
  2310: 41 44 52 00 08 5F 48 49 44 0D 53 53 50 58 30 30  // ADR.._HID.SSPX00
  2320: 30 30 00 08 5F 43 49 44 0D 53 53 50 58 30 30 30  // 00.._CID.SSPX000
  2330: 30 00 08 5F 44 44 4E 0D 49 6E 74 65 6C 28 52 29  // 0.._DDN.Intel(R)
  2340: 20 53 53 50 20 44 65 76 69 63 65 00 08 5F 55 49  //  SSP Device.._UI
  2350: 44 01 14 4E 04 5F 53 54 41 08 08 5F 54 5F 30 00  // D..N._STA.._T_0.
  2360: A0 3E 93 4F 53 53 4C 01 A2 36 01 70 99 42 44 49  // .>.OSSL..6.p.BDI
  2370: 44 00 5F 54 5F 30 A0 0B 93 5F 54 5F 30 0A 03 A4  // D._T_0..._T_0...
  2380: 0A 0F A1 1B A0 0B 93 5F 54 5F 30 0A 04 A4 0A 0F  // ......._T_0.....
  2390: A1 0D A0 0B 93 5F 54 5F 30 0A 02 A4 0A 0F A5 A4  // ....._T_0.......
  23A0: 00 14 45 04 5F 43 52 53 00 08 52 42 55 46 11 1A  // ..E._CRS..RBUF..
  23B0: 0A 17 86 09 00 01 00 10 4A DF 00 10 00 00 89 06  // ........J.......
  23C0: 00 05 01 1B 00 00 00 79 00 8A 52 42 55 46 0A 04  // .......y..RBUF..
  23D0: 42 30 42 41 72 4C 50 45 30 0C 00 10 0A 00 42 30  // B0BArLPE0.....B0
  23E0: 42 41 A4 52 42 55 46 14 48 0D 5F 44 53 4D 0C 08  // BA.RBUF.H._DSM..
  23F0: 5F 54 5F 30 00 A0 1F 93 68 11 13 0A 10 26 3F 6A  // _T_0....h....&?j
  2400: 88 0C 60 01 44 B7 B1 01 E9 C2 E7 E7 7E A4 0D 42  // ..`.D.......~..B
  2410: 4C 55 45 54 00 A0 19 93 68 11 13 0A 10 3E F8 D3  // LUET....h....>..
  2420: 30 E1 2E F0 4B 86 E9 F6 9D ED 28 87 EE A4 01 A0  // 0...K.....(.....
  2430: 1D 93 68 11 13 0A 10 00 14 8B 20 C8 F7 25 43 AB  // ..h....... ..%C.
  2440: 32 53 CD 79 B7 D0 A6 A4 0C 00 10 2A FF A0 4A 06  // 2S.y.......*..J.
  2450: 93 68 11 13 0A 10 60 7C E3 E6 8B E7 BD 4F BD 26  // .h....`|.....O.&
  2460: 5B D3 66 7A 6C 9A A2 49 04 01 70 99 69 00 5F 54  // [.fzl..I..p.i._T
  2470: 5F 30 A0 12 93 5F 54 5F 30 0A 08 A4 11 08 0A 05  // _0..._T_0.......
  2480: 00 01 00 00 01 A1 29 A0 12 93 5F 54 5F 30 0A 10  // ......)..._T_0..
  2490: A4 11 08 0A 05 06 02 00 0E 10 A1 14 A0 12 93 5F  // ..............._
  24A0: 54 5F 30 0A 30 A4 11 08 0A 05 06 02 00 0E 10 A5  // T_0.0...........
  24B0: A4 0D 45 52 52 2D 54 00 A4 0D 45 52 52 2D 4D 00  // ..ERR-T...ERR-M.
  24C0: 5B 82 47 18 53 53 50 32 08 5F 41 44 52 00 08 5F  // [.G.SSP2._ADR.._
  24D0: 48 49 44 0D 53 53 50 58 30 30 30 30 00 08 5F 43  // HID.SSPX0000.._C
  24E0: 49 44 0D 53 53 50 58 30 30 30 30 00 08 5F 44 44  // ID.SSPX0000.._DD
  24F0: 4E 0D 49 6E 74 65 6C 28 52 29 20 53 53 50 20 44  // N.Intel(R) SSP D
  2500: 65 76 69 63 65 00 08 5F 55 49 44 01 14 1C 5F 53  // evice.._UID..._S
  2510: 54 41 00 A0 13 93 4F 53 53 4C 01 A0 0B 93 42 44  // TA....OSSL....BD
  2520: 49 44 0A 03 A4 0A 0F A4 00 14 45 04 5F 43 52 53  // ID........E._CRS
  2530: 00 08 52 42 55 46 11 1A 0A 17 86 09 00 01 00 20  // ..RBUF......... 
  2540: 4A DF 00 10 00 00 89 06 00 05 01 1C 00 00 00 79  // J..............y
  2550: 00 8A 52 42 55 46 0A 04 42 30 42 41 72 4C 50 45  // ..RBUF..B0BArLPE
  2560: 30 0C 00 20 0A 00 42 30 42 41 A4 52 42 55 46 14  // 0.. ..B0BA.RBUF.
  2570: 49 0D 5F 44 53 4D 0C 08 5F 54 5F 30 00 A0 1F 93  // I._DSM.._T_0....
  2580: 68 11 13 0A 10 26 3F 6A 88 0C 60 01 44 B7 B1 01  // h....&?j..`.D...
  2590: E9 C2 E7 E7 7E A4 0D 4D 4F 44 45 4D 00 A0 1A 93  // ....~..MODEM....
  25A0: 68 11 13 0A 10 3E F8 D3 30 E1 2E F0 4B 86 E9 F6  // h....>..0...K...
  25B0: 9D ED 28 87 EE A4 0A 02 A0 1D 93 68 11 13 0A 10  // ..(........h....
  25C0: 00 14 8B 20 C8 F7 25 43 AB 32 53 CD 79 B7 D0 A6  // ... ..%C.2S.y...
  25D0: A4 0C 00 20 2A FF A0 4A 06 93 68 11 13 0A 10 60  // ... *..J..h....`
  25E0: 7C E3 E6 8B E7 BD 4F BD 26 5B D3 66 7A 6C 9A A2  // |.....O.&[.fzl..
  25F0: 49 04 01 70 99 69 00 5F 54 5F 30 A0 12 93 5F 54  // I..p.i._T_0..._T
  2600: 5F 30 0A 08 A4 11 08 0A 05 00 01 00 00 01 A1 29  // _0.............)
  2610: A0 12 93 5F 54 5F 30 0A 10 A4 11 08 0A 05 06 02  // ..._T_0.........
  2620: 00 0E 10 A1 14 A0 12 93 5F 54 5F 30 0A 30 A4 11  // ........_T_0.0..
  2630: 08 0A 05 06 02 00 0E 10 A5 A4 0D 45 52 52 2D 54  // ...........ERR-T
  2640: 00 A4 0D 45 52 52 2D 4D 00 5B 82 48 0A 56 49 42  // ...ERR-M.[.H.VIB
  2650: 52 08 5F 41 44 52 00 08 5F 48 49 44 0D 56 49 42  // R._ADR.._HID.VIB
  2660: 38 36 30 31 00 08 5F 43 49 44 0D 56 49 42 38 36  // 8601.._CID.VIB86
  2670: 30 31 00 08 5F 44 44 4E 0D 49 6E 74 65 6C 28 52  // 01.._DDN.Intel(R
  2680: 29 20 56 69 62 72 61 20 44 72 69 76 65 72 20 2D  // ) Vibra Driver -
  2690: 20 56 49 42 38 36 30 31 00 08 5F 55 49 44 01 14  //  VIB8601.._UID..
  26A0: 3E 5F 43 52 53 00 08 52 42 55 46 11 2D 0A 2A 8C  // >_CRS..RBUF.-.*.
  26B0: 25 00 01 01 01 00 02 00 00 00 00 00 00 17 00 00  // %...............
  26C0: 19 00 28 00 00 00 04 00 5C 5F 53 42 2E 49 32 43  // ..(.....\_SB.I2C
  26D0: 37 2E 50 4D 49 43 00 79 00 A4 52 42 55 46 14 14  // 7.PMIC.y..RBUF..
  26E0: 5F 53 54 41 00 A0 0B 93 42 44 49 44 0A 03 A4 0A  // _STA....BDID....
  26F0: 0F A4 00 5B 82 47 0F 41 4D 43 52 08 5F 41 44 52  // ...[.G.AMCR._ADR
  2700: 00 08 5F 48 49 44 0D 41 4D 43 52 30 46 32 38 00  // .._HID.AMCR0F28.
  2710: 08 5F 43 49 44 0D 41 4D 43 52 30 46 32 38 00 08  // ._CID.AMCR0F28..
  2720: 5F 44 44 4E 0D 49 6E 74 65 6C 28 52 29 20 41 75  // _DDN.Intel(R) Au
  2730: 64 69 6F 20 4D 61 63 68 69 6E 65 20 44 72 69 76  // dio Machine Driv
  2740: 65 72 20 2D 20 41 4D 43 52 30 46 32 38 00 08 5F  // er - AMCR0F28.._
  2750: 55 49 44 01 08 5F 44 45 50 12 10 02 47 50 4F 32  // UID.._DEP...GPO2
  2760: 5E 2E 49 32 43 32 52 54 45 4B 14 41 08 5F 43 52  // ^.I2C2RTEK.A._CR
  2770: 53 00 08 52 42 55 46 11 4F 06 0A 6B 8C 20 00 01  // S..RBUF.O..k. ..
  2780: 00 01 00 11 00 03 00 00 00 00 17 00 00 19 00 23  // ...............#
  2790: 00 00 00 04 00 5C 5F 53 42 2E 47 50 4F 32 00 8C  // .....\_SB.GPO2..
  27A0: 20 00 01 00 01 00 11 00 03 00 00 00 00 17 00 00  //  ...............
  27B0: 19 00 23 00 00 00 1B 00 5C 5F 53 42 2E 47 50 4F  // ..#.....\_SB.GPO
  27C0: 32 00 8C 20 00 01 00 01 00 11 00 03 00 00 00 00  // 2.. ............
  27D0: 17 00 00 19 00 23 00 00 00 1C 00 5C 5F 53 42 2E  // .....#.....\_SB.
  27E0: 47 50 4F 32 00 79 00 A4 52 42 55 46 5B 82 48 07  // GPO2.y..RBUF[.H.
  27F0: 48 41 44 5F 08 5F 41 44 52 00 08 5F 48 49 44 0D  // HAD_._ADR.._HID.
  2800: 48 41 44 30 46 32 38 00 08 5F 43 49 44 0D 48 41  // HAD0F28.._CID.HA
  2810: 44 30 46 32 38 00 08 5F 44 44 4E 0D 49 6E 74 65  // D0F28.._DDN.Inte
  2820: 6C 28 52 29 20 48 44 4D 49 20 41 75 64 69 6F 20  // l(R) HDMI Audio 
  2830: 44 72 69 76 65 72 20 2D 20 48 41 44 00 08 5F 55  // Driver - HAD.._U
  2840: 49 44 01 14 22 5F 43 52 53 00 08 52 42 55 46 11  // ID.."_CRS..RBUF.
  2850: 11 0A 0E 86 09 00 01 00 58 06 00 40 01 00 00 79  // ........X..@...y
  2860: 00 A4 52 42 55 46 10 8B CE 01 2E 5F 53 42 5F 50  // ..RBUF....._SB_P
  2870: 43 49 30 5B 82 8F 12 01 58 48 43 31 08 5F 41 44  // CI0[....XHC1._AD
  2880: 52 0C 00 00 14 00 08 5F 44 44 4E 0D 42 61 79 74  // R......_DDN.Bayt
  2890: 72 61 69 6C 20 58 48 43 49 20 63 6F 6E 74 72 6F  // rail XHCI contro
  28A0: 6C 6C 65 72 20 28 43 43 47 20 63 6F 72 65 2F 48  // ller (CCG core/H
  28B0: 6F 73 74 20 6F 6E 6C 79 29 00 08 5F 44 45 50 12  // ost only).._DEP.
  28C0: 06 01 50 45 50 44 08 5F 53 54 52 11 40 06 0A 5C  // ..PEPD._STR.@..\
  28D0: 42 00 61 00 79 00 74 00 72 00 61 00 69 00 6C 00  // B.a.y.t.r.a.i.l.
  28E0: 20 00 58 00 48 00 43 00 49 00 20 00 63 00 6F 00  //  .X.H.C.I. .c.o.
  28F0: 6E 00 74 00 72 00 6F 00 6C 00 6C 00 65 00 72 00  // n.t.r.o.l.l.e.r.
  2900: 20 00 28 00 43 00 43 00 47 00 20 00 63 00 6F 00  //  .(.C.C.G. .c.o.
  2910: 72 00 65 00 2F 00 48 00 6F 00 73 00 74 00 20 00  // r.e./.H.o.s.t. .
  2920: 6F 00 6E 00 6C 00 79 00 29 00 00 00 08 5F 53 30  // o.n.l.y.)...._S0
  2930: 57 0A 03 08 4D 53 45 54 00 08 44 44 53 54 00 5B  // W...MSET..DDST.[
  2940: 80 50 43 53 4C 00 0C 74 00 0A E0 01 5B 81 0B 50  // .PCSL..t....[..P
  2950: 43 53 4C 41 50 4D 50 53 02 5B 80 50 43 53 48 00  // CSLAPMPS.[.PCSH.
  2960: 0C 75 00 0A E0 01 5B 81 0B 50 43 53 48 01 50 4D  // .u....[..PCSH.PM
  2970: 43 48 08 5B 80 58 4D 53 45 00 0C 00 00 0A E0 0B  // CH.[.XMSE.......
  2980: 00 01 5B 81 37 58 4D 53 45 00 00 20 00 01 43 4D  // ..[.7XMSE.. ..CM
  2990: 53 45 01 00 4E 05 42 41 52 30 20 00 40 30 50 4D  // SE..N.BAR0 .@0PM
  29A0: 43 53 10 00 40 1D 00 0D 50 48 59 32 02 00 0D 55  // CS..@...PHY2...U
  29B0: 53 48 50 01 00 01 53 43 46 47 01 14 13 50 57 4F  // SHP...SCFG...PWO
  29C0: 46 08 50 38 58 48 00 0A AA 70 01 53 43 46 47 14  // F.P8XH...p.SCFG.
  29D0: 13 50 57 4F 4E 08 50 38 58 48 00 0A BB 70 00 53  // .PWON.P8XH...p.S
  29E0: 43 46 47 5B 80 58 50 52 54 00 72 50 45 42 53 0C  // CFG[.XPRT.rPEBS.
  29F0: 00 00 0A 00 00 0B 00 01 5B 81 4A 04 58 50 52 54  // ........[.J.XPRT
  2A00: 00 44 56 49 44 10 00 40 39 44 30 44 33 02 00 06  // .DVID..@9D0D3...
  2A10: 50 4D 45 45 01 00 06 50 4D 45 53 01 00 40 1D 00  // PMEE...PMES..@..
  2A20: 0D 4D 42 31 33 01 4D 42 31 34 01 00 11 00 40 0E  // .MB13.MB14....@.
  2A30: 50 52 32 5F 20 50 52 32 4D 20 50 52 33 5F 20 50  // PR2_ PR2M PR3_ P
  2A40: 52 33 4D 20 5B 80 58 48 43 50 00 72 50 45 42 53  // R3M [.XHCP.rPEBS
  2A50: 0C 00 00 0A 00 00 0B 00 01 5B 81 15 58 48 43 50  // .........[..XHCP
  2A60: 10 00 20 50 44 42 4D 10 00 40 05 4D 45 4D 42 20  // .. PDBM..@.MEMB 
  2A70: 08 50 43 48 53 00 08 53 52 4D 42 0C 00 00 80 90  // .PCHS..SRMB.....
  2A80: 14 4B 43 5F 50 53 30 08 41 44 42 47 0D 58 48 43  // .KC_PS0.ADBG.XHC
  2A90: 20 44 30 00 50 38 58 48 00 0A A0 A0 0B 93 44 56  //  D0.P8XH......DV
  2AA0: 49 44 0B FF FF A4 00 7B 4D 45 4D 42 0C F0 FF FF  // ID.....{MEMB....
  2AB0: FF 53 52 4D 42 70 4D 45 4D 42 62 70 50 44 42 4D  // .SRMBpMEMBbpPDBM
  2AC0: 61 7B 50 44 42 4D 0E F9 FF FF FF FF FF FF FF 50  // a{PDBM.........P
  2AD0: 44 42 4D 70 53 52 4D 42 4D 45 4D 42 7D 50 44 42  // DBMpSRMBMEMB}PDB
  2AE0: 4D 0A 02 50 44 42 4D 5B 80 4D 43 41 31 00 53 52  // M..PDBM[.MCA1.SR
  2AF0: 4D 42 0B 00 90 5B 81 4E 10 4D 43 41 31 13 00 80  // MB...[.N.MCA1...
  2B00: 88 02 52 35 31 30 20 00 40 06 52 35 32 30 20 00  // ..R510 .@.R520 .
  2B10: 40 06 52 35 33 30 20 00 40 06 52 35 34 30 20 00  // @.R530 .@.R540 .
  2B20: 80 8A 3D 00 08 43 44 45 53 01 00 07 53 54 53 50  // ..=..CDES...STSP
  2B30: 01 00 03 43 46 45 43 01 00 2B 00 19 45 50 52 45  // ...CFEC..+..EPRE
  2B40: 01 00 46 18 00 0E 43 4D 4D 46 01 00 06 45 53 53  // ..F...CMMF...ESS
  2B50: 50 01 00 01 44 41 50 41 01 00 48 24 00 0F 41 58  // P...DAPA..H$..AX
  2B60: 31 35 01 00 40 0D 00 19 50 50 4C 31 01 00 46 08  // 15..@...PPL1..F.
  2B70: 00 01 43 52 4E 43 01 00 06 45 50 54 44 01 00 02  // ..CRNC...EPTD...
  2B80: 48 54 50 50 01 00 08 54 52 4D 43 01 00 4B 16 4D  // HTPP...TRMC..K.M
  2B90: 49 44 53 0C 41 57 50 43 0C 45 49 48 52 08 00 06  // IDS.AWPC.EIHR...
  2BA0: 53 53 49 49 01 53 53 49 4F 01 48 53 49 49 01 00  // SSII.SSIO.HSII..
  2BB0: 47 07 00 1F 43 4C 4B 32 01 00 40 06 45 54 42 43  // G...CLK2..@.ETBC
  2BC0: 01 45 52 42 43 01 45 53 41 49 01 45 54 4D 41 01  // .ERBC.ESAI.ETMA.
  2BD0: 45 4F 41 49 01 45 49 41 49 01 54 54 45 41 01 45  // EOAI.EIAI.TTEA.E
  2BE0: 43 4D 41 01 00 38 00 02 43 4C 4B 30 01 00 0B 43  // CMA..8..CLK0...C
  2BF0: 4C 4B 31 01 00 41 0D 00 18 46 49 44 44 01 00 01  // LK1..A...FIDD...
  2C00: 46 54 53 53 01 70 44 30 44 33 63 A0 0F 93 63 0A  // FTSS.pD0D3c...c.
  2C10: 03 70 00 44 30 44 33 5B 22 0A 0A A0 20 93 50 43  // .p.D0D3["... .PC
  2C20: 48 53 0A 02 70 00 4D 42 31 33 70 00 4D 42 31 34  // HS..p.MB13p.MB14
  2C30: 70 00 43 4C 4B 30 70 00 43 4C 4B 31 70 01 43 4C  // p.CLK0p.CLK1p.CL
  2C40: 4B 32 70 01 43 44 45 53 70 01 53 54 53 50 70 00  // K2p.CDESp.STSPp.
  2C50: 43 46 45 43 70 01 45 50 52 45 70 01 44 41 50 41  // CFECp.EPREp.DAPA
  2C60: 70 01 45 53 53 50 70 01 43 4D 4D 46 70 01 50 50  // p.ESSPp.CMMFp.PP
  2C70: 4C 31 70 00 43 52 4E 43 70 00 45 50 54 44 70 01  // L1p.CRNCp.EPTDp.
  2C80: 48 54 50 50 70 01 54 52 4D 43 70 0A 3C 4D 49 44  // HTPPp.TRMCp.<MID
  2C90: 53 70 0A 0F 41 57 50 43 70 0A FF 45 49 48 52 70  // Sp..AWPCp..EIHRp
  2CA0: 01 53 53 49 49 70 01 53 53 49 4F 70 01 48 53 49  // .SSIIp.SSIOp.HSI
  2CB0: 49 70 01 45 52 42 43 70 01 45 54 42 43 70 01 45  // Ip.ERBCp.ETBCp.E
  2CC0: 53 41 49 70 01 45 54 4D 41 70 01 45 4F 41 49 70  // SAIp.ETMAp.EOAIp
  2CD0: 01 45 49 41 49 70 01 54 54 45 41 70 01 45 43 4D  // .EIAIp.TTEAp.ECM
  2CE0: 41 70 01 46 49 44 44 70 01 46 54 53 53 70 00 55  // Ap.FIDDp.FTSSp.U
  2CF0: 53 48 50 A0 40 18 93 50 43 48 53 0A 02 A2 3C 91  // SHP.@..PCHS...<.
  2D00: 91 93 7B 52 35 31 30 0B FB 03 00 0B E0 02 93 7B  // ..{R510........{
  2D10: 52 35 32 30 0B FB 03 00 0B E0 02 91 93 7B 52 35  // R520.........{R5
  2D20: 33 30 0B FB 03 00 0B E0 02 93 7B 52 35 34 30 0B  // 30........{R540.
  2D30: FB 03 00 0B E0 02 5B 21 0A 32 70 52 35 31 30 60  // ......[!.2pR510`
  2D40: A0 46 04 93 7B 60 0C FB 03 02 00 00 0B A0 02 7D  // .F..{`.........}
  2D50: 60 0C 00 00 00 80 52 35 31 30 A2 12 93 7B 52 35  // `.....R510...{R5
  2D60: 31 30 0C 00 00 18 00 00 00 5B 21 0A 32 7B 52 35  // 10.......[!.2{R5
  2D70: 31 30 0E FD FF FF FF FF FF FF FF 60 7D 60 0C 00  // 10.........`}`..
  2D80: 00 FE 00 52 35 31 30 70 52 35 32 30 60 A0 46 04  // ...R510pR520`.F.
  2D90: 93 7B 60 0C FB 03 02 00 00 0B A0 02 7D 60 0C 00  // .{`.........}`..
  2DA0: 00 00 80 52 35 32 30 A2 12 93 7B 52 35 32 30 0C  // ...R520...{R520.
  2DB0: 00 00 18 00 00 00 5B 21 0A 32 7B 52 35 32 30 0E  // ......[!.2{R520.
  2DC0: FD FF FF FF FF FF FF FF 60 7D 60 0C 00 00 FE 00  // ........`}`.....
  2DD0: 52 35 32 30 70 52 35 33 30 60 A0 46 04 93 7B 60  // R520pR530`.F..{`
  2DE0: 0C FB 03 02 00 00 0B A0 02 7D 60 0C 00 00 00 80  // .........}`.....
  2DF0: 52 35 33 30 A2 12 93 7B 52 35 33 30 0C 00 00 18  // R530...{R530....
  2E00: 00 00 00 5B 21 0A 32 7B 52 35 33 30 0E FD FF FF  // ...[!.2{R530....
  2E10: FF FF FF FF FF 60 7D 60 0C 00 00 FE 00 52 35 33  // .....`}`.....R53
  2E20: 30 70 52 35 34 30 60 A0 46 04 93 7B 60 0C FB 03  // 0pR540`.F..{`...
  2E30: 02 00 00 0B A0 02 7D 60 0C 00 00 00 80 52 35 34  // ......}`.....R54
  2E40: 30 A2 12 93 7B 52 35 34 30 0C 00 00 18 00 00 00  // 0...{R540.......
  2E50: 5B 21 0A 32 7B 52 35 34 30 0E FD FF FF FF FF FF  // [!.2{R540.......
  2E60: FF FF 60 7D 60 0C 00 00 FE 00 52 35 34 30 70 01  // ..`}`.....R540p.
  2E70: 41 58 31 35 A0 20 93 63 0A 03 41 44 42 47 0D 50  // AX15. .c..ADBG.P
  2E80: 53 30 2D 3E 44 33 00 50 38 58 48 00 0A A1 70 0A  // S0->D3.P8XH...p.
  2E90: 03 44 30 44 33 A1 08 50 38 58 48 00 0A A2 7B 50  // .D0D3..P8XH...{P
  2EA0: 44 42 4D 0E FD FF FF FF FF FF FF FF 50 44 42 4D  // DBM.........PDBM
  2EB0: 70 62 4D 45 4D 42 70 61 50 44 42 4D 14 42 14 5F  // pbMEMBpaPDBM.B._
  2EC0: 50 53 33 08 41 44 42 47 0D 58 48 43 20 44 33 00  // PS3.ADBG.XHC D3.
  2ED0: 50 38 58 48 00 0A B0 A0 0B 93 44 56 49 44 0B FF  // P8XH......DVID..
  2EE0: FF A4 00 7B 4D 45 4D 42 0C F0 FF FF FF 53 52 4D  // ...{MEMB.....SRM
  2EF0: 42 70 4D 45 4D 42 62 70 50 44 42 4D 61 7B 50 44  // BpMEMBbpPDBMa{PD
  2F00: 42 4D 0E F9 FF FF FF FF FF FF FF 50 44 42 4D 70  // BM.........PDBMp
  2F10: 53 52 4D 42 4D 45 4D 42 7D 50 44 42 4D 0A 02 50  // SRMBMEMB}PDBM..P
  2F20: 44 42 4D 5B 80 4D 43 41 31 00 53 52 4D 42 0B 00  // DBM[.MCA1.SRMB..
  2F30: 90 5B 81 2E 4D 43 41 31 13 00 80 70 40 00 0F 41  // .[..MCA1...p@..A
  2F40: 58 31 35 01 00 40 39 00 1F 43 4C 4B 32 01 00 40  // X15..@9..CLK2..@
  2F50: 0A 00 02 43 4C 4B 30 01 00 0B 43 4C 4B 31 01 00  // ...CLK0...CLK1..
  2F60: 11 70 44 30 44 33 63 A0 0B 93 63 0A 03 70 00 44  // .pD0D3c...c..p.D
  2F70: 30 44 33 A0 20 93 50 43 48 53 0A 02 70 01 4D 42  // 0D3. .PCHS..p.MB
  2F80: 31 33 70 01 4D 42 31 34 70 01 43 4C 4B 30 70 01  // 13p.MB14p.CLK0p.
  2F90: 43 4C 4B 31 70 00 43 4C 4B 32 A0 0E 93 50 43 48  // CLK1p.CLK2...PCH
  2FA0: 53 0A 02 70 00 41 58 31 35 A0 0D 93 50 4D 45 45  // S..p.AX15...PMEE
  2FB0: 01 70 01 55 53 48 50 A0 20 93 63 0A 03 41 44 42  // .p.USHP. .c..ADB
  2FC0: 47 0D 50 53 33 2D 3E 44 33 00 50 38 58 48 00 0A  // G.PS3->D3.P8XH..
  2FD0: B1 70 0A 03 44 30 44 33 A1 08 50 38 58 48 00 0A  // .p..D0D3..P8XH..
  2FE0: B2 7B 50 44 42 4D 0E FD FF FF FF FF FF FF FF 50  // .{PDBM.........P
  2FF0: 44 42 4D 70 62 4D 45 4D 42 70 61 50 44 42 4D 14  // DBMpbMEMBpaPDBM.
  3000: 06 5F 44 53 57 03 14 08 5F 52 4D 56 00 A4 00 14  // ._DSW..._RMV....
  3010: 0E 5F 50 52 33 00 A4 12 06 01 55 53 42 43 14 16  // ._PR3.....USBC..
  3020: 5F 53 54 41 00 A0 0B 92 93 58 48 43 49 00 A4 0A  // _STA.....XHCI...
  3030: 0F A1 03 A4 00 5B 82 4D 96 52 48 55 42 08 5F 41  // .....[.M.RHUB._A
  3040: 44 52 00 5B 82 40 11 53 53 50 31 08 5F 41 44 52  // DR.[.@.SSP1._ADR
  3050: 0A 07 14 19 5F 55 50 43 08 08 55 50 43 50 12 08  // ...._UPC..UPCP..
  3060: 04 0A FF 0A 06 00 00 A4 55 50 43 50 14 2B 5F 50  // ........UPCP.+_P
  3070: 4C 44 08 08 50 4C 44 50 12 1A 01 11 17 0A 14 82  // LD..PLDP........
  3080: 00 00 00 00 00 00 00 4B 19 00 00 03 00 00 00 FF  // .......K........
  3090: FF FF FF A4 50 4C 44 50 14 4C 0B 5F 44 53 4D 04  // ....PLDP.L._DSM.
  30A0: 41 44 42 47 0D 44 53 4D 31 31 00 A0 43 0A 93 68  // ADBG.DSM11..C..h
  30B0: 11 13 0A 10 85 E3 2E CE E6 00 CB 48 9F 05 2E DB  // ...........H....
  30C0: 92 7C 48 99 41 44 42 47 0D 44 53 4D 31 32 00 A0  // .|H.ADBG.DSM12..
  30D0: 4F 07 93 69 00 41 44 42 47 0D 44 53 4D 31 33 00  // O..i.ADBG.DSM13.
  30E0: A0 38 93 6A 00 41 44 42 47 0D 53 53 50 31 20 51  // .8.j.ADBG.SSP1 Q
  30F0: 55 45 52 59 00 70 0D 4D 65 74 68 6F 64 20 5F 44  // UERY.p.Method _D
  3100: 53 4D 20 46 75 6E 63 74 69 6F 6E 20 51 75 65 72  // SM Function Quer
  3110: 79 00 5B 31 A4 11 03 01 05 A0 35 93 6A 0A 02 41  // y.[1......5.j..A
  3120: 44 42 47 0D 53 53 50 31 20 44 53 4D 00 70 0D 4D  // DBG.SSP1 DSM.p.M
  3130: 65 74 68 6F 64 20 5F 44 53 4D 20 46 75 6E 63 74  // ethod _DSM Funct
  3140: 69 6F 6E 20 49 6E 64 65 78 32 00 5B 31 A4 00 A1  // ion Index2.[1...
  3150: 03 A4 00 A4 00 5B 82 4F 10 48 53 30 31 08 5F 41  // .....[.O.HS01._A
  3160: 44 52 01 14 19 5F 55 50 43 08 08 55 50 43 50 12  // DR..._UPC..UPCP.
  3170: 08 04 0A FF 0A 06 00 00 A4 55 50 43 50 14 2B 5F  // .........UPCP.+_
  3180: 50 4C 44 08 08 50 4C 44 50 12 1A 01 11 17 0A 14  // PLD..PLDP.......
  3190: 82 00 00 00 00 00 00 00 4B 19 00 00 03 00 00 00  // ........K.......
  31A0: FF FF FF FF A4 50 4C 44 50 14 4C 0B 5F 44 53 4D  // .....PLDP.L._DSM
  31B0: 04 41 44 42 47 0D 44 53 4D 32 31 00 A0 43 0A 93  // .ADBG.DSM21..C..
  31C0: 68 11 13 0A 10 85 E3 2E CE E6 00 CB 48 9F 05 2E  // h...........H...
  31D0: DB 92 7C 48 99 41 44 42 47 0D 44 53 4D 32 32 00  // ..|H.ADBG.DSM22.
  31E0: A0 4F 07 93 69 00 41 44 42 47 0D 44 53 4D 32 33  // .O..i.ADBG.DSM23
  31F0: 00 A0 38 93 6A 00 41 44 42 47 0D 48 53 30 31 20  // ..8.j.ADBG.HS01 
  3200: 51 55 45 52 59 00 70 0D 4D 65 74 68 6F 64 20 5F  // QUERY.p.Method _
  3210: 44 53 4D 20 46 75 6E 63 74 69 6F 6E 20 51 75 65  // DSM Function Que
  3220: 72 79 00 5B 31 A4 11 03 01 05 A0 35 93 6A 0A 02  // ry.[1......5.j..
  3230: 41 44 42 47 0D 48 53 30 31 20 44 53 4D 00 70 0D  // ADBG.HS01 DSM.p.
  3240: 4D 65 74 68 6F 64 20 5F 44 53 4D 20 46 75 6E 63  // Method _DSM Func
  3250: 74 69 6F 6E 20 49 6E 64 65 78 32 00 5B 31 A4 00  // tion Index2.[1..
  3260: A1 03 A4 00 A4 00 5B 82 4E 15 48 53 30 32 08 5F  // ......[.N.HS02._
  3270: 41 44 52 0A 02 14 36 5F 55 50 43 08 08 55 50 43  // ADR...6_UPC..UPC
  3280: 50 12 08 04 0A FF 0A FF 00 00 08 55 50 43 52 12  // P..........UPCR.
  3290: 07 04 0A FF 00 00 00 A0 0D 93 42 44 49 44 0A 02  // ..........BDID..
  32A0: A4 55 50 43 52 A1 06 A4 55 50 43 50 14 4C 05 5F  // .UPCR...UPCP.L._
  32B0: 50 4C 44 08 08 50 4C 44 50 12 1A 01 11 17 0A 14  // PLD..PLDP.......
  32C0: 82 00 00 00 00 00 00 00 40 08 00 00 00 00 00 00  // ........@.......
  32D0: FF FF FF FF 08 50 4C 44 52 12 1A 01 11 17 0A 14  // .....PLDR.......
  32E0: 82 00 00 00 00 00 00 00 41 08 00 00 00 00 00 00  // ........A.......
  32F0: FF FF FF FF A0 0D 93 42 44 49 44 0A 02 A4 50 4C  // .......BDID...PL
  3300: 44 52 A1 06 A4 50 4C 44 50 14 4C 0B 5F 44 53 4D  // DR...PLDP.L._DSM
  3310: 04 41 44 42 47 0D 44 53 4D 33 31 00 A0 43 0A 93  // .ADBG.DSM31..C..
  3320: 68 11 13 0A 10 85 E3 2E CE E6 00 CB 48 9F 05 2E  // h...........H...
  3330: DB 92 7C 48 99 41 44 42 47 0D 44 53 4D 33 32 00  // ..|H.ADBG.DSM32.
  3340: A0 4F 07 93 69 00 41 44 42 47 0D 44 53 4D 33 33  // .O..i.ADBG.DSM33
  3350: 00 A0 38 93 6A 00 41 44 42 47 0D 48 53 30 32 20  // ..8.j.ADBG.HS02 
  3360: 51 55 45 52 59 00 70 0D 4D 65 74 68 6F 64 20 5F  // QUERY.p.Method _
  3370: 44 53 4D 20 46 75 6E 63 74 69 6F 6E 20 51 75 65  // DSM Function Que
  3380: 72 79 00 5B 31 A4 11 03 01 05 A0 35 93 6A 0A 02  // ry.[1......5.j..
  3390: 41 44 42 47 0D 48 53 30 32 20 44 53 4D 00 70 0D  // ADBG.HS02 DSM.p.
  33A0: 4D 65 74 68 6F 64 20 5F 44 53 4D 20 46 75 6E 63  // Method _DSM Func
  33B0: 74 69 6F 6E 20 49 6E 64 65 78 32 00 5B 31 A4 00  // tion Index2.[1..
  33C0: A1 03 A4 00 A4 00 5B 82 41 23 48 53 30 33 08 5F  // ......[.A#HS03._
  33D0: 41 44 52 0A 03 08 5F 44 45 50 12 06 01 47 50 4F  // ADR..._DEP...GPO
  33E0: 32 08 50 53 54 53 00 5B 84 40 0B 57 57 50 52 00  // 2.PSTS.[.@.WWPR.
  33F0: 00 00 08 5F 44 45 50 12 06 01 47 50 4F 32 14 2B  // ..._DEP...GPO2.+
  3400: 5F 53 54 41 00 A0 22 93 5C 2F 03 5F 53 42 5F 47  // _STA..".\/._SB_G
  3410: 50 4F 32 41 56 42 4C 01 A4 5C 2F 03 5F 53 42 5F  // PO2AVBL..\/._SB_
  3420: 47 50 4F 32 57 57 44 33 A4 00 14 3D 5F 4F 4E 5F  // GPO2WWD3...=_ON_
  3430: 00 A0 36 93 50 53 54 53 00 A0 2E 93 5C 2F 03 5F  // ..6.PSTS....\/._
  3440: 53 42 5F 47 50 4F 32 41 56 42 4C 01 5B 22 0B 00  // SB_GPO2AVBL.["..
  3450: 02 70 01 5C 2F 03 5F 53 42 5F 47 50 4F 32 57 57  // .p.\/._SB_GPO2WW
  3460: 44 33 70 01 50 53 54 53 14 30 5F 4F 46 46 00 A0  // D3p.PSTS.0_OFF..
  3470: 29 93 5C 2F 03 5F 53 42 5F 47 50 4F 32 41 56 42  // ).\/._SB_GPO2AVB
  3480: 4C 01 70 00 5C 2F 03 5F 53 42 5F 47 50 4F 32 57  // L.p.\/._SB_GPO2W
  3490: 57 44 33 70 00 50 53 54 53 08 5F 53 30 57 0A 02  // WD3p.PSTS._S0W..
  34A0: 08 5F 50 52 30 12 06 01 57 57 50 52 08 5F 50 52  // ._PR0...WWPR._PR
  34B0: 32 12 06 01 57 57 50 52 08 5F 50 52 33 12 06 01  // 2...WWPR._PR3...
  34C0: 57 57 50 52 14 19 5F 55 50 43 08 08 55 50 43 50  // WWPR.._UPC..UPCP
  34D0: 12 08 04 0A FF 0A FF 00 00 A4 55 50 43 50 14 2B  // ..........UPCP.+
  34E0: 5F 50 4C 44 08 08 50 4C 44 50 12 1A 01 11 17 0A  // _PLD..PLDP......
  34F0: 14 82 00 00 00 00 00 00 00 30 08 00 00 00 00 00  // .........0......
  3500: 00 FF FF FF FF A4 50 4C 44 50 14 4C 0B 5F 44 53  // ......PLDP.L._DS
  3510: 4D 04 41 44 42 47 0D 44 53 4D 34 31 00 A0 43 0A  // M.ADBG.DSM41..C.
  3520: 93 68 11 13 0A 10 85 E3 2E CE E6 00 CB 48 9F 05  // .h...........H..
  3530: 2E DB 92 7C 48 99 41 44 42 47 0D 44 53 4D 34 32  // ...|H.ADBG.DSM42
  3540: 00 A0 4F 07 93 69 00 41 44 42 47 0D 44 53 4D 34  // ..O..i.ADBG.DSM4
  3550: 33 00 A0 38 93 6A 00 41 44 42 47 0D 48 53 30 33  // 3..8.j.ADBG.HS03
  3560: 20 51 55 45 52 59 00 70 0D 4D 65 74 68 6F 64 20  //  QUERY.p.Method 
  3570: 5F 44 53 4D 20 46 75 6E 63 74 69 6F 6E 20 51 75  // _DSM Function Qu
  3580: 65 72 79 00 5B 31 A4 11 03 01 05 A0 35 93 6A 0A  // ery.[1......5.j.
  3590: 02 41 44 42 47 0D 48 53 30 33 20 44 53 4D 00 70  // .ADBG.HS03 DSM.p
  35A0: 0D 4D 65 74 68 6F 64 20 5F 44 53 4D 20 46 75 6E  // .Method _DSM Fun
  35B0: 63 74 69 6F 6E 20 49 6E 64 65 78 32 00 5B 31 A4  // ction Index2.[1.
  35C0: 00 A1 03 A4 00 A4 00 5B 82 30 4D 4F 44 4D 08 5F  // .......[.0MODM._
  35D0: 41 44 52 0A 03 08 5F 50 52 30 12 06 01 57 57 50  // ADR..._PR0...WWP
  35E0: 52 08 5F 50 52 32 12 06 01 57 57 50 52 08 5F 50  // R._PR2...WWPR._P
  35F0: 52 33 12 06 01 57 57 50 52 5B 82 40 11 48 53 30  // R3...WWPR[.@.HS0
  3600: 34 08 5F 41 44 52 0A 04 14 19 5F 55 50 43 08 08  // 4._ADR...._UPC..
  3610: 55 50 43 50 12 08 04 0A FF 0A FF 00 00 A4 55 50  // UPCP..........UP
  3620: 43 50 14 2B 5F 50 4C 44 08 08 50 4C 44 50 12 1A  // CP.+_PLD..PLDP..
  3630: 01 11 17 0A 14 82 00 00 00 00 00 00 00 30 08 00  // .............0..
  3640: 00 00 00 00 00 FF FF FF FF A4 50 4C 44 50 14 4C  // ..........PLDP.L
  3650: 0B 5F 44 53 4D 04 41 44 42 47 0D 44 53 4D 35 31  // ._DSM.ADBG.DSM51
  3660: 00 A0 43 0A 93 68 11 13 0A 10 85 E3 2E CE E6 00  // ..C..h..........
  3670: CB 48 9F 05 2E DB 92 7C 48 99 41 44 42 47 0D 44  // .H.....|H.ADBG.D
  3680: 53 4D 35 32 00 A0 4F 07 93 69 00 41 44 42 47 0D  // SM52..O..i.ADBG.
  3690: 44 53 4D 35 33 00 A0 38 93 6A 00 41 44 42 47 0D  // DSM53..8.j.ADBG.
  36A0: 48 53 30 34 20 51 55 45 52 59 00 70 0D 4D 65 74  // HS04 QUERY.p.Met
  36B0: 68 6F 64 20 5F 44 53 4D 20 46 75 6E 63 74 69 6F  // hod _DSM Functio
  36C0: 6E 20 51 75 65 72 79 00 5B 31 A4 11 03 01 05 A0  // n Query.[1......
  36D0: 35 93 6A 0A 02 41 44 42 47 0D 48 53 30 34 20 44  // 5.j..ADBG.HS04 D
  36E0: 53 4D 00 70 0D 4D 65 74 68 6F 64 20 5F 44 53 4D  // SM.p.Method _DSM
  36F0: 20 46 75 6E 63 74 69 6F 6E 20 49 6E 64 65 78 32  //  Function Index2
  3700: 00 5B 31 A4 00 A1 03 A4 00 A4 00 5B 82 4C 17 48  // .[1........[.L.H
  3710: 53 43 31 08 5F 41 44 52 0A 05 08 5F 44 45 50 12  // SC1._ADR..._DEP.
  3720: 06 01 47 50 4F 32 14 19 5F 55 50 43 08 08 55 50  // ..GPO2.._UPC..UP
  3730: 43 50 12 08 04 0A FF 0A FF 00 00 A4 55 50 43 50  // CP..........UPCP
  3740: 14 2B 5F 50 4C 44 08 08 50 4C 44 50 12 1A 01 11  // .+_PLD..PLDP....
  3750: 17 0A 14 82 00 00 00 00 00 00 00 30 08 00 00 00  // ...........0....
  3760: 00 00 00 FF FF FF FF A4 50 4C 44 50 14 4E 0B 5F  // ........PLDP.N._
  3770: 44 53 4D 04 41 44 42 47 0D 44 53 4D 36 31 00 A0  // DSM.ADBG.DSM61..
  3780: 45 0A 93 68 11 13 0A 10 85 E3 2E CE E6 00 CB 48  // E..h...........H
  3790: 9F 05 2E DB 92 7C 48 99 41 44 42 47 0D 44 53 4D  // .....|H.ADBG.DSM
  37A0: 36 32 00 A0 41 08 93 69 00 41 44 42 47 0D 44 53  // 62..A..i.ADBG.DS
  37B0: 4D 36 33 00 A0 39 93 6A 00 41 44 42 47 0D 48 53  // M63..9.j.ADBG.HS
  37C0: 49 43 31 20 51 55 45 52 59 00 70 0D 4D 65 74 68  // IC1 QUERY.p.Meth
  37D0: 6F 64 20 5F 44 53 4D 20 46 75 6E 63 74 69 6F 6E  // od _DSM Function
  37E0: 20 51 75 65 72 79 00 5B 31 A4 11 03 01 05 A0 36  //  Query.[1......6
  37F0: 93 6A 0A 02 41 44 42 47 0D 48 53 49 43 31 20 44  // .j..ADBG.HSIC1 D
  3800: 53 4D 00 70 0D 4D 65 74 68 6F 64 20 5F 44 53 4D  // SM.p.Method _DSM
  3810: 20 46 75 6E 63 74 69 6F 6E 20 49 6E 64 65 78 32  //  Function Index2
  3820: 00 5B 31 A4 01 A1 03 A4 00 A4 00 08 52 42 55 46  // .[1.........RBUF
  3830: 11 4C 04 0A 48 8C 20 00 01 01 01 00 01 00 00 00  // .L..H. .........
  3840: 00 00 00 17 00 00 19 00 23 00 00 00 17 00 5C 5F  // ........#.....\_
  3850: 53 42 2E 47 50 4F 32 00 8C 20 00 01 01 01 00 01  // SB.GPO2.. ......
  3860: 00 00 00 00 00 00 17 00 00 19 00 23 00 00 00 16  // ...........#....
  3870: 00 5C 5F 53 42 2E 47 50 4F 32 00 79 00 14 0B 5F  // .\_SB.GPO2.y..._
  3880: 43 52 53 00 A4 52 42 55 46 5B 82 49 11 48 53 43  // CRS..RBUF[.I.HSC
  3890: 32 08 5F 41 44 52 0A 06 14 19 5F 55 50 43 08 08  // 2._ADR...._UPC..
  38A0: 55 50 43 50 12 08 04 0A FF 0A FF 00 00 A4 55 50  // UPCP..........UP
  38B0: 43 50 14 2B 5F 50 4C 44 08 08 50 4C 44 50 12 1A  // CP.+_PLD..PLDP..
  38C0: 01 11 17 0A 14 82 00 00 00 00 00 00 00 30 08 00  // .............0..
  38D0: 00 00 00 00 00 FF FF FF FF A4 50 4C 44 50 14 45  // ..........PLDP.E
  38E0: 0C 5F 44 53 4D 04 41 44 42 47 0D 44 53 4D 37 31  // ._DSM.ADBG.DSM71
  38F0: 00 A0 4C 0A 93 68 11 13 0A 10 85 E3 2E CE E6 00  // ..L..h..........
  3900: CB 48 9F 05 2E DB 92 7C 48 99 41 44 42 47 0D 44  // .H.....|H.ADBG.D
  3910: 53 4D 37 32 00 A0 48 08 93 69 00 41 44 42 47 0D  // SM72..H..i.ADBG.
  3920: 44 53 4D 37 33 00 A0 39 93 6A 00 41 44 42 47 0D  // DSM73..9.j.ADBG.
  3930: 48 53 49 43 32 20 51 55 45 52 59 00 70 0D 4D 65  // HSIC2 QUERY.p.Me
  3940: 74 68 6F 64 20 5F 44 53 4D 20 46 75 6E 63 74 69  // thod _DSM Functi
  3950: 6F 6E 20 51 75 65 72 79 00 5B 31 A4 11 03 01 05  // on Query.[1.....
  3960: A0 3D 93 6A 0A 02 41 44 42 47 0D 48 53 49 43 32  // .=.j..ADBG.HSIC2
  3970: 20 44 53 4D 20 63 61 6C 6C 65 64 00 70 0D 4D 65  //  DSM called.p.Me
  3980: 74 68 6F 64 20 5F 44 53 4D 20 46 75 6E 63 74 69  // thod _DSM Functi
  3990: 6F 6E 20 49 6E 64 65 78 32 00 5B 31 A4 01 A1 03  // on Index2.[1....
  39A0: A4 00 A4 00 5B 82 4B 15 4F 54 47 31 08 5F 41 44  // ....[.K.OTG1._AD
  39B0: 52 0C 00 00 16 00 08 5F 44 44 4E 0D 42 61 79 74  // R......_DDN.Bayt
  39C0: 72 61 69 6C 20 58 48 43 49 20 63 6F 6E 74 72 6F  // rail XHCI contro
  39D0: 6C 6C 65 72 20 28 53 79 6E 6F 70 73 79 73 20 63  // ller (Synopsys c
  39E0: 6F 72 65 2F 4F 54 47 29 00 08 5F 53 54 52 11 4E  // ore/OTG).._STR.N
  39F0: 05 0A 5A 42 00 61 00 79 00 74 00 72 00 61 00 69  // ..ZB.a.y.t.r.a.i
  3A00: 00 6C 00 20 00 58 00 48 00 43 00 49 00 20 00 63  // .l. .X.H.C.I. .c
  3A10: 00 6F 00 6E 00 74 00 72 00 6F 00 6C 00 6C 00 65  // .o.n.t.r.o.l.l.e
  3A20: 00 72 00 20 00 28 00 53 00 79 00 6E 00 6F 00 70  // .r. .(.S.y.n.o.p
  3A30: 00 73 00 79 00 73 00 20 00 63 00 6F 00 72 00 65  // .s.y.s. .c.o.r.e
  3A40: 00 2F 00 4F 00 54 00 47 00 29 00 00 00 08 5F 53  // ./.O.T.G.)...._S
  3A50: 30 57 0A 03 5B 80 50 4D 45 42 02 0A 84 0A 04 5B  // 0W..[.PMEB.....[
  3A60: 81 14 50 4D 45 42 02 00 08 50 4D 45 45 01 00 06  // ..PMEB...PMEE...
  3A70: 50 4D 45 53 01 5B 80 47 45 4E 52 02 0A A0 0A 10  // PMES.[.GENR.....
  3A80: 5B 81 17 47 45 4E 52 02 00 12 43 50 4D 45 01 55  // [..GENR...CPME.U
  3A90: 32 45 4E 01 55 33 45 4E 01 14 18 5F 50 53 33 00  // 2EN.U3EN..._PS3.
  3AA0: 70 01 43 50 4D 45 70 01 55 32 45 4E 70 01 55 33  // p.CPMEp.U2ENp.U3
  3AB0: 45 4E 14 18 5F 50 53 30 00 70 00 43 50 4D 45 70  // EN.._PS0.p.CPMEp
  3AC0: 00 55 32 45 4E 70 00 55 33 45 4E 14 06 5F 44 53  // .U2ENp.U3EN.._DS
  3AD0: 57 03 14 08 5F 52 4D 56 00 A4 00 14 0E 5F 50 52  // W..._RMV....._PR
  3AE0: 33 00 A4 12 06 01 55 53 42 43 14 16 5F 53 54 41  // 3.....USBC.._STA
  3AF0: 00 A0 0B 92 93 4F 54 47 4D 00 A4 0A 0F A1 03 A4  // .....OTGM.......
  3B00: 00 5B 82 42 04 47 4C 41 4E 08 5F 41 44 52 0C 00  // .[.B.GLAN._ADR..
  3B10: 00 19 00 5B 80 47 42 45 52 02 0A CC 0A 04 5B 81  // ...[.GBER.....[.
  3B20: 14 47 42 45 52 02 00 08 50 4D 45 45 01 00 06 50  // .GBER...PMEE...P
  3B30: 4D 45 53 01 14 09 5F 53 54 41 00 A4 0A 0F 14 06  // MES..._STA......
  3B40: 5F 44 53 57 03 5B 82 47 05 48 44 45 46 08 5F 41  // _DSW.[.G.HDEF._A
  3B50: 44 52 0C 00 00 1B 00 5B 80 48 44 41 52 02 0A 4C  // DR.....[.HDAR..L
  3B60: 0A 10 5B 81 29 48 44 41 52 02 44 43 4B 41 01 00  // ..[.)HDAR.DCKA..
  3B70: 07 44 43 4B 4D 01 00 06 44 43 4B 53 01 00 30 00  // .DCKM...DCKS..0.
  3B80: 08 50 4D 45 45 01 00 06 50 4D 45 53 01 14 09 5F  // .PMEE...PMES..._
  3B90: 53 54 41 00 A4 0A 0F 14 06 5F 44 53 57 03 10 28  // STA......_DSW..(
  3BA0: 5C 5F 53 42 5F 5B 84 20 55 53 42 43 00 00 00 14  // \_SB_[. USBC....
  3BB0: 09 5F 53 54 41 00 A4 0A 0F 14 06 5F 4F 4E 5F 00  // ._STA......_ON_.
  3BC0: 14 06 5F 4F 46 46 00 5B 82 43 49 45 48 43 31 08  // .._OFF.[.CIEHC1.
  3BD0: 5F 41 44 52 0C 00 00 1D 00 08 5F 44 45 50 12 06  // _ADR......_DEP..
  3BE0: 01 50 45 50 44 5B 80 50 57 4B 45 02 0A 62 0A 04  // .PEPD[.PWKE..b..
  3BF0: 5B 81 0D 50 57 4B 45 03 00 01 50 57 55 43 08 14  // [..PWKE...PWUC..
  3C00: 17 5F 50 53 57 01 A0 08 68 70 FF 50 57 55 43 A1  // ._PSW...hp.PWUC.
  3C10: 07 70 00 50 57 55 43 5B 82 46 3E 48 55 42 4E 08  // .p.PWUC[.F>HUBN.
  3C20: 5F 41 44 52 00 5B 82 48 3D 50 52 30 31 08 5F 41  // _ADR.[.H=PR01._A
  3C30: 44 52 01 08 5F 55 50 43 12 07 04 0A FF 00 00 00  // DR.._UPC........
  3C40: 08 5F 50 4C 44 12 16 01 11 13 0A 10 81 00 00 00  // ._PLD...........
  3C50: 00 00 00 00 30 1C 00 00 00 00 00 00 5B 82 35 50  // ....0.......[.5P
  3C60: 52 31 31 08 5F 41 44 52 01 08 5F 55 50 43 12 08  // R11._ADR.._UPC..
  3C70: 04 0A FF 0A FF 00 00 08 5F 50 4C 44 12 16 01 11  // ........_PLD....
  3C80: 13 0A 10 81 00 00 00 00 00 00 00 E1 1C 00 00 00  // ................
  3C90: 00 00 00 5B 82 36 50 52 31 32 08 5F 41 44 52 0A  // ...[.6PR12._ADR.
  3CA0: 02 08 5F 55 50 43 12 08 04 0A FF 0A FF 00 00 08  // .._UPC..........
  3CB0: 5F 50 4C 44 12 16 01 11 13 0A 10 81 00 00 00 00  // _PLD............
  3CC0: 00 00 00 E1 1D 00 00 00 00 00 00 5B 82 36 50 52  // ...........[.6PR
  3CD0: 31 33 08 5F 41 44 52 0A 03 08 5F 55 50 43 12 08  // 13._ADR..._UPC..
  3CE0: 04 0A FF 0A FF 00 00 08 5F 50 4C 44 12 16 01 11  // ........_PLD....
  3CF0: 13 0A 10 81 00 00 00 00 00 00 00 E1 1D 00 00 00  // ................
  3D00: 00 00 00 5B 82 4F 0A 50 52 31 34 08 5F 41 44 52  // ...[.O.PR14._ADR
  3D10: 0A 04 08 5F 55 50 43 12 08 04 0A FF 0A FF 00 00  // ..._UPC.........
  3D20: 08 5F 50 4C 44 12 16 01 11 13 0A 10 81 00 00 00  // ._PLD...........
  3D30: 00 00 00 00 E1 1E 00 00 00 00 00 00 14 47 07 5F  // .............G._
  3D40: 44 53 4D 0C 08 5F 54 5F 30 00 A0 47 06 93 68 11  // DSM.._T_0..G..h.
  3D50: 13 0A 10 8F 70 FC A5 75 87 A6 4B BD 0C BA 90 A1  // ....p..u..K.....
  3D60: EC 72 F8 A2 4E 04 01 70 99 6A 00 5F 54 5F 30 A0  // .r..N..p.j._T_0.
  3D70: 18 93 5F 54 5F 30 00 A0 09 93 69 01 A4 11 03 01  // .._T_0....i.....
  3D80: 07 A1 06 A4 11 03 01 00 A1 28 A0 16 93 5F 54 5F  // .........(..._T_
  3D90: 30 01 A0 0A 93 53 44 47 56 0A FF A4 00 A1 03 A4  // 0....SDGV.......
  3DA0: 01 A1 0F A0 0D 93 5F 54 5F 30 0A 02 A4 53 44 47  // ......_T_0...SDG
  3DB0: 56 A5 A4 00 5B 82 4F 0A 50 52 31 35 08 5F 41 44  // V...[.O.PR15._AD
  3DC0: 52 0A 05 08 5F 55 50 43 12 08 04 0A FF 0A FF 00  // R..._UPC........
  3DD0: 00 08 5F 50 4C 44 12 16 01 11 13 0A 10 81 00 00  // .._PLD..........
  3DE0: 00 00 00 00 00 B1 1E 00 00 00 00 00 00 14 47 07  // ..............G.
  3DF0: 5F 44 53 4D 0C 08 5F 54 5F 30 00 A0 47 06 93 68  // _DSM.._T_0..G..h
  3E00: 11 13 0A 10 8F 70 FC A5 75 87 A6 4B BD 0C BA 90  // .....p..u..K....
  3E10: A1 EC 72 F8 A2 4E 04 01 70 99 6A 00 5F 54 5F 30  // ..r..N..p.j._T_0
  3E20: A0 18 93 5F 54 5F 30 00 A0 09 93 69 01 A4 11 03  // ..._T_0....i....
  3E30: 01 07 A1 06 A4 11 03 01 00 A1 28 A0 16 93 5F 54  // ..........(..._T
  3E40: 5F 30 01 A0 0A 93 53 44 47 56 0A FF A4 00 A1 03  // _0....SDGV......
  3E50: A4 01 A1 0F A0 0D 93 5F 54 5F 30 0A 02 A4 53 44  // ......._T_0...SD
  3E60: 47 56 A5 A4 00 5B 82 4F 0A 50 52 31 36 08 5F 41  // GV...[.O.PR16._A
  3E70: 44 52 0A 06 08 5F 55 50 43 12 08 04 0A FF 0A FF  // DR..._UPC.......
  3E80: 00 00 08 5F 50 4C 44 12 16 01 11 13 0A 10 81 00  // ..._PLD.........
  3E90: 00 00 00 00 00 00 B1 1E 00 00 00 00 00 00 14 47  // ...............G
  3EA0: 07 5F 44 53 4D 0C 08 5F 54 5F 30 00 A0 47 06 93  // ._DSM.._T_0..G..
  3EB0: 68 11 13 0A 10 8F 70 FC A5 75 87 A6 4B BD 0C BA  // h.....p..u..K...
  3EC0: 90 A1 EC 72 F8 A2 4E 04 01 70 99 6A 00 5F 54 5F  // ...r..N..p.j._T_
  3ED0: 30 A0 18 93 5F 54 5F 30 00 A0 09 93 69 01 A4 11  // 0..._T_0....i...
  3EE0: 03 01 07 A1 06 A4 11 03 01 00 A1 28 A0 16 93 5F  // ...........(..._
  3EF0: 54 5F 30 01 A0 0A 93 53 44 47 56 0A FF A4 00 A1  // T_0....SDGV.....
  3F00: 03 A4 01 A1 0F A0 0D 93 5F 54 5F 30 0A 02 A4 53  // ........_T_0...S
  3F10: 44 47 56 A5 A4 00 5B 82 4F 0A 50 52 31 37 08 5F  // DGV...[.O.PR17._
  3F20: 41 44 52 0A 07 08 5F 55 50 43 12 08 04 0A FF 0A  // ADR..._UPC......
  3F30: FF 00 00 08 5F 50 4C 44 12 16 01 11 13 0A 10 81  // ...._PLD........
  3F40: 00 00 00 00 00 00 00 B1 1E 00 00 00 00 00 00 14  // ................
  3F50: 47 07 5F 44 53 4D 0C 08 5F 54 5F 30 00 A0 47 06  // G._DSM.._T_0..G.
  3F60: 93 68 11 13 0A 10 8F 70 FC A5 75 87 A6 4B BD 0C  // .h.....p..u..K..
  3F70: BA 90 A1 EC 72 F8 A2 4E 04 01 70 99 6A 00 5F 54  // ....r..N..p.j._T
  3F80: 5F 30 A0 18 93 5F 54 5F 30 00 A0 09 93 69 01 A4  // _0..._T_0....i..
  3F90: 11 03 01 07 A1 06 A4 11 03 01 00 A1 28 A0 16 93  // ............(...
  3FA0: 5F 54 5F 30 01 A0 0A 93 53 44 47 56 0A FF A4 00  // _T_0....SDGV....
  3FB0: A1 03 A4 01 A1 0F A0 0D 93 5F 54 5F 30 0A 02 A4  // ........._T_0...
  3FC0: 53 44 47 56 A5 A4 00 5B 82 36 50 52 31 38 08 5F  // SDGV...[.6PR18._
  3FD0: 41 44 52 0A 08 08 5F 55 50 43 12 08 04 0A FF 0A  // ADR..._UPC......
  3FE0: FF 00 00 08 5F 50 4C 44 12 16 01 11 13 0A 10 81  // ...._PLD........
  3FF0: 00 00 00 00 00 00 00 B1 1E 00 00 00 00 00 00 08  // ................
  4000: 5F 53 30 57 0A 03 5B 80 55 53 42 52 02 0A 54 0A  // _S0W..[.USBR..T.
  4010: 04 5B 81 14 55 53 42 52 02 00 08 50 4D 45 45 01  // .[..USBR...PMEE.
  4020: 00 06 50 4D 45 53 01 14 15 5F 53 54 41 00 A0 0A  // ..PMES..._STA...
  4030: 93 58 48 43 49 00 A4 0A 0F A1 03 A4 00 14 06 5F  // .XHCI.........._
  4040: 44 53 57 03 14 08 5F 52 4D 56 00 A4 00 14 0E 5F  // DSW..._RMV....._
  4050: 50 52 33 00 A4 12 06 01 55 53 42 43 5B 82 44 47  // PR3.....USBC[.DG
  4060: 53 42 55 53 08 5F 41 44 52 0C 03 00 1F 00 5B 80  // SBUS._ADR.....[.
  4070: 53 4D 42 50 02 0A 40 0A C0 5B 81 0D 53 4D 42 50  // SMBP..@..[..SMBP
  4080: 03 00 02 49 32 43 45 01 5B 80 53 4D 50 42 02 0A  // ...I2CE.[.SMPB..
  4090: 20 0A 04 5B 81 0D 53 4D 50 42 03 00 05 53 42 41  //  ..[..SMPB...SBA
  40A0: 52 0B 5B 80 53 4D 42 49 01 79 53 42 41 52 0A 05  // R.[.SMBI.ySBAR..
  40B0: 00 0A 10 5B 81 3A 53 4D 42 49 01 48 53 54 53 08  // ...[.:SMBI.HSTS.
  40C0: 00 08 48 43 4F 4E 08 48 43 4F 4D 08 54 58 53 41  // ..HCON.HCOM.TXSA
  40D0: 08 44 41 54 30 08 44 41 54 31 08 48 42 44 52 08  // .DAT0.DAT1.HBDR.
  40E0: 50 45 43 52 08 52 58 53 41 08 53 44 41 54 10 14  // PECR.RXSA.SDAT..
  40F0: 44 04 53 53 58 42 0A A0 07 53 54 52 54 A4 00 70  // D.SSXB...STRT..p
  4100: 00 49 32 43 45 70 0A BF 48 53 54 53 70 68 54 58  // .I2CEp..HSTSphTX
  4110: 53 41 70 69 48 43 4F 4D 70 0A 48 48 43 4F 4E A0  // SApiHCOMp.HHCON.
  4120: 12 43 4F 4D 50 7D 48 53 54 53 0A FF 48 53 54 53  // .COMP}HSTS..HSTS
  4130: A4 01 A4 00 14 48 04 53 52 58 42 09 A0 09 53 54  // .....H.SRXB...ST
  4140: 52 54 A4 0B FF FF 70 00 49 32 43 45 70 0A BF 48  // RT....p.I2CEp..H
  4150: 53 54 53 70 7D 68 01 00 54 58 53 41 70 0A 44 48  // STSp}h..TXSAp.DH
  4160: 43 4F 4E A0 15 43 4F 4D 50 7D 48 53 54 53 0A FF  // CON..COMP}HSTS..
  4170: 48 53 54 53 A4 44 41 54 30 A4 0B FF FF 14 4A 04  // HSTS.DAT0.....J.
  4180: 53 57 52 42 0B A0 07 53 54 52 54 A4 00 70 00 49  // SWRB...STRT..p.I
  4190: 32 43 45 70 0A BF 48 53 54 53 70 68 54 58 53 41  // 2CEp..HSTSphTXSA
  41A0: 70 69 48 43 4F 4D 70 6A 44 41 54 30 70 0A 48 48  // piHCOMpjDAT0p.HH
  41B0: 43 4F 4E A0 12 43 4F 4D 50 7D 48 53 54 53 0A FF  // CON..COMP}HSTS..
  41C0: 48 53 54 53 A4 01 A4 00 14 4E 04 53 52 44 42 0A  // HSTS.....N.SRDB.
  41D0: A0 09 53 54 52 54 A4 0B FF FF 70 00 49 32 43 45  // ..STRT....p.I2CE
  41E0: 70 0A BF 48 53 54 53 70 7D 68 01 00 54 58 53 41  // p..HSTSp}h..TXSA
  41F0: 70 69 48 43 4F 4D 70 0A 48 48 43 4F 4E A0 15 43  // piHCOMp.HHCON..C
  4200: 4F 4D 50 7D 48 53 54 53 0A FF 48 53 54 53 A4 44  // OMP}HSTS..HSTS.D
  4210: 41 54 30 A4 0B FF FF 14 48 05 53 57 52 57 0B A0  // AT0.....H.SWRW..
  4220: 07 53 54 52 54 A4 00 70 00 49 32 43 45 70 0A BF  // .STRT..p.I2CEp..
  4230: 48 53 54 53 70 68 54 58 53 41 70 69 48 43 4F 4D  // HSTSphTXSApiHCOM
  4240: 7B 6A 0A FF 44 41 54 31 7B 7A 6A 0A 08 00 0A FF  // {j..DAT1{zj.....
  4250: 44 41 54 30 70 0A 4C 48 43 4F 4E A0 12 43 4F 4D  // DAT0p.LHCON..COM
  4260: 50 7D 48 53 54 53 0A FF 48 53 54 53 A4 01 A4 00  // P}HSTS..HSTS....
  4270: 14 4A 05 53 52 44 57 0A A0 09 53 54 52 54 A4 0B  // .J.SRDW...STRT..
  4280: FF FF 70 00 49 32 43 45 70 0A BF 48 53 54 53 70  // ..p.I2CEp..HSTSp
  4290: 7D 68 01 00 54 58 53 41 70 69 48 43 4F 4D 70 0A  // }h..TXSApiHCOMp.
  42A0: 4C 48 43 4F 4E A0 1F 43 4F 4D 50 7D 48 53 54 53  // LHCON..COMP}HSTS
  42B0: 0A FF 48 53 54 53 A4 7D 79 44 41 54 30 0A 08 00  // ..HSTS.}yDAT0...
  42C0: 44 41 54 31 00 A4 0C FF FF FF FF 14 4A 09 53 42  // DAT1........J.SB
  42D0: 4C 57 0C A0 07 53 54 52 54 A4 00 70 6B 49 32 43  // LW...STRT..pkI2C
  42E0: 45 70 0A BF 48 53 54 53 70 68 54 58 53 41 70 69  // Ep..HSTSphTXSApi
  42F0: 48 43 4F 4D 70 87 6A 44 41 54 30 70 00 61 70 83  // HCOMp.jDAT0p.ap.
  4300: 88 6A 00 00 48 42 44 52 70 0A 54 48 43 4F 4E A2  // .j..HBDRp.THCON.
  4310: 41 04 94 87 6A 61 70 0B A0 0F 60 A2 12 90 92 7B  // A...jap...`....{
  4320: 48 53 54 53 0A 80 00 60 76 60 5B 21 0A 32 A0 09  // HSTS...`v`[!.2..
  4330: 92 60 4B 49 4C 4C A4 00 70 0A 80 48 53 54 53 75  // .`KILL..p..HSTSu
  4340: 61 A0 0F 94 87 6A 61 70 83 88 6A 61 00 48 42 44  // a....jap..ja.HBD
  4350: 52 A0 12 43 4F 4D 50 7D 48 53 54 53 0A FF 48 53  // R..COMP}HSTS..HS
  4360: 54 53 A4 01 A4 00 14 40 0D 53 42 4C 52 0B 08 54  // TS.....@.SBLR..T
  4370: 42 55 46 11 04 0B 00 01 A0 07 53 54 52 54 A4 00  // BUF.......STRT..
  4380: 70 6A 49 32 43 45 70 0A BF 48 53 54 53 70 7D 68  // pjI2CEp..HSTSp}h
  4390: 01 00 54 58 53 41 70 69 48 43 4F 4D 70 0A 54 48  // ..TXSApiHCOMp.TH
  43A0: 43 4F 4E 70 0B A0 0F 60 A2 12 90 92 7B 48 53 54  // CONp...`....{HST
  43B0: 53 0A 80 00 60 76 60 5B 21 0A 32 A0 09 92 60 4B  // S...`v`[!.2...`K
  43C0: 49 4C 4C A4 00 70 44 41 54 30 88 54 42 55 46 00  // ILL..pDAT0.TBUF.
  43D0: 00 70 0A 80 48 53 54 53 70 01 61 A2 43 04 95 61  // .p..HSTSp.a.C..a
  43E0: 83 88 54 42 55 46 00 00 70 0B A0 0F 60 A2 12 90  // ..TBUF..p...`...
  43F0: 92 7B 48 53 54 53 0A 80 00 60 76 60 5B 21 0A 32  // .{HSTS...`v`[!.2
  4400: A0 09 92 60 4B 49 4C 4C A4 00 70 48 42 44 52 88  // ...`KILL..pHBDR.
  4410: 54 42 55 46 61 00 70 0A 80 48 53 54 53 75 61 A0  // TBUFa.p..HSTSua.
  4420: 15 43 4F 4D 50 7D 48 53 54 53 0A FF 48 53 54 53  // .COMP}HSTS..HSTS
  4430: A4 54 42 55 46 A4 00 14 4F 04 53 54 52 54 08 70  // .TBUF...O.STRT.p
  4440: 0A C8 60 A2 1D 60 A0 15 7B 48 53 54 53 0A 40 00  // ..`..`..{HSTS.@.
  4450: 76 60 5B 22 01 A0 06 93 60 00 A4 01 A1 04 70 00  // v`["....`.....p.
  4460: 60 70 0B A0 0F 60 A2 1E 60 A0 17 7B 48 53 54 53  // `p...`..`..{HSTS
  4470: 01 00 76 60 5B 21 0A 32 A0 08 93 60 00 4B 49 4C  // ..v`[!.2...`.KIL
  4480: 4C A1 03 A4 00 A4 01 14 2D 43 4F 4D 50 08 70 0B  // L.......-COMP.p.
  4490: A0 0F 60 A2 1F 60 A0 0B 7B 48 53 54 53 0A 02 00  // ..`..`..{HSTS...
  44A0: A4 01 A1 10 76 60 5B 21 0A 32 A0 08 93 60 00 4B  // ....v`[!.2...`.K
  44B0: 49 4C 4C A4 00 14 1C 4B 49 4C 4C 08 7D 48 43 4F  // ILL....KILL.}HCO
  44C0: 4E 0A 02 48 43 4F 4E 7D 48 53 54 53 0A FF 48 53  // N..HCON}HSTS..HS
  44D0: 54 53 5B 82 4E 07 53 45 43 30 08 5F 41 44 52 0C  // TS[.N.SEC0._ADR.
  44E0: 00 00 1A 00 08 5F 44 45 50 12 06 01 50 45 50 44  // ....._DEP...PEPD
  44F0: 08 5F 53 30 57 0A 03 5B 80 50 4D 45 42 02 0A 84  // ._S0W..[.PMEB...
  4500: 0A 04 5B 81 14 50 4D 45 42 02 00 08 50 4D 45 45  // ..[..PMEB...PMEE
  4510: 01 00 06 50 4D 45 53 01 14 06 5F 44 53 57 03 14  // ...PMES..._DSW..
  4520: 32 5F 43 52 53 00 08 52 42 55 46 11 11 0A 0E 86  // 2_CRS..RBUF.....
  4530: 09 00 01 00 00 00 1F 00 00 00 01 79 00 A0 0D 93  // ...........y....
  4540: 50 41 56 50 0A 02 A4 52 42 55 46 A4 11 05 0A 02  // PAVP...RBUF.....
  4550: 79 00 10 82 5B 01 2E 5F 53 42 5F 50 43 49 30 5B  // y...[.._SB_PCI0[
  4560: 82 84 5A 01 47 46 58 30 08 5F 41 44 52 0C 00 00  // ..Z.GFX0._ADR...
  4570: 02 00 08 4E 44 45 50 12 15 03 50 45 50 44 49 32  // ...NDEP...PEPDI2
  4580: 43 37 5E 5E 2E 49 32 43 37 50 4D 49 43 08 5F 44  // C7^^.I2C7PMIC._D
  4590: 45 50 12 06 01 50 45 50 44 08 5F 53 30 57 0A 03  // EP...PEPD._S0W..
  45A0: 14 10 5F 44 4F 53 01 70 7B 68 0A 07 00 44 53 45  // .._DOS.p{h...DSE
  45B0: 4E 14 48 35 5F 44 4F 44 00 70 00 4E 44 49 44 A0  // N.H5_DOD.p.NDID.
  45C0: 15 92 93 44 49 44 4C 00 70 53 44 44 4C 44 49 44  // ...DIDL.pSDDLDID
  45D0: 4C 44 49 44 31 A0 15 92 93 44 44 4C 32 00 70 53  // LDID1....DDL2.pS
  45E0: 44 44 4C 44 44 4C 32 44 49 44 32 A0 15 92 93 44  // DDLDDL2DID2....D
  45F0: 44 4C 33 00 70 53 44 44 4C 44 44 4C 33 44 49 44  // DL3.pSDDLDDL3DID
  4600: 33 A0 15 92 93 44 44 4C 34 00 70 53 44 44 4C 44  // 3....DDL4.pSDDLD
  4610: 44 4C 34 44 49 44 34 A0 15 92 93 44 44 4C 35 00  // DL4DID4....DDL5.
  4620: 70 53 44 44 4C 44 44 4C 35 44 49 44 35 A0 47 05  // pSDDLDDL5DID5.G.
  4630: 93 4E 44 49 44 01 08 54 4D 50 31 12 0C 02 0C FF  // .NDID..TMP1.....
  4640: FF FF FF 0C FF FF FF FF 70 7D 0C 00 00 01 00 44  // ........p}.....D
  4650: 49 44 31 00 88 54 4D 50 31 00 00 A0 15 95 53 4F  // ID1..TMP1.....SO
  4660: 43 53 0A 02 70 0C 39 0F 02 00 88 54 4D 50 31 01  // CS..p.9....TMP1.
  4670: 00 A1 0E 70 0C 38 0F 02 00 88 54 4D 50 31 01 00  // ...p.8....TMP1..
  4680: A4 54 4D 50 31 A0 42 07 93 4E 44 49 44 0A 02 08  // .TMP1.B..NDID...
  4690: 54 4D 50 32 12 11 03 0C FF FF FF FF 0C FF FF FF  // TMP2............
  46A0: FF 0C FF FF FF FF 70 7D 0C 00 00 01 00 44 49 44  // ......p}.....DID
  46B0: 31 00 88 54 4D 50 32 00 00 70 7D 0C 00 00 01 00  // 1..TMP2..p}.....
  46C0: 44 49 44 32 00 88 54 4D 50 32 01 00 A0 16 95 53  // DID2..TMP2.....S
  46D0: 4F 43 53 0A 02 70 0C 39 0F 02 00 88 54 4D 50 32  // OCS..p.9....TMP2
  46E0: 0A 02 00 A1 0F 70 0C 38 0F 02 00 88 54 4D 50 32  // .....p.8....TMP2
  46F0: 0A 02 00 A4 54 4D 50 32 A0 4B 08 93 4E 44 49 44  // ....TMP2.K..NDID
  4700: 0A 03 08 54 4D 50 33 12 16 04 0C FF FF FF FF 0C  // ...TMP3.........
  4710: FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 70 7D  // ..............p}
  4720: 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 33 00  // .....DID1..TMP3.
  4730: 00 70 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D  // .p}.....DID2..TM
  4740: 50 33 01 00 70 7D 0C 00 00 01 00 44 49 44 33 00  // P3..p}.....DID3.
  4750: 88 54 4D 50 33 0A 02 00 A0 16 95 53 4F 43 53 0A  // .TMP3......SOCS.
  4760: 02 70 0C 39 0F 02 00 88 54 4D 50 33 0A 03 00 A1  // .p.9....TMP3....
  4770: 0F 70 0C 38 0F 02 00 88 54 4D 50 33 0A 03 00 A4  // .p.8....TMP3....
  4780: 54 4D 50 33 A0 44 0A 93 4E 44 49 44 0A 04 08 54  // TMP3.D..NDID...T
  4790: 4D 50 34 12 1B 05 0C FF FF FF FF 0C FF FF FF FF  // MP4.............
  47A0: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 70  // ...............p
  47B0: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 34  // }.....DID1..TMP4
  47C0: 00 00 70 7D 0C 00 00 01 00 44 49 44 32 00 88 54  // ..p}.....DID2..T
  47D0: 4D 50 34 01 00 70 7D 0C 00 00 01 00 44 49 44 33  // MP4..p}.....DID3
  47E0: 00 88 54 4D 50 34 0A 02 00 70 7D 0C 00 00 01 00  // ..TMP4...p}.....
  47F0: 44 49 44 34 00 88 54 4D 50 34 0A 03 00 A0 16 95  // DID4..TMP4......
  4800: 53 4F 43 53 0A 02 70 0C 39 0F 02 00 88 54 4D 50  // SOCS..p.9....TMP
  4810: 34 0A 04 00 A1 0F 70 0C 38 0F 02 00 88 54 4D 50  // 4.....p.8....TMP
  4820: 34 0A 04 00 A4 54 4D 50 34 A0 4D 0B 94 4E 44 49  // 4....TMP4.M..NDI
  4830: 44 0A 04 08 54 4D 50 35 12 20 06 0C FF FF FF FF  // D...TMP5. ......
  4840: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C  // ................
  4850: FF FF FF FF 0C FF FF FF FF 70 7D 0C 00 00 01 00  // .........p}.....
  4860: 44 49 44 31 00 88 54 4D 50 35 00 00 70 7D 0C 00  // DID1..TMP5..p}..
  4870: 00 01 00 44 49 44 32 00 88 54 4D 50 35 01 00 70  // ...DID2..TMP5..p
  4880: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 35  // }.....DID3..TMP5
  4890: 0A 02 00 70 7D 0C 00 00 01 00 44 49 44 34 00 88  // ...p}.....DID4..
  48A0: 54 4D 50 35 0A 03 00 70 7D 0C 00 00 01 00 44 49  // TMP5...p}.....DI
  48B0: 44 35 00 88 54 4D 50 35 0A 04 00 A0 16 95 53 4F  // D5..TMP5......SO
  48C0: 43 53 0A 02 70 0C 39 0F 02 00 88 54 4D 50 35 0A  // CS..p.9....TMP5.
  48D0: 05 00 A1 0F 70 0C 38 0F 02 00 88 54 4D 50 35 0A  // ....p.8....TMP5.
  48E0: 05 00 A4 54 4D 50 35 A0 14 95 53 4F 43 53 0A 02  // ...TMP5...SOCS..
  48F0: A4 12 0A 02 0B 00 04 0C 39 0F 02 00 A1 0D A4 12  // ........9.......
  4900: 0A 02 0B 00 04 0C 38 0F 02 00 5B 82 43 08 44 44  // ......8...[.C.DD
  4910: 30 31 14 3C 5F 41 44 52 08 A0 1F 93 7B 0B 00 0F  // 01.<_ADR....{...
  4920: 44 49 44 31 00 0B 00 04 70 01 45 44 50 56 70 44  // DID1....p.EDPVpD
  4930: 49 44 31 44 49 44 58 A4 01 A0 09 93 44 49 44 31  // ID1DIDX.....DID1
  4940: 00 A4 01 A1 0B A4 7B 0B FF FF 44 49 44 31 00 14  // ......{...DID1..
  4950: 0F 5F 44 43 53 00 A4 43 44 44 53 44 49 44 31 14  // ._DCS..CDDSDID1.
  4960: 0F 5F 44 47 53 00 A4 4E 44 44 53 44 49 44 31 14  // ._DGS..NDDSDID1.
  4970: 1F 5F 44 53 53 01 A0 18 93 7B 68 0C 00 00 00 C0  // ._DSS....{h.....
  4980: 00 0C 00 00 00 C0 70 4E 53 54 45 43 53 54 45 5B  // ......pNSTECSTE[
  4990: 82 46 08 44 44 30 32 14 3F 5F 41 44 52 08 A0 21  // .F.DD02.?_ADR..!
  49A0: 93 7B 0B 00 0F 44 49 44 32 00 0B 00 04 70 0A 02  // .{...DID2....p..
  49B0: 45 44 50 56 70 44 49 44 32 44 49 44 58 A4 0A 02  // EDPVpDID2DIDX...
  49C0: A0 0A 93 44 49 44 32 00 A4 0A 02 A1 0B A4 7B 0B  // ...DID2.......{.
  49D0: FF FF 44 49 44 32 00 14 0F 5F 44 43 53 00 A4 43  // ..DID2..._DCS..C
  49E0: 44 44 53 44 49 44 32 14 0F 5F 44 47 53 00 A4 4E  // DDSDID2.._DGS..N
  49F0: 44 44 53 44 49 44 32 14 1F 5F 44 53 53 01 A0 18  // DDSDID2.._DSS...
  4A00: 93 7B 68 0C 00 00 00 C0 00 0C 00 00 00 C0 70 4E  // .{h...........pN
  4A10: 53 54 45 43 53 54 45 5B 82 43 09 44 44 30 33 14  // STECSTE[.C.DD03.
  4A20: 3F 5F 41 44 52 08 A0 21 93 7B 0B 00 0F 44 49 44  // ?_ADR..!.{...DID
  4A30: 33 00 0B 00 04 70 0A 03 45 44 50 56 70 44 49 44  // 3....p..EDPVpDID
  4A40: 33 44 49 44 58 A4 0A 03 A0 0A 93 44 49 44 33 00  // 3DIDX......DID3.
  4A50: A4 0A 03 A1 0B A4 7B 0B FF FF 44 49 44 33 00 14  // ......{...DID3..
  4A60: 1C 5F 44 43 53 00 A0 0A 93 44 49 44 33 00 A4 0A  // ._DCS....DID3...
  4A70: 0B A1 0A A4 43 44 44 53 44 49 44 33 14 0F 5F 44  // ....CDDSDID3.._D
  4A80: 47 53 00 A4 4E 44 44 53 44 49 44 33 14 1F 5F 44  // GS..NDDSDID3.._D
  4A90: 53 53 01 A0 18 93 7B 68 0C 00 00 00 C0 00 0C 00  // SS....{h........
  4AA0: 00 00 C0 70 4E 53 54 45 43 53 54 45 5B 82 43 09  // ...pNSTECSTE[.C.
  4AB0: 44 44 30 34 14 3F 5F 41 44 52 08 A0 21 93 7B 0B  // DD04.?_ADR..!.{.
  4AC0: 00 0F 44 49 44 34 00 0B 00 04 70 0A 04 45 44 50  // ..DID4....p..EDP
  4AD0: 56 70 44 49 44 34 44 49 44 58 A4 0A 04 A0 0A 93  // VpDID4DIDX......
  4AE0: 44 49 44 34 00 A4 0A 04 A1 0B A4 7B 0B FF FF 44  // DID4.......{...D
  4AF0: 49 44 34 00 14 1C 5F 44 43 53 00 A0 0A 93 44 49  // ID4..._DCS....DI
  4B00: 44 34 00 A4 0A 0B A1 0A A4 43 44 44 53 44 49 44  // D4.......CDDSDID
  4B10: 34 14 0F 5F 44 47 53 00 A4 4E 44 44 53 44 49 44  // 4.._DGS..NDDSDID
  4B20: 34 14 1F 5F 44 53 53 01 A0 18 93 7B 68 0C 00 00  // 4.._DSS....{h...
  4B30: 00 C0 00 0C 00 00 00 C0 70 4E 53 54 45 43 53 54  // ........pNSTECST
  4B40: 45 5B 82 43 09 44 44 30 35 14 3F 5F 41 44 52 08  // E[.C.DD05.?_ADR.
  4B50: A0 21 93 7B 0B 00 0F 44 49 44 35 00 0B 00 04 70  // .!.{...DID5....p
  4B60: 0A 05 45 44 50 56 70 44 49 44 35 44 49 44 58 A4  // ..EDPVpDID5DIDX.
  4B70: 0A 05 A0 0A 93 44 49 44 35 00 A4 0A 05 A1 0B A4  // .....DID5.......
  4B80: 7B 0B FF FF 44 49 44 35 00 14 1C 5F 44 43 53 00  // {...DID5..._DCS.
  4B90: A0 0A 93 44 49 44 35 00 A4 0A 0B A1 0A A4 43 44  // ...DID5.......CD
  4BA0: 44 53 44 49 44 35 14 0F 5F 44 47 53 00 A4 4E 44  // DSDID5.._DGS..ND
  4BB0: 44 53 44 49 44 35 14 1F 5F 44 53 53 01 A0 18 93  // DSDID5.._DSS....
  4BC0: 7B 68 0C 00 00 00 C0 00 0C 00 00 00 C0 70 4E 53  // {h...........pNS
  4BD0: 54 45 43 53 54 45 5B 82 43 09 44 44 30 36 14 3F  // TECSTE[.C.DD06.?
  4BE0: 5F 41 44 52 08 A0 21 93 7B 0B 00 0F 44 49 44 36  // _ADR..!.{...DID6
  4BF0: 00 0B 00 04 70 0A 06 45 44 50 56 70 44 49 44 36  // ....p..EDPVpDID6
  4C00: 44 49 44 58 A4 0A 06 A0 0A 93 44 49 44 36 00 A4  // DIDX......DID6..
  4C10: 0A 06 A1 0B A4 7B 0B FF FF 44 49 44 36 00 14 1C  // .....{...DID6...
  4C20: 5F 44 43 53 00 A0 0A 93 44 49 44 36 00 A4 0A 0B  // _DCS....DID6....
  4C30: A1 0A A4 43 44 44 53 44 49 44 36 14 0F 5F 44 47  // ...CDDSDID6.._DG
  4C40: 53 00 A4 4E 44 44 53 44 49 44 36 14 1F 5F 44 53  // S..NDDSDID6.._DS
  4C50: 53 01 A0 18 93 7B 68 0C 00 00 00 C0 00 0C 00 00  // S....{h.........
  4C60: 00 C0 70 4E 53 54 45 43 53 54 45 5B 82 43 09 44  // ..pNSTECSTE[.C.D
  4C70: 44 30 37 14 3F 5F 41 44 52 08 A0 21 93 7B 0B 00  // D07.?_ADR..!.{..
  4C80: 0F 44 49 44 37 00 0B 00 04 70 0A 07 45 44 50 56  // .DID7....p..EDPV
  4C90: 70 44 49 44 37 44 49 44 58 A4 0A 07 A0 0A 93 44  // pDID7DIDX......D
  4CA0: 49 44 37 00 A4 0A 07 A1 0B A4 7B 0B FF FF 44 49  // ID7.......{...DI
  4CB0: 44 37 00 14 1C 5F 44 43 53 00 A0 0A 93 44 49 44  // D7..._DCS....DID
  4CC0: 37 00 A4 0A 0B A1 0A A4 43 44 44 53 44 49 44 37  // 7.......CDDSDID7
  4CD0: 14 0F 5F 44 47 53 00 A4 4E 44 44 53 44 49 44 37  // .._DGS..NDDSDID7
  4CE0: 14 1F 5F 44 53 53 01 A0 18 93 7B 68 0C 00 00 00  // .._DSS....{h....
  4CF0: C0 00 0C 00 00 00 C0 70 4E 53 54 45 43 53 54 45  // .......pNSTECSTE
  4D00: 5B 82 43 09 44 44 30 38 14 3F 5F 41 44 52 08 A0  // [.C.DD08.?_ADR..
  4D10: 21 93 7B 0B 00 0F 44 49 44 38 00 0B 00 04 70 0A  // !.{...DID8....p.
  4D20: 08 45 44 50 56 70 44 49 44 38 44 49 44 58 A4 0A  // .EDPVpDID8DIDX..
  4D30: 08 A0 0A 93 44 49 44 38 00 A4 0A 08 A1 0B A4 7B  // ....DID8.......{
  4D40: 0B FF FF 44 49 44 38 00 14 1C 5F 44 43 53 00 A0  // ...DID8..._DCS..
  4D50: 0A 93 44 49 44 38 00 A4 0A 0B A1 0A A4 43 44 44  // ..DID8.......CDD
  4D60: 53 44 49 44 38 14 0F 5F 44 47 53 00 A4 4E 44 44  // SDID8.._DGS..NDD
  4D70: 53 44 49 44 38 14 1F 5F 44 53 53 01 A0 18 93 7B  // SDID8.._DSS....{
  4D80: 68 0C 00 00 00 C0 00 0C 00 00 00 C0 70 4E 53 54  // h...........pNST
  4D90: 45 43 53 54 45 5B 82 44 17 44 44 31 46 14 1D 5F  // ECSTE[.D.DD1F.._
  4DA0: 41 44 52 08 A0 0A 93 45 44 50 56 00 A4 0A 1F A1  // ADR....EDPV.....
  4DB0: 0B A4 7B 0B FF FF 44 49 44 58 00 14 1B 5F 44 43  // ..{...DIDX..._DC
  4DC0: 53 00 A0 09 93 45 44 50 56 00 A4 00 A1 0A A4 43  // S....EDPV......C
  4DD0: 44 44 53 44 49 44 58 14 0F 5F 44 47 53 00 A4 4E  // DDSDIDX.._DGS..N
  4DE0: 44 44 53 44 49 44 58 14 1F 5F 44 53 53 01 A0 18  // DDSDIDX.._DSS...
  4DF0: 93 7B 68 0C 00 00 00 C0 00 0C 00 00 00 C0 70 4E  // .{h...........pN
  4E00: 53 54 45 43 53 54 45 14 48 0D 5F 42 43 4C 00 A4  // STECSTE.H._BCL..
  4E10: 12 4F 0C 67 0A 50 0A 32 00 01 0A 02 0A 03 0A 04  // .O.g.P.2........
  4E20: 0A 05 0A 06 0A 07 0A 08 0A 09 0A 0A 0A 0B 0A 0C  // ................
  4E30: 0A 0D 0A 0E 0A 0F 0A 10 0A 11 0A 12 0A 13 0A 14  // ................
  4E40: 0A 15 0A 16 0A 17 0A 18 0A 19 0A 1A 0A 1B 0A 1C  // ................
  4E50: 0A 1D 0A 1E 0A 1F 0A 20 0A 21 0A 22 0A 23 0A 24  // ....... .!.".#.$
  4E60: 0A 25 0A 26 0A 27 0A 28 0A 29 0A 2A 0A 2B 0A 2C  // .%.&.'.(.).*.+.,
  4E70: 0A 2D 0A 2E 0A 2F 0A 30 0A 31 0A 32 0A 33 0A 34  // .-.../.0.1.2.3.4
  4E80: 0A 35 0A 36 0A 37 0A 38 0A 39 0A 3A 0A 3B 0A 3C  // .5.6.7.8.9.:.;.<
  4E90: 0A 3D 0A 3E 0A 3F 0A 40 0A 41 0A 42 0A 43 0A 44  // .=.>.?.@.A.B.C.D
  4EA0: 0A 45 0A 46 0A 47 0A 48 0A 49 0A 4A 0A 4B 0A 4C  // .E.F.G.H.I.J.K.L
  4EB0: 0A 4D 0A 4E 0A 4F 0A 50 0A 51 0A 52 0A 53 0A 54  // .M.N.O.P.Q.R.S.T
  4EC0: 0A 55 0A 56 0A 57 0A 58 0A 59 0A 5A 0A 5B 0A 5C  // .U.V.W.X.Y.Z.[.\
  4ED0: 0A 5D 0A 5E 0A 5F 0A 60 0A 61 0A 62 0A 63 0A 64  // .].^._.`.a.b.c.d
  4EE0: 14 1E 5F 42 43 4D 01 A0 17 90 92 95 68 00 92 94  // .._BCM......h...
  4EF0: 68 0A 64 41 49 4E 54 01 68 70 68 42 52 54 4C 14  // h.dAINT.hphBRTL.
  4F00: 0B 5F 42 51 43 00 A4 42 52 54 4C 14 4E 06 53 44  // ._BQC..BRTL.N.SD
  4F10: 44 4C 01 75 4E 44 49 44 70 7B 68 0B 0F 0F 00 60  // DL.uNDIDp{h....`
  4F20: 7D 0C 00 00 00 80 60 61 A0 09 93 44 49 44 4C 60  // }.....`a...DIDL`
  4F30: A4 61 A0 09 93 44 44 4C 32 60 A4 61 A0 09 93 44  // .a...DDL2`.a...D
  4F40: 44 4C 33 60 A4 61 A0 09 93 44 44 4C 34 60 A4 61  // DL3`.a...DDL4`.a
  4F50: A0 09 93 44 44 4C 35 60 A4 61 A0 09 93 44 44 4C  // ...DDL5`.a...DDL
  4F60: 36 60 A4 61 A0 09 93 44 44 4C 37 60 A4 61 A0 09  // 6`.a...DDL7`.a..
  4F70: 93 44 44 4C 38 60 A4 61 A4 00 14 42 07 43 44 44  // .DDL8`.a...B.CDD
  4F80: 53 01 70 7B 68 0B 0F 0F 00 60 A0 07 93 00 60 A4  // S.p{h....`....`.
  4F90: 0A 1D A0 0A 93 43 41 44 4C 60 A4 0A 1F A0 0A 93  // .....CADL`......
  4FA0: 43 41 4C 32 60 A4 0A 1F A0 0A 93 43 41 4C 33 60  // CAL2`......CAL3`
  4FB0: A4 0A 1F A0 0A 93 43 41 4C 34 60 A4 0A 1F A0 0A  // ......CAL4`.....
  4FC0: 93 43 41 4C 35 60 A4 0A 1F A0 0A 93 43 41 4C 36  // .CAL5`......CAL6
  4FD0: 60 A4 0A 1F A0 0A 93 43 41 4C 37 60 A4 0A 1F A0  // `......CAL7`....
  4FE0: 0A 93 43 41 4C 38 60 A4 0A 1F A4 0A 1D 14 48 06  // ..CAL8`.......H.
  4FF0: 4E 44 44 53 01 70 7B 68 0B 0F 0F 00 60 A0 06 93  // NDDS.p{h....`...
  5000: 00 60 A4 00 A0 09 93 4E 41 44 4C 60 A4 01 A0 09  // .`.....NADL`....
  5010: 93 4E 44 4C 32 60 A4 01 A0 09 93 4E 44 4C 33 60  // .NDL2`.....NDL3`
  5020: A4 01 A0 09 93 4E 44 4C 34 60 A4 01 A0 09 93 4E  // .....NDL4`.....N
  5030: 44 4C 35 60 A4 01 A0 09 93 4E 44 4C 36 60 A4 01  // DL5`.....NDL6`..
  5040: A0 09 93 4E 44 4C 37 60 A4 01 A0 09 93 4E 44 4C  // ...NDL7`.....NDL
  5050: 38 60 A4 01 A4 00 5B 80 49 47 44 50 02 00 0B 00  // 8`....[.IGDP....
  5060: 01 5B 81 47 05 49 47 44 50 00 00 40 08 4D 41 44  // .[.G.IGDP..@.MAD
  5070: 52 20 00 40 1E 00 01 47 49 56 44 01 00 01 47 55  // R .@...GIVD...GU
  5080: 4D 41 05 00 08 00 10 00 04 47 4D 46 4E 01 00 1B  // MA.......GMFN...
  5090: 00 20 47 53 54 4D 20 00 40 40 47 53 53 45 01 47  // . GSTM .@@GSSE.G
  50A0: 53 53 42 0E 47 53 45 53 01 00 10 41 53 4C 45 08  // SSB.GSES...ASLE.
  50B0: 00 18 00 40 0A 41 53 4C 53 20 5B 80 49 47 4D 4D  // ...@.ASLS [.IGMM
  50C0: 00 4D 41 44 52 0B 00 30 5B 81 11 49 47 4D 4D 00  // .MADR..0[..IGMM.
  50D0: 00 80 64 10 00 04 44 43 46 45 04 5B 80 49 47 44  // ..d...DCFE.[.IGD
  50E0: 4D 00 41 53 4C 42 0B 00 20 5B 81 48 19 49 47 44  // M.ASLB.. [.H.IGD
  50F0: 4D 00 53 49 47 4E 40 08 53 49 5A 45 20 4F 56 45  // M.SIGN@.SIZE OVE
  5100: 52 20 53 56 45 52 40 10 56 56 45 52 40 08 47 56  // R SVER@.VVER@.GV
  5110: 45 52 40 08 4D 42 4F 58 20 44 4D 4F 44 20 00 40  // ER@.MBOX DMOD .@
  5120: 50 44 52 44 59 20 43 53 54 53 20 43 45 56 54 20  // PDRDY CSTS CEVT 
  5130: 00 40 0A 44 49 44 4C 20 44 44 4C 32 20 44 44 4C  // .@.DIDL DDL2 DDL
  5140: 33 20 44 44 4C 34 20 44 44 4C 35 20 44 44 4C 36  // 3 DDL4 DDL5 DDL6
  5150: 20 44 44 4C 37 20 44 44 4C 38 20 43 50 44 4C 20  //  DDL7 DDL8 CPDL 
  5160: 43 50 4C 32 20 43 50 4C 33 20 43 50 4C 34 20 43  // CPL2 CPL3 CPL4 C
  5170: 50 4C 35 20 43 50 4C 36 20 43 50 4C 37 20 43 50  // PL5 CPL6 CPL7 CP
  5180: 4C 38 20 43 41 44 31 20 43 41 4C 32 20 43 41 4C  // L8 CAD1 CAL2 CAL
  5190: 33 20 43 41 4C 34 20 43 41 4C 35 20 43 41 4C 36  // 3 CAL4 CAL5 CAL6
  51A0: 20 43 41 4C 37 20 43 41 4C 38 20 4E 41 44 4C 20  //  CAL7 CAL8 NADL 
  51B0: 4E 44 4C 32 20 4E 44 4C 33 20 4E 44 4C 34 20 4E  // NDL2 NDL3 NDL4 N
  51C0: 44 4C 35 20 4E 44 4C 36 20 4E 44 4C 37 20 4E 44  // DL5 NDL6 NDL7 ND
  51D0: 4C 38 20 41 53 4C 50 20 54 49 44 58 20 43 48 50  // L8 ASLP TIDX CHP
  51E0: 44 20 43 4C 49 44 20 43 44 43 4B 20 53 58 53 57  // D CLID CDCK SXSW
  51F0: 20 45 56 54 53 20 43 4E 4F 54 20 4E 52 44 59 20  //  EVTS CNOT NRDY 
  5200: 00 40 1E 53 43 49 45 01 47 45 46 43 04 47 58 46  // .@.SCIE.GEFC.GXF
  5210: 43 03 47 45 53 46 08 00 10 50 41 52 4D 20 44 53  // C.GESF...PARM DS
  5220: 4C 50 20 00 40 7A 41 52 44 59 20 41 53 4C 43 20  // LP .@zARDY ASLC 
  5230: 54 43 48 45 20 41 4C 53 49 20 42 43 4C 50 20 50  // TCHE ALSI BCLP P
  5240: 46 49 54 20 43 42 4C 56 20 42 43 4C 4D 40 14 43  // FIT CBLV BCLM@.C
  5250: 50 46 4D 20 45 50 46 4D 20 50 4C 55 54 40 25 50  // PFM EPFM PLUT@%P
  5260: 46 4D 42 20 43 43 44 56 20 50 43 46 54 20 00 40  // FMB CCDV PCFT .@
  5270: 2F 47 56 44 31 80 00 0C 50 48 45 44 20 42 44 44  // /GVD1...PHED BDD
  5280: 43 40 80 08 44 42 54 42 12 32 15 00 0A 07 0A 38  // C@..DBTB.2.....8
  5290: 0B C0 01 0B 00 0E 0A 3F 0B C7 01 0B 07 0E 0B F8  // .......?........
  52A0: 01 0B 38 0E 0B C0 0F 00 00 00 00 00 0B 00 70 0B  // ..8...........p.
  52B0: 07 70 0B 38 70 0B C0 71 0B 00 7E 08 43 44 43 54  // .p.8p..q..~.CDCT
  52C0: 12 24 06 12 04 01 0A A0 12 04 01 0A C8 12 05 01  // .$..............
  52D0: 0B 0B 01 12 05 01 0B 40 01 12 05 01 0B 64 01 12  // .......@.....d..
  52E0: 05 01 0B 90 01 08 53 55 43 43 01 08 4E 56 4C 44  // ......SUCC..NVLD
  52F0: 0A 02 08 43 52 49 54 0A 04 08 4E 43 52 54 0A 06  // ...CRIT...NCRT..
  5300: 14 4F 4F 47 53 43 49 08 14 42 1D 47 42 44 41 08  // .OOGSCI..B.GBDA.
  5310: A0 1A 93 47 45 53 46 00 70 0B 79 02 50 41 52 4D  // ...GESF.p.y.PARM
  5320: 70 00 47 45 53 46 A4 53 55 43 43 A0 1A 93 47 45  // p.GESF.SUCC...GE
  5330: 53 46 01 70 0B 40 02 50 41 52 4D 70 00 47 45 53  // SF.p.@.PARMp.GES
  5340: 46 A4 53 55 43 43 A0 47 04 93 47 45 53 46 0A 04  // F.SUCC.G..GESF..
  5350: 7B 50 41 52 4D 0C 00 00 FF EF 50 41 52 4D 7B 50  // {PARM.....PARM{P
  5360: 41 52 4D 79 83 88 44 42 54 42 49 42 54 54 00 0A  // ARMy..DBTBIBTT..
  5370: 10 00 50 41 52 4D 7D 49 42 54 54 50 41 52 4D 50  // ..PARM}IBTTPARMP
  5380: 41 52 4D 70 00 47 45 53 46 A4 53 55 43 43 A0 4B  // ARMp.GESF.SUCC.K
  5390: 07 93 47 45 53 46 0A 05 70 49 50 53 43 50 41 52  // ..GESF..pIPSCPAR
  53A0: 4D 7D 50 41 52 4D 79 49 50 41 54 0A 08 00 50 41  // M}PARMyIPAT...PA
  53B0: 52 4D 72 50 41 52 4D 0B 00 01 50 41 52 4D 7D 50  // RMrPARM...PARM}P
  53C0: 41 52 4D 79 4C 49 44 53 0A 10 00 50 41 52 4D 72  // ARMyLIDS...PARMr
  53D0: 50 41 52 4D 0C 00 00 01 00 50 41 52 4D 7D 50 41  // PARM.....PARM}PA
  53E0: 52 4D 79 49 42 4C 43 0A 12 00 50 41 52 4D 7D 50  // RMyIBLC...PARM}P
  53F0: 41 52 4D 79 49 42 49 41 0A 14 00 50 41 52 4D 70  // ARMyIBIA...PARMp
  5400: 00 47 45 53 46 A4 53 55 43 43 A0 2D 93 47 45 53  // .GESF.SUCC.-.GES
  5410: 46 0A 06 70 49 54 56 46 50 41 52 4D 7D 50 41 52  // F..pITVFPARM}PAR
  5420: 4D 79 49 54 56 4D 0A 04 00 50 41 52 4D 70 00 47  // MyITVM...PARMp.G
  5430: 45 53 46 A4 53 55 43 43 A0 4C 06 93 47 45 53 46  // ESF.SUCC.L..GESF
  5440: 0A 07 70 47 49 56 44 50 41 52 4D 7F 50 41 52 4D  // ..pGIVDPARM.PARM
  5450: 01 50 41 52 4D 7D 50 41 52 4D 79 47 4D 46 4E 01  // .PARM}PARMyGMFN.
  5460: 00 50 41 52 4D 7D 50 41 52 4D 0B 00 18 50 41 52  // .PARM}PARM...PAR
  5470: 4D 7D 50 41 52 4D 79 49 44 4D 53 0A 11 00 50 41  // M}PARMyIDMS...PA
  5480: 52 4D 7D 79 83 88 43 44 43 54 44 43 46 45 00 0A  // RM}y..CDCTDCFE..
  5490: 15 00 50 41 52 4D 50 41 52 4D 70 01 47 45 53 46  // ..PARMPARMp.GESF
  54A0: A4 53 55 43 43 A0 2A 93 47 45 53 46 0A 0A 70 00  // .SUCC.*.GESF..p.
  54B0: 50 41 52 4D A0 10 49 53 53 43 7D 50 41 52 4D 0A  // PARM..ISSC}PARM.
  54C0: 03 50 41 52 4D 70 00 47 45 53 46 A4 53 55 43 43  // .PARMp.GESF.SUCC
  54D0: 70 00 47 45 53 46 A4 43 52 49 54 14 46 2E 53 42  // p.GESF.CRIT.F.SB
  54E0: 43 42 08 A0 43 04 93 47 45 53 46 00 70 00 50 41  // CB..C..GESF.p.PA
  54F0: 52 4D A0 14 93 50 46 4C 56 46 4D 42 4C 70 0C FD  // RM...PFLVFMBLp..
  5500: 87 0F 00 50 41 52 4D A0 14 93 50 46 4C 56 46 44  // ...PARM...PFLVFD
  5510: 54 50 70 0C BD 87 0F 00 50 41 52 4D 70 00 47 45  // TPp.....PARMp.GE
  5520: 53 46 A4 53 55 43 43 A0 18 93 47 45 53 46 01 70  // SF.SUCC...GESF.p
  5530: 00 47 45 53 46 70 00 50 41 52 4D A4 53 55 43 43  // .GESFp.PARM.SUCC
  5540: A0 19 93 47 45 53 46 0A 03 70 00 47 45 53 46 70  // ...GESF..p.GESFp
  5550: 00 50 41 52 4D A4 53 55 43 43 A0 19 93 47 45 53  // .PARM.SUCC...GES
  5560: 46 0A 04 70 00 47 45 53 46 70 00 50 41 52 4D A4  // F..p.GESFp.PARM.
  5570: 53 55 43 43 A0 19 93 47 45 53 46 0A 05 70 00 47  // SUCC...GESF..p.G
  5580: 45 53 46 70 00 50 41 52 4D A4 53 55 43 43 A0 37  // ESFp.PARM.SUCC.7
  5590: 93 47 45 53 46 0A 06 70 7B 50 41 52 4D 0A 0F 00  // .GESF..p{PARM...
  55A0: 49 54 56 46 70 7A 7B 50 41 52 4D 0A F0 00 0A 04  // ITVFpz{PARM.....
  55B0: 00 49 54 56 4D 70 00 47 45 53 46 70 00 50 41 52  // .ITVMp.GESFp.PAR
  55C0: 4D A4 53 55 43 43 A0 45 04 93 47 45 53 46 0A 07  // M.SUCC.E..GESF..
  55D0: A0 2A 93 50 41 52 4D 00 70 43 4C 49 44 60 A0 1C  // .*.PARM.pCLID`..
  55E0: 7B 0C 00 00 00 80 60 00 7B 43 4C 49 44 0A 0F 43  // {.....`.{CLID..C
  55F0: 4C 49 44 47 4C 49 44 43 4C 49 44 70 00 47 45 53  // LIDGLIDCLIDp.GES
  5600: 46 70 00 50 41 52 4D A4 53 55 43 43 A0 19 93 47  // Fp.PARM.SUCC...G
  5610: 45 53 46 0A 08 70 00 47 45 53 46 70 00 50 41 52  // ESF..p.GESFp.PAR
  5620: 4D A4 53 55 43 43 A0 24 93 47 45 53 46 0A 09 7B  // M.SUCC.$.GESF..{
  5630: 50 41 52 4D 0A FF 49 42 54 54 70 00 47 45 53 46  // PARM..IBTTp.GESF
  5640: 70 00 50 41 52 4D A4 53 55 43 43 A0 45 06 93 47  // p.PARM.SUCC.E..G
  5650: 45 53 46 0A 0A 7B 50 41 52 4D 0A FF 49 50 53 43  // ESF..{PARM..IPSC
  5660: A0 21 7B 7A 50 41 52 4D 0A 08 00 0A FF 00 7B 7A  // .!{zPARM......{z
  5670: 50 41 52 4D 0A 08 00 0A FF 49 50 41 54 76 49 50  // PARM.....IPATvIP
  5680: 41 54 7B 7A 50 41 52 4D 0A 12 00 0A 03 49 42 4C  // AT{zPARM.....IBL
  5690: 43 7B 7A 50 41 52 4D 0A 14 00 0A 07 49 42 49 41  // C{zPARM.....IBIA
  56A0: 70 00 47 45 53 46 70 00 50 41 52 4D A4 53 55 43  // p.GESFp.PARM.SUC
  56B0: 43 A0 35 93 47 45 53 46 0A 0B 7B 7A 50 41 52 4D  // C.5.GESF..{zPARM
  56C0: 01 00 01 49 46 31 45 7B 7A 50 41 52 4D 0A 11 00  // ...IF1E{zPARM...
  56D0: 0A 0F 49 44 4D 53 70 00 47 45 53 46 70 00 50 41  // ..IDMSp.GESFp.PA
  56E0: 52 4D A4 53 55 43 43 A0 19 93 47 45 53 46 0A 10  // RM.SUCC...GESF..
  56F0: 70 00 47 45 53 46 70 00 50 41 52 4D A4 53 55 43  // p.GESFp.PARM.SUC
  5700: 43 A0 2C 93 47 45 53 46 0A 11 70 79 4C 49 44 53  // C.,.GESF..pyLIDS
  5710: 0A 08 00 50 41 52 4D 72 50 41 52 4D 0B 00 01 50  // ...PARMrPARM...P
  5720: 41 52 4D 70 00 47 45 53 46 A4 53 55 43 43 A0 49  // ARMp.GESF.SUCC.I
  5730: 04 93 47 45 53 46 0A 12 A0 26 7B 50 41 52 4D 01  // ..GESF...&{PARM.
  5740: 00 A0 10 93 7A 50 41 52 4D 01 00 01 70 01 49 53  // ....zPARM...p.IS
  5750: 53 43 A1 0C 70 00 47 45 53 46 A4 43 52 49 54 A1  // SC..p.GESF.CRIT.
  5760: 07 70 00 49 53 53 43 70 00 47 45 53 46 70 00 50  // .p.ISSCp.GESFp.P
  5770: 41 52 4D A4 53 55 43 43 A0 19 93 47 45 53 46 0A  // ARM.SUCC...GESF.
  5780: 13 70 00 47 45 53 46 70 00 50 41 52 4D A4 53 55  // .p.GESFp.PARM.SU
  5790: 43 43 A0 24 93 47 45 53 46 0A 14 7B 50 41 52 4D  // CC.$.GESF..{PARM
  57A0: 0A 0F 50 41 56 50 70 00 47 45 53 46 70 00 50 41  // ..PAVPp.GESFp.PA
  57B0: 52 4D A4 53 55 43 43 70 00 47 45 53 46 A4 53 55  // RM.SUCCp.GESF.SU
  57C0: 43 43 A0 11 93 47 45 46 43 0A 04 70 47 42 44 41  // CC...GEFC..pGBDA
  57D0: 47 58 46 43 A0 11 93 47 45 46 43 0A 06 70 53 42  // GXFC...GEFC..pSB
  57E0: 43 42 47 58 46 43 70 00 47 45 46 43 70 01 53 43  // CBGXFCp.GEFCp.SC
  57F0: 49 53 70 00 47 53 53 45 70 00 53 43 49 45 A4 00  // ISp.GSSEp.SCIE..
  5800: 14 19 50 44 52 44 00 A0 0C 92 44 52 44 59 5B 22  // ..PDRD....DRDY["
  5810: 41 53 4C 50 A4 92 44 52 44 59 14 1D 50 53 54 53  // ASLP..DRDY..PSTS
  5820: 00 A0 0E 94 43 53 54 53 0A 02 5B 22 41 53 4C 50  // ....CSTS..["ASLP
  5830: A4 93 43 53 54 53 0A 03 14 42 05 47 4E 4F 54 02  // ..CSTS...B.GNOT.
  5840: A0 07 50 44 52 44 A4 01 70 68 43 45 56 54 70 0A  // ..PDRD..phCEVTp.
  5850: 03 43 53 54 53 A0 2C 90 93 43 48 50 44 00 93 69  // .CSTS.,..CHPD..i
  5860: 00 A0 18 91 94 4F 53 59 53 0B D0 07 95 4F 53 59  // .....OSYS....OSY
  5870: 53 0B D6 07 86 50 43 49 30 69 A1 07 86 47 46 58  // S....PCI0i...GFX
  5880: 30 69 86 47 46 58 30 0A 80 A4 00 14 13 47 48 44  // 0i.GFX0......GHD
  5890: 53 01 70 68 54 49 44 58 A4 47 4E 4F 54 01 00 14  // S.phTIDX.GNOT...
  58A0: 14 47 4C 49 44 01 70 68 43 4C 49 44 A4 47 4E 4F  // .GLID.phCLID.GNO
  58B0: 54 0A 02 00 14 14 47 44 43 4B 01 70 68 43 44 43  // T.....GDCK.phCDC
  58C0: 4B A4 47 4E 4F 54 0A 04 00 14 19 50 41 52 44 00  // K.GNOT.....PARD.
  58D0: A0 0C 92 41 52 44 59 5B 22 41 53 4C 50 A4 92 41  // ...ARDY["ASLP..A
  58E0: 52 44 59 14 4A 12 41 49 4E 54 02 A0 0E 92 7B 54  // RDY.J.AINT....{T
  58F0: 43 48 45 79 01 68 00 00 A4 01 A0 07 50 41 52 44  // CHEy.h......PARD
  5900: A4 01 A0 40 0C 93 68 0A 02 A0 47 09 43 50 46 4D  // ...@..h...G.CPFM
  5910: 7B 43 50 46 4D 0A 0F 60 7B 45 50 46 4D 0A 0F 61  // {CPFM..`{EPFM..a
  5920: A0 2A 93 60 01 A0 0D 7B 61 0A 06 00 70 0A 06 50  // .*.`...{a...p..P
  5930: 46 49 54 A1 17 A0 0D 7B 61 0A 08 00 70 0A 08 50  // FIT....{a...p..P
  5940: 46 49 54 A1 07 70 01 50 46 49 54 A0 2A 93 60 0A  // FIT..p.PFIT.*.`.
  5950: 06 A0 0D 7B 61 0A 08 00 70 0A 08 50 46 49 54 A1  // ...{a...p..PFIT.
  5960: 16 A0 0B 7B 61 01 00 70 01 50 46 49 54 A1 08 70  // ...{a..p.PFIT..p
  5970: 0A 06 50 46 49 54 A0 2A 93 60 0A 08 A0 0B 7B 61  // ..PFIT.*.`....{a
  5980: 01 00 70 01 50 46 49 54 A1 18 A0 0D 7B 61 0A 06  // ..p.PFIT....{a..
  5990: 00 70 0A 06 50 46 49 54 A1 08 70 0A 08 50 46 49  // .p..PFIT..p..PFI
  59A0: 54 A1 0C 7F 50 46 49 54 0A 07 50 46 49 54 7D 50  // T...PFIT..PFIT}P
  59B0: 46 49 54 0C 00 00 00 80 50 46 49 54 70 0A 04 41  // FIT.....PFITp..A
  59C0: 53 4C 43 A1 42 04 A0 28 93 68 01 70 78 77 69 0A  // SLC.B..(.h.pxwi.
  59D0: FF 00 0A 64 00 00 42 43 4C 50 7D 42 43 4C 50 0C  // ...d..BCLP}BCLP.
  59E0: 00 00 00 80 42 43 4C 50 70 0A 02 41 53 4C 43 A1  // ....BCLPp..ASLC.
  59F0: 16 A0 10 93 68 00 70 69 41 4C 53 49 70 01 41 53  // ....h.piALSIp.AS
  5A00: 4C 43 A1 03 A4 01 70 01 41 53 4C 45 A4 00 14 17  // LC....p.ASLE....
  5A10: 53 43 49 50 00 A0 0E 92 93 4F 56 45 52 00 A4 92  // SCIP.....OVER...
  5A20: 47 53 4D 49 A4 00 5B 82 4D 0D 49 53 50 30 08 5F  // GSMI..[.M.ISP0._
  5A30: 41 44 52 0B 38 0F 08 5F 44 44 4E 0D 56 4C 56 32  // ADR.8.._DDN.VLV2
  5A40: 20 49 53 50 20 2D 20 38 30 38 36 30 46 33 38 00  //  ISP - 80860F38.
  5A50: 08 5F 55 49 44 01 08 5F 44 45 50 12 06 01 50 45  // ._UID.._DEP...PE
  5A60: 50 44 14 43 05 5F 53 54 41 00 A0 18 92 95 53 4F  // PD.C._STA.....SO
  5A70: 43 53 0A 02 A0 0A 93 49 53 50 44 01 A4 0A 0F A1  // CS.....ISPD.....
  5A80: 03 A4 00 A1 32 70 0B 39 0F 5F 41 44 52 70 0D 56  // ....2p.9._ADRp.V
  5A90: 4C 56 32 20 49 53 50 20 2D 20 38 30 38 36 30 46  // LV2 ISP - 80860F
  5AA0: 33 39 00 5F 44 44 4E A0 0A 93 49 53 50 44 01 A4  // 39._DDN...ISPD..
  5AB0: 0A 0F A1 03 A4 00 08 53 42 55 46 11 11 0A 0E 86  // .......SBUF.....
  5AC0: 09 00 01 00 00 00 00 00 00 40 00 79 00 14 0B 5F  // .........@.y..._
  5AD0: 43 52 53 00 A4 53 42 55 46 14 06 5F 53 52 53 01  // CRS..SBUF.._SRS.
  5AE0: 14 06 5F 44 49 53 00 14 1D 5F 44 53 4D 04 A0 06  // .._DIS..._DSM...
  5AF0: 93 68 01 A4 01 A1 0F A0 08 93 68 0A 02 A4 0A 02  // .h........h.....
  5B00: A1 04 A4 0A 0F 10 39 5F 50 52 5F 5B 83 0B 43 50  // ......9_PR_[..CP
  5B10: 55 30 01 00 00 00 00 00 5B 83 0B 43 50 55 31 02  // U0......[..CPU1.
  5B20: 00 00 00 00 00 5B 83 0B 43 50 55 32 03 00 00 00  // .....[..CPU2....
  5B30: 00 00 5B 83 0B 43 50 55 33 04 00 00 00 00 00 5B  // ..[..CPU3......[
  5B40: 01 4D 55 54 58 00 5B 80 50 52 54 30 01 0A 80 0A  // .MUTX.[.PRT0....
  5B50: 04 5B 81 0B 50 52 54 30 13 50 38 30 48 20 14 4E  // .[..PRT0.P80H .N
  5B60: 07 50 38 58 48 0A A0 17 93 68 00 70 7D 7B 50 38  // .P8XH....h.p}{P8
  5B70: 30 44 0C 00 FF FF FF 00 69 00 50 38 30 44 A0 1B  // 0D......i.P80D..
  5B80: 93 68 01 70 7D 7B 50 38 30 44 0C FF 00 FF FF 00  // .h.p}{P80D......
  5B90: 79 69 0A 08 00 00 50 38 30 44 A0 1C 93 68 0A 02  // yi....P80D...h..
  5BA0: 70 7D 7B 50 38 30 44 0C FF FF 00 FF 00 79 69 0A  // p}{P80D......yi.
  5BB0: 10 00 00 50 38 30 44 A0 1C 93 68 0A 03 70 7D 7B  // ...P80D...h..p}{
  5BC0: 50 38 30 44 0C FF FF FF 00 00 79 69 0A 18 00 00  // P80D......yi....
  5BD0: 50 38 30 44 70 50 38 30 44 50 38 30 48 5B 80 53  // P80DpP80DP80H[.S
  5BE0: 50 52 54 01 0A B2 0A 02 5B 81 0B 53 50 52 54 11  // PRT.....[..SPRT.
  5BF0: 53 53 4D 50 08 14 12 5F 50 49 43 01 70 68 47 50  // SSMP..._PIC.phGP
  5C00: 49 43 70 68 50 49 43 4D 5B 80 53 57 43 30 01 0B  // ICphPICM[.SWC0..
  5C10: 10 06 0A 0F 5B 81 1E 53 57 43 30 01 47 31 53 5F  // ....[..SWC0.G1S_
  5C20: 08 00 18 47 31 45 5F 08 00 28 47 31 53 32 08 47  // ...G1E_..(G1S2.G
  5C30: 31 53 33 08 5B 80 53 57 43 31 01 50 4D 42 53 0A  // 1S3.[.SWC1.PMBS.
  5C40: 2C 5B 81 15 53 57 43 31 03 00 40 10 47 30 53 5F  // ,[..SWC1..@.G0S_
  5C50: 20 00 20 47 30 45 4E 20 14 42 05 5F 50 54 53 01  //  . G0EN .B._PTS.
  5C60: 70 00 50 38 30 44 50 38 58 48 00 68 70 FF 47 31  // p.P80DP8XH.hp.G1
  5C70: 53 33 70 FF 47 31 53 32 70 01 47 31 53 5F 70 01  // S3p.G1S2p.G1S_p.
  5C80: 47 31 45 5F 70 FF 47 30 53 5F A0 20 5B 12 54 43  // G1E_p.G0S_. [.TC
  5C90: 47 4D 00 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // GM.\/._SB_PCI0LP
  5CA0: 43 42 54 50 4D 5F 50 54 53 5F 68 14 46 13 5F 57  // CBTPM_PTS_h.F._W
  5CB0: 41 4B 09 50 38 58 48 01 0A AB A0 37 4E 45 58 50  // AK.P8XH....7NEXP
  5CC0: A0 18 7B 4F 53 43 43 0A 02 00 5C 2F 03 5F 53 42  // ..{OSCC...\/._SB
  5CD0: 5F 50 43 49 30 4E 48 50 47 A0 18 7B 4F 53 43 43  // _PCI0NHPG..{OSCC
  5CE0: 0A 04 00 5C 2F 03 5F 53 42 5F 50 43 49 30 4E 50  // ...\/._SB_PCI0NP
  5CF0: 4D 45 A0 49 0E 91 93 68 0A 03 93 68 0A 04 A0 14  // ME.I...h...h....
  5D00: 93 50 46 4C 56 46 4D 42 4C A0 09 93 68 0A 04 50  // .PFLVFMBL...h..P
  5D10: 4E 4F 54 A0 0C 7B 43 46 47 44 0C 00 00 00 01 00  // NOT..{CFGD......
  5D20: A0 4B 0B 93 4F 53 59 53 0B D2 07 A0 40 0B 7B 43  // .K..OSYS....@.{C
  5D30: 46 47 44 01 00 A0 4B 05 94 5C 2F 03 5F 50 52 5F  // FGD...K..\/._PR_
  5D40: 43 50 55 30 5F 50 50 43 00 74 5C 2F 03 5F 50 52  // CPU0_PPC.t\/._PR
  5D50: 5F 43 50 55 30 5F 50 50 43 01 5C 2F 03 5F 50 52  // _CPU0_PPC.\/._PR
  5D60: 5F 43 50 55 30 5F 50 50 43 50 4E 4F 54 72 5C 2F  // _CPU0_PPCPNOTr\/
  5D70: 03 5F 50 52 5F 43 50 55 30 5F 50 50 43 01 5C 2F  // ._PR_CPU0_PPC.\/
  5D80: 03 5F 50 52 5F 43 50 55 30 5F 50 50 43 50 4E 4F  // ._PR_CPU0_PPCPNO
  5D90: 54 A1 4A 04 72 5C 2F 03 5F 50 52 5F 43 50 55 30  // T.J.r\/._PR_CPU0
  5DA0: 5F 50 50 43 01 5C 2F 03 5F 50 52 5F 43 50 55 30  // _PPC.\/._PR_CPU0
  5DB0: 5F 50 50 43 50 4E 4F 54 74 5C 2F 03 5F 50 52 5F  // _PPCPNOTt\/._PR_
  5DC0: 43 50 55 30 5F 50 50 43 01 5C 2F 03 5F 50 52 5F  // CPU0_PPC.\/._PR_
  5DD0: 43 50 55 30 5F 50 50 43 50 4E 4F 54 A4 12 04 02  // CPU0_PPCPNOT....
  5DE0: 00 00 14 46 0F 50 4E 4F 54 08 A0 4E 0C 4D 50 45  // ...F.PNOT..N.MPE
  5DF0: 4E A0 31 7B 50 44 43 30 0A 08 00 86 5C 2E 5F 50  // N.1{PDC0....\._P
  5E00: 52 5F 43 50 55 30 0A 80 A0 1A 7B 50 44 43 30 0A  // R_CPU0....{PDC0.
  5E10: 10 00 5B 22 0A 64 86 5C 2E 5F 50 52 5F 43 50 55  // ..[".d.\._PR_CPU
  5E20: 30 0A 81 A0 31 7B 50 44 43 31 0A 08 00 86 5C 2E  // 0...1{PDC1....\.
  5E30: 5F 50 52 5F 43 50 55 31 0A 80 A0 1A 7B 50 44 43  // _PR_CPU1....{PDC
  5E40: 31 0A 10 00 5B 22 0A 64 86 5C 2E 5F 50 52 5F 43  // 1...[".d.\._PR_C
  5E50: 50 55 31 0A 81 A0 31 7B 50 44 43 32 0A 08 00 86  // PU1...1{PDC2....
  5E60: 5C 2E 5F 50 52 5F 43 50 55 32 0A 80 A0 1A 7B 50  // \._PR_CPU2....{P
  5E70: 44 43 32 0A 10 00 5B 22 0A 64 86 5C 2E 5F 50 52  // DC2...[".d.\._PR
  5E80: 5F 43 50 55 32 0A 81 A0 31 7B 50 44 43 33 0A 08  // _CPU2...1{PDC3..
  5E90: 00 86 5C 2E 5F 50 52 5F 43 50 55 33 0A 80 A0 1A  // ..\._PR_CPU3....
  5EA0: 7B 50 44 43 33 0A 10 00 5B 22 0A 64 86 5C 2E 5F  // {PDC3...[".d.\._
  5EB0: 50 52 5F 43 50 55 33 0A 81 A1 1F 86 5C 2E 5F 50  // PR_CPU3.....\._P
  5EC0: 52 5F 43 50 55 30 0A 80 5B 22 0A 64 86 5C 2E 5F  // R_CPU0..[".d.\._
  5ED0: 50 52 5F 43 50 55 30 0A 81 10 8D 7E 04 5F 53 42  // PR_CPU0....~._SB
  5EE0: 5F 08 43 52 54 54 0A 6E 08 41 43 54 54 0A 55 08  // _.CRTT.n.ACTT.U.
  5EF0: 53 43 52 30 0B 02 01 08 53 43 52 31 0B 02 01 08  // SCR0....SCR1....
  5F00: 53 43 52 32 0B 02 01 08 53 43 52 33 0B 02 01 08  // SCR2....SCR3....
  5F10: 47 43 52 30 0A 46 08 47 43 52 31 0A 46 08 47 43  // GCR0.F.GCR1.F.GC
  5F20: 52 32 0A 46 08 47 43 52 33 0A 46 08 47 43 52 34  // R2.F.GCR3.F.GCR4
  5F30: 0A 46 08 50 53 54 30 0A 3C 08 50 53 54 31 0A 3C  // .F.PST0.<.PST1.<
  5F40: 08 50 53 54 32 0A 3C 08 50 53 54 33 0A 3C 08 50  // .PST2.<.PST3.<.P
  5F50: 53 54 34 0A 3C 08 4C 50 4D 56 0A 03 08 50 44 42  // ST4.<.LPMV...PDB
  5F60: 47 00 08 50 44 50 4D 01 08 50 44 42 50 01 08 44  // G..PDPM..PDBP..D
  5F70: 4C 50 4F 12 09 06 01 01 01 0A 19 01 01 08 42 52  // LPO...........BR
  5F80: 51 44 00 08 50 53 43 31 00 08 50 53 43 32 00 08  // QD..PSC1..PSC2..
  5F90: 50 53 43 33 00 08 50 53 41 31 00 08 50 53 41 32  // PSC3..PSA1..PSA2
  5FA0: 00 08 50 53 41 33 00 14 42 0F 5F 49 4E 49 00 70  // ..PSA3..B._INI.p
  5FB0: 44 50 43 54 43 52 54 54 70 44 50 50 54 41 43 54  // DPCTCRTTpDPPTACT
  5FC0: 54 70 44 47 43 30 47 43 52 30 70 44 47 43 31 47  // TpDGC0GCR0pDGC1G
  5FD0: 43 52 31 70 44 47 43 32 47 43 52 32 70 44 47 43  // CR1pDGC2GCR2pDGC
  5FE0: 33 47 43 52 33 70 44 47 43 34 47 43 52 34 70 44  // 3GCR3pDGC4GCR4pD
  5FF0: 47 50 30 50 53 54 30 70 44 47 50 31 50 53 54 31  // GP0PST0pDGP1PST1
  6000: 70 44 47 50 32 50 53 54 32 70 44 47 50 33 50 53  // pDGP2PST2pDGP3PS
  6010: 54 33 70 44 47 50 34 50 53 54 34 70 44 53 43 30  // T3pDGP4PST4pDSC0
  6020: 53 43 52 30 70 44 53 43 31 53 43 52 31 70 44 53  // SCR0pDSC1SCR1pDS
  6030: 43 32 53 43 52 32 70 44 53 43 33 53 43 52 33 70  // C2SCR2pDSC3SCR3p
  6040: 44 4C 50 4D 4C 50 4D 56 70 44 44 42 47 50 44 42  // DLPMLPMVpDDBGPDB
  6050: 47 70 4C 50 4F 45 88 44 4C 50 4F 01 00 70 4C 50  // GpLPOE.DLPO..pLP
  6060: 50 53 88 44 4C 50 4F 0A 02 00 70 4C 50 53 54 88  // PS.DLPO...pLPST.
  6070: 44 4C 50 4F 0A 03 00 70 4C 50 50 43 88 44 4C 50  // DLPO...pLPPC.DLP
  6080: 4F 0A 04 00 70 4C 50 50 46 88 44 4C 50 4F 0A 05  // O...pLPPF.DLPO..
  6090: 00 70 44 50 4D 45 50 44 50 4D 10 4B 0F 50 43 49  // .pDPMEPDPM.K.PCI
  60A0: 30 14 46 0E 5F 49 4E 49 00 70 0B D0 07 4F 53 59  // 0.F._INI.p...OSY
  60B0: 53 A0 46 0D 5B 12 5C 5F 4F 53 49 60 A0 1B 5F 4F  // S.F.[.\_OSI`.._O
  60C0: 53 49 0D 57 69 6E 64 6F 77 73 20 32 30 30 31 00  // SI.Windows 2001.
  60D0: 70 0B D1 07 4F 53 59 53 A0 1F 5F 4F 53 49 0D 57  // p...OSYS.._OSI.W
  60E0: 69 6E 64 6F 77 73 20 32 30 30 31 20 53 50 31 00  // indows 2001 SP1.
  60F0: 70 0B D1 07 4F 53 59 53 A0 1F 5F 4F 53 49 0D 57  // p...OSYS.._OSI.W
  6100: 69 6E 64 6F 77 73 20 32 30 30 31 20 53 50 32 00  // indows 2001 SP2.
  6110: 70 0B D2 07 4F 53 59 53 A0 1B 5F 4F 53 49 0D 57  // p...OSYS.._OSI.W
  6120: 69 6E 64 6F 77 73 20 32 30 30 36 00 70 0B D6 07  // indows 2006.p...
  6130: 4F 53 59 53 A0 1B 5F 4F 53 49 0D 57 69 6E 64 6F  // OSYS.._OSI.Windo
  6140: 77 73 20 32 30 30 39 00 70 0B D9 07 4F 53 59 53  // ws 2009.p...OSYS
  6150: A0 1B 5F 4F 53 49 0D 57 69 6E 64 6F 77 73 20 32  // .._OSI.Windows 2
  6160: 30 31 32 00 70 0B DC 07 4F 53 59 53 A0 1B 5F 4F  // 012.p...OSYS.._O
  6170: 53 49 0D 57 69 6E 64 6F 77 73 20 32 30 31 33 00  // SI.Windows 2013.
  6180: 70 0B DD 07 4F 53 59 53 14 06 4E 48 50 47 08 14  // p...OSYS..NHPG..
  6190: 06 4E 50 4D 45 08 5B 82 47 46 47 50 45 44 08 5F  // .NPME.[.GFGPED._
  61A0: 41 44 52 00 08 5F 48 49 44 0D 49 4E 54 30 30 30  // ADR.._HID.INT000
  61B0: 32 00 08 5F 43 49 44 0D 49 4E 54 30 30 30 32 00  // 2.._CID.INT0002.
  61C0: 08 5F 44 44 4E 0D 56 69 72 74 75 61 6C 20 47 50  // ._DDN.Virtual GP
  61D0: 49 4F 20 63 6F 6E 74 72 6F 6C 6C 65 72 00 08 5F  // IO controller.._
  61E0: 55 49 44 01 08 49 4E 53 54 01 08 58 54 4D 50 00  // UID..INST..XTMP.
  61F0: 5B 80 53 43 49 53 00 0C C0 30 D0 FE 0A 04 5B 81  // [.SCIS...0....[.
  6200: 43 04 53 43 49 53 03 4C 47 42 45 01 4C 48 41 44  // C.SCIS.LGBE.LHAD
  6210: 01 4C 41 54 41 01 4C 44 49 4F 01 4C 41 52 44 01  // .LATA.LDIO.LARD.
  6220: 4C 49 4F 31 01 4C 43 45 50 01 4C 41 4E 42 01 4C  // LIO1.LCEP.LANB.L
  6230: 48 43 49 01 4C 4F 54 47 01 4C 45 43 49 01 4C 48  // HCI.LOTG.LECI.LH
  6240: 53 49 01 14 0B 5F 48 52 56 00 A4 53 4F 43 53 14  // SI..._HRV..SOCS.
  6250: 45 04 5F 44 53 4D 04 A0 36 93 68 11 13 0A 10 69  // E._DSM..6.h....i
  6260: B4 38 8B 95 6F 08 4B 9B 02 2D EF CC 2D 2C 35 A0  // .8..o.K..-..-,5.
  6270: 0E 93 6A 00 A0 09 93 69 01 A4 11 03 01 03 A0 0D  // ..j....i........
  6280: 93 6A 01 A4 72 50 4D 42 53 0A 20 00 A4 00 A1 06  // .j..rPMBS. .....
  6290: A4 11 03 01 00 14 1F 5F 43 52 53 00 08 52 42 55  // ......._CRS..RBU
  62A0: 46 11 0E 0A 0B 89 06 00 09 01 09 00 00 00 79 00  // F.............y.
  62B0: A4 52 42 55 46 14 09 5F 53 54 41 00 A4 0A 0F 14  // .RBUF.._STA.....
  62C0: 39 5F 41 45 49 00 08 52 42 55 46 11 28 0A 25 8C  // 9_AEI..RBUF.(.%.
  62D0: 20 00 01 00 01 00 10 00 02 00 00 00 00 17 00 00  //  ...............
  62E0: 19 00 23 00 00 00 02 00 5C 5F 53 42 2E 47 50 45  // ..#.....\_SB.GPE
  62F0: 44 00 79 00 A4 52 42 55 46 14 45 30 5F 4C 30 32  // D.y..RBUF.E0_L02
  6300: 00 A0 41 05 92 94 53 54 45 50 0A 04 A0 46 04 93  // ..A...STEP...F..
  6310: 5E 5E 2F 03 50 43 49 30 47 4C 41 4E 50 4D 45 53  // ^^/.PCI0GLANPMES
  6320: 01 70 00 5E 5E 2F 03 50 43 49 30 47 4C 41 4E 50  // .p.^^/.PCI0GLANP
  6330: 4D 45 45 70 5E 5E 2F 03 50 43 49 30 47 4C 41 4E  // MEEp^^/.PCI0GLAN
  6340: 50 4D 45 45 60 86 5E 5E 2E 50 43 49 30 47 4C 41  // PMEE`.^^.PCI0GLA
  6350: 4E 0A 02 A0 41 05 92 94 53 54 45 50 0A 04 A0 46  // N...A...STEP...F
  6360: 04 93 5E 5E 2F 03 50 43 49 30 48 44 45 46 50 4D  // ..^^/.PCI0HDEFPM
  6370: 45 53 01 70 00 5E 5E 2F 03 50 43 49 30 48 44 45  // ES.p.^^/.PCI0HDE
  6380: 46 50 4D 45 45 70 5E 5E 2F 03 50 43 49 30 48 44  // FPMEEp^^/.PCI0HD
  6390: 45 46 50 4D 45 45 60 86 5E 5E 2E 50 43 49 30 48  // EFPMEE`.^^.PCI0H
  63A0: 44 45 46 0A 02 A0 4F 04 93 58 48 43 49 00 A0 46  // DEF...O..XHCI..F
  63B0: 04 93 5E 5E 2F 03 50 43 49 30 45 48 43 31 50 4D  // ..^^/.PCI0EHC1PM
  63C0: 45 53 01 70 00 5E 5E 2F 03 50 43 49 30 45 48 43  // ES.p.^^/.PCI0EHC
  63D0: 31 50 4D 45 45 70 5E 5E 2F 03 50 43 49 30 45 48  // 1PMEEp^^/.PCI0EH
  63E0: 43 31 50 4D 45 45 60 86 5E 5E 2E 50 43 49 30 45  // C1PMEE`.^^.PCI0E
  63F0: 48 43 31 0A 02 A1 4F 13 A0 38 94 53 4F 43 53 0A  // HC1...O..8.SOCS.
  6400: 05 7B 5E 5E 2F 03 50 43 49 30 58 48 43 31 50 4D  // .{^^/.PCI0XHC1PM
  6410: 43 53 0B 00 80 58 54 4D 50 A0 17 93 58 54 4D 50  // CS...XTMP...XTMP
  6420: 0B 00 80 86 5E 5E 2E 50 43 49 30 58 48 43 31 0A  // ....^^.PCI0XHC1.
  6430: 02 A1 43 10 A0 4C 04 94 53 4F 43 53 0A 02 7B 5E  // ..C..L..SOCS..{^
  6440: 5E 2F 03 50 43 49 30 58 48 43 31 50 4D 43 53 0B  // ^/.PCI0XHC1PMCS.
  6450: 00 80 58 54 4D 50 A0 2A 93 58 54 4D 50 0B 00 80  // ..XTMP.*.XTMP...
  6460: 70 0A 81 5E 5E 2F 03 50 43 49 30 58 48 43 31 50  // p..^^/.PCI0XHC1P
  6470: 4D 43 48 86 5E 5E 2E 50 43 49 30 58 48 43 31 0A  // MCH.^^.PCI0XHC1.
  6480: 02 A1 43 0B 7B 5E 5E 2F 03 50 43 49 30 58 48 43  // ..C.{^^/.PCI0XHC
  6490: 31 50 4D 43 53 0B 03 01 58 54 4D 50 A0 4F 07 93  // 1PMCS...XTMP.O..
  64A0: 58 54 4D 50 0B 03 01 70 0B 00 01 5E 5E 2F 03 50  // XTMP...p...^^/.P
  64B0: 43 49 30 58 48 43 31 50 4D 43 53 5B 22 0A 0A 7B  // CI0XHC1PMCS["..{
  64C0: 5E 5E 2F 03 50 43 49 30 58 48 43 31 50 4D 43 53  // ^^/.PCI0XHC1PMCS
  64D0: 0B 00 80 58 54 4D 50 A0 1C 93 58 54 4D 50 0B 00  // ...XTMP...XTMP..
  64E0: 80 70 0A 81 5E 5E 2F 03 50 43 49 30 58 48 43 31  // .p..^^/.PCI0XHC1
  64F0: 50 4D 43 48 A1 15 70 0B 03 01 5E 5E 2F 03 50 43  // PMCH..p...^^/.PC
  6500: 49 30 58 48 43 31 50 4D 43 53 5B 22 0A 0A 86 5E  // I0XHC1PMCS["...^
  6510: 5E 2E 50 43 49 30 58 48 43 31 0A 02 A1 18 70 0A  // ^.PCI0XHC1....p.
  6520: 81 5E 5E 2F 03 50 43 49 30 58 48 43 31 50 4D 43  // .^^/.PCI0XHC1PMC
  6530: 48 5B 22 0A 0A A0 42 08 92 93 4F 54 47 4D 00 A0  // H["...B...OTGM..
  6540: 48 07 93 5E 5E 2F 03 50 43 49 30 4F 54 47 31 50  // H..^^/.PCI0OTG1P
  6550: 4D 45 53 01 41 44 42 47 0D 4F 54 47 20 77 61 6B  // MES.ADBG.OTG wak
  6560: 65 00 70 00 5E 5E 2F 03 50 43 49 30 4F 54 47 31  // e.p.^^/.PCI0OTG1
  6570: 50 4D 45 45 70 00 5E 5E 2F 03 50 43 49 30 4F 54  // PMEEp.^^/.PCI0OT
  6580: 47 31 43 50 4D 45 70 00 5E 5E 2F 03 50 43 49 30  // G1CPMEp.^^/.PCI0
  6590: 4F 54 47 31 55 32 45 4E 70 00 5E 5E 2F 03 50 43  // OTG1U2ENp.^^/.PC
  65A0: 49 30 4F 54 47 31 55 33 45 4E 86 5E 5E 2E 50 43  // I0OTG1U3EN.^^.PC
  65B0: 49 30 4F 54 47 31 0A 02 A0 46 04 93 5E 5E 2F 03  // I0OTG1...F..^^/.
  65C0: 50 43 49 30 53 45 43 30 50 4D 45 53 01 70 00 5E  // PCI0SEC0PMES.p.^
  65D0: 5E 2F 03 50 43 49 30 53 45 43 30 50 4D 45 45 70  // ^/.PCI0SEC0PMEEp
  65E0: 5E 5E 2F 03 50 43 49 30 53 45 43 30 50 4D 45 45  // ^^/.PCI0SEC0PMEE
  65F0: 60 86 5E 5E 2E 50 43 49 30 53 45 43 30 0A 02 5B  // `.^^.PCI0SEC0..[
  6600: 82 47 15 47 50 4F 30 08 5F 41 44 52 00 08 5F 48  // .G.GPO0._ADR.._H
  6610: 49 44 0D 49 4E 54 33 33 46 43 00 08 5F 43 49 44  // ID.INT33FC.._CID
  6620: 0D 49 4E 54 33 33 46 43 00 08 5F 44 44 4E 0D 56  // .INT33FC.._DDN.V
  6630: 61 6C 6C 65 79 56 69 65 77 20 47 65 6E 65 72 61  // alleyView Genera
  6640: 6C 20 50 75 72 70 6F 73 65 20 49 6E 70 75 74 2F  // l Purpose Input/
  6650: 4F 75 74 70 75 74 20 28 47 50 49 4F 29 20 63 6F  // Output (GPIO) co
  6660: 6E 74 72 6F 6C 6C 65 72 00 08 5F 55 49 44 01 14  // ntroller.._UID..
  6670: 2B 5F 43 52 53 00 08 52 42 55 46 11 1A 0A 17 86  // +_CRS..RBUF.....
  6680: 09 00 01 00 C0 D0 FE 00 10 00 00 89 06 00 0D 01  // ................
  6690: 31 00 00 00 79 00 A4 52 42 55 46 14 09 5F 53 54  // 1...y..RBUF.._ST
  66A0: 41 00 A4 0A 0F 08 41 56 42 4C 00 14 12 5F 52 45  // A.....AVBL..._RE
  66B0: 47 02 A0 0B 93 68 0A 08 70 69 41 56 42 4C 5B 80  // G....h..piAVBL[.
  66C0: 47 50 4F 50 08 00 0A 0C 5B 81 4E 08 47 50 4F 50  // GPOP....[.N.GPOP
  66D0: 01 02 11 26 0A 23 8C 20 00 01 01 01 00 02 00 00  // ...&.#. ........
  66E0: 00 00 00 00 17 00 00 19 00 23 00 00 00 35 00 5C  // .........#...5.\
  66F0: 5F 53 42 2E 47 50 4F 30 00 42 54 44 33 01 02 11  // _SB.GPO0.BTD3...
  6700: 26 0A 23 8C 20 00 01 01 01 00 02 00 00 00 00 00  // &.#. ...........
  6710: 00 17 00 00 19 00 23 00 00 00 3A 00 5C 5F 53 42  // ......#...:.\_SB
  6720: 2E 47 50 4F 30 00 53 55 53 42 01 02 11 26 0A 23  // .GPO0.SUSB...&.#
  6730: 8C 20 00 01 01 01 00 02 00 00 00 00 00 00 17 00  // . ..............
  6740: 00 19 00 23 00 00 00 3C 00 5C 5F 53 42 2E 47 50  // ...#...<.\_SB.GP
  6750: 4F 30 00 54 43 44 33 01 5B 82 49 08 47 50 4F 31  // O0.TCD3.[.I.GPO1
  6760: 08 5F 41 44 52 00 08 5F 48 49 44 0D 49 4E 54 33  // ._ADR.._HID.INT3
  6770: 33 46 43 00 08 5F 43 49 44 0D 49 4E 54 33 33 46  // 3FC.._CID.INT33F
  6780: 43 00 08 5F 44 44 4E 0D 56 61 6C 6C 65 79 56 69  // C.._DDN.ValleyVi
  6790: 65 77 20 47 50 4E 43 4F 52 45 20 63 6F 6E 74 72  // ew GPNCORE contr
  67A0: 6F 6C 6C 65 72 00 08 5F 55 49 44 0A 02 14 2B 5F  // oller.._UID...+_
  67B0: 43 52 53 00 08 52 42 55 46 11 1A 0A 17 86 09 00  // CRS..RBUF.......
  67C0: 01 00 D0 D0 FE 00 10 00 00 89 06 00 0D 01 30 00  // ..............0.
  67D0: 00 00 79 00 A4 52 42 55 46 14 09 5F 53 54 41 00  // ..y..RBUF.._STA.
  67E0: A4 0A 0F 5B 82 4A 13 47 50 4F 32 08 5F 41 44 52  // ...[.J.GPO2._ADR
  67F0: 00 08 5F 48 49 44 0D 49 4E 54 33 33 46 43 00 08  // .._HID.INT33FC..
  6800: 5F 43 49 44 0D 49 4E 54 33 33 46 43 00 08 5F 44  // _CID.INT33FC.._D
  6810: 44 4E 0D 56 61 6C 6C 65 79 56 69 65 77 20 47 50  // DN.ValleyView GP
  6820: 53 55 53 20 63 6F 6E 74 72 6F 6C 6C 65 72 00 08  // SUS controller..
  6830: 5F 55 49 44 0A 03 14 2B 5F 43 52 53 00 08 52 42  // _UID...+_CRS..RB
  6840: 55 46 11 1A 0A 17 86 09 00 01 00 E0 D0 FE 00 10  // UF..............
  6850: 00 00 89 06 00 0D 01 32 00 00 00 79 00 A4 52 42  // .......2...y..RB
  6860: 55 46 14 09 5F 53 54 41 00 A4 0A 0F 08 41 56 42  // UF.._STA.....AVB
  6870: 4C 00 14 12 5F 52 45 47 02 A0 0B 93 68 0A 08 70  // L..._REG....h..p
  6880: 69 41 56 42 4C 5B 80 47 50 4F 50 08 00 0A 0C 5B  // iAVBL[.GPOP....[
  6890: 81 4E 08 47 50 4F 50 01 02 11 26 0A 23 8C 20 00  // .N.GPOP...&.#. .
  68A0: 01 01 01 00 02 00 00 00 00 00 00 17 00 00 19 00  // ................
  68B0: 23 00 00 00 14 00 5C 5F 53 42 2E 47 50 4F 32 00  // #.....\_SB.GPO2.
  68C0: 57 46 44 33 01 02 11 26 0A 23 8C 20 00 01 01 01  // WFD3...&.#. ....
  68D0: 00 02 00 00 00 00 00 00 17 00 00 19 00 23 00 00  // .............#..
  68E0: 00 16 00 5C 5F 53 42 2E 47 50 4F 32 00 57 57 44  // ...\_SB.GPO2.WWD
  68F0: 33 01 02 11 26 0A 23 8C 20 00 01 01 01 00 02 00  // 3...&.#. .......
  6900: 00 00 00 00 00 17 00 00 19 00 23 00 00 00 1D 00  // ..........#.....
  6910: 5C 5F 53 42 2E 47 50 4F 32 00 57 57 52 33 01 5B  // \_SB.GPO2.WWR3.[
  6920: 82 42 60 50 45 50 44 08 5F 48 49 44 0D 49 4E 54  // .B`PEPD._HID.INT
  6930: 33 33 39 36 00 08 5F 43 49 44 0C 41 D0 0D 80 08  // 3396.._CID.A....
  6940: 5F 55 49 44 01 08 50 45 50 50 00 08 44 45 56 53  // _UID..PEPP..DEVS
  6950: 12 03 01 00 08 44 45 56 58 12 4F 12 12 12 13 02  // .....DEVX.O.....
  6960: 0D 5C 5F 53 42 2E 50 43 49 30 2E 58 48 43 31 00  // .\_SB.PCI0.XHC1.
  6970: 01 12 13 02 0D 5C 5F 53 42 2E 50 43 49 30 2E 45  // .....\_SB.PCI0.E
  6980: 48 43 31 00 01 12 13 02 0D 5C 5F 53 42 2E 50 43  // HC1......\_SB.PC
  6990: 49 30 2E 47 46 58 30 00 01 12 18 02 0D 5C 5F 53  // I0.GFX0......\_S
  69A0: 42 2E 50 43 49 30 2E 47 46 58 30 2E 49 53 50 30  // B.PCI0.GFX0.ISP0
  69B0: 00 01 12 13 02 0D 5C 5F 53 42 2E 50 43 49 30 2E  // ......\_SB.PCI0.
  69C0: 53 45 43 30 00 01 12 0E 02 0D 5C 5F 53 42 2E 49  // SEC0......\_SB.I
  69D0: 32 43 31 00 01 12 0E 02 0D 5C 5F 53 42 2E 49 32  // 2C1......\_SB.I2
  69E0: 43 32 00 01 12 0E 02 0D 5C 5F 53 42 2E 49 32 43  // C2......\_SB.I2C
  69F0: 33 00 01 12 0E 02 0D 5C 5F 53 42 2E 49 32 43 34  // 3......\_SB.I2C4
  6A00: 00 01 12 0E 02 0D 5C 5F 53 42 2E 49 32 43 35 00  // ......\_SB.I2C5.
  6A10: 01 12 0E 02 0D 5C 5F 53 42 2E 49 32 43 36 00 01  // .....\_SB.I2C6..
  6A20: 12 0E 02 0D 5C 5F 53 42 2E 49 32 43 37 00 01 12  // ....\_SB.I2C7...
  6A30: 0E 02 0D 5C 5F 53 42 2E 53 44 48 41 00 01 12 0E  // ...\_SB.SDHA....
  6A40: 02 0D 5C 5F 53 42 2E 53 44 48 42 00 01 12 0E 02  // ..\_SB.SDHB.....
  6A50: 0D 5C 5F 53 42 2E 53 44 48 43 00 01 12 0E 02 0D  // .\_SB.SDHC......
  6A60: 5C 5F 53 42 2E 53 50 49 31 00 01 12 0E 02 0D 5C  // \_SB.SPI1......\
  6A70: 5F 53 42 2E 55 52 54 31 00 01 12 0E 02 0D 5C 5F  // _SB.URT1......\_
  6A80: 53 42 2E 55 52 54 32 00 01 08 43 44 4D 50 12 02  // SB.URT2...CDMP..
  6A90: 02 08 44 45 56 59 12 44 37 16 12 18 03 0D 5C 5F  // ..DEVY.D7.....\_
  6AA0: 50 52 2E 43 50 55 30 00 01 12 09 02 00 12 05 02  // PR.CPU0.........
  6AB0: 0A FF 00 12 18 03 0D 5C 5F 50 52 2E 43 50 55 31  // .......\_PR.CPU1
  6AC0: 00 01 12 09 02 00 12 05 02 0A FF 00 12 18 03 0D  // ................
  6AD0: 5C 5F 50 52 2E 43 50 55 32 00 01 12 09 02 00 12  // \_PR.CPU2.......
  6AE0: 05 02 0A FF 00 12 18 03 0D 5C 5F 50 52 2E 43 50  // .........\_PR.CP
  6AF0: 55 33 00 01 12 09 02 00 12 05 02 0A FF 00 12 1E  // U3..............
  6B00: 03 0D 5C 5F 53 42 2E 50 43 49 30 2E 47 46 58 30  // ..\_SB.PCI0.GFX0
  6B10: 00 01 12 0A 02 00 12 06 02 0A FF 0A 03 12 23 03  // ..............#.
  6B20: 0D 5C 5F 53 42 2E 50 43 49 30 2E 47 46 58 30 2E  // .\_SB.PCI0.GFX0.
  6B30: 49 53 50 30 00 01 12 0A 02 00 12 06 02 0A FF 0A  // ISP0............
  6B40: 03 12 2B 03 0D 5C 5F 53 42 2E 49 32 43 31 00 01  // ..+..\_SB.I2C1..
  6B50: 12 1C 05 00 12 04 02 00 00 12 05 02 01 0A 03 12  // ................
  6B60: 06 02 0A 02 0A 03 12 06 02 0A 03 0A 03 12 2B 03  // ..............+.
  6B70: 0D 5C 5F 53 42 2E 49 32 43 32 00 01 12 1C 05 00  // .\_SB.I2C2......
  6B80: 12 04 02 00 00 12 05 02 01 0A 03 12 06 02 0A 02  // ................
  6B90: 0A 03 12 06 02 0A 03 0A 03 12 2B 03 0D 5C 5F 53  // ..........+..\_S
  6BA0: 42 2E 49 32 43 33 00 01 12 1C 05 00 12 04 02 00  // B.I2C3..........
  6BB0: 00 12 05 02 01 0A 03 12 06 02 0A 02 0A 03 12 06  // ................
  6BC0: 02 0A 03 0A 03 12 2B 03 0D 5C 5F 53 42 2E 49 32  // ......+..\_SB.I2
  6BD0: 43 34 00 01 12 1C 05 00 12 04 02 00 00 12 05 02  // C4..............
  6BE0: 01 0A 03 12 06 02 0A 02 0A 03 12 06 02 0A 03 0A  // ................
  6BF0: 03 12 2B 03 0D 5C 5F 53 42 2E 49 32 43 35 00 01  // ..+..\_SB.I2C5..
  6C00: 12 1C 05 00 12 04 02 00 00 12 05 02 01 0A 03 12  // ................
  6C10: 06 02 0A 02 0A 03 12 06 02 0A 03 0A 03 12 2B 03  // ..............+.
  6C20: 0D 5C 5F 53 42 2E 49 32 43 36 00 01 12 1C 05 00  // .\_SB.I2C6......
  6C30: 12 04 02 00 00 12 05 02 01 0A 03 12 06 02 0A 02  // ................
  6C40: 0A 03 12 06 02 0A 03 0A 03 12 2B 03 0D 5C 5F 53  // ..........+..\_S
  6C50: 42 2E 49 32 43 37 00 01 12 1C 05 00 12 04 02 00  // B.I2C7..........
  6C60: 00 12 05 02 01 0A 03 12 06 02 0A 02 0A 03 12 06  // ................
  6C70: 02 0A 03 0A 03 12 31 03 0D 5C 5F 53 42 2E 50 43  // ......1..\_SB.PC
  6C80: 49 30 2E 58 48 43 31 00 01 12 1D 05 00 12 05 02  // I0.XHC1.........
  6C90: 00 0A 03 12 05 02 01 0A 03 12 06 02 0A 02 0A 03  // ................
  6CA0: 12 06 02 0A 03 0A 03 12 30 03 0D 5C 5F 53 42 2E  // ........0..\_SB.
  6CB0: 50 43 49 30 2E 53 45 43 30 00 01 12 1C 05 00 12  // PCI0.SEC0.......
  6CC0: 04 02 00 00 12 05 02 01 0A 03 12 06 02 0A 02 0A  // ................
  6CD0: 03 12 06 02 0A 03 0A 03 12 2A 03 0D 5C 5F 53 42  // .........*..\_SB
  6CE0: 2E 4C 50 45 41 00 01 12 1B 05 00 12 04 02 00 00  // .LPEA...........
  6CF0: 12 04 02 01 00 12 06 02 0A 02 0A 03 12 06 02 0A  // ................
  6D00: 03 0A 03 12 2B 03 0D 5C 5F 53 42 2E 53 44 48 41  // ....+..\_SB.SDHA
  6D10: 00 01 12 1C 05 00 12 04 02 00 00 12 05 02 01 0A  // ................
  6D20: 03 12 06 02 0A 02 0A 03 12 06 02 0A 03 0A 03 12  // ................
  6D30: 2B 03 0D 5C 5F 53 42 2E 53 44 48 42 00 01 12 1C  // +..\_SB.SDHB....
  6D40: 05 00 12 04 02 00 00 12 05 02 01 0A 03 12 06 02  // ................
  6D50: 0A 02 0A 03 12 06 02 0A 03 0A 03 12 2B 03 0D 5C  // ............+..\
  6D60: 5F 53 42 2E 53 44 48 43 00 01 12 1C 05 00 12 04  // _SB.SDHC........
  6D70: 02 00 00 12 05 02 01 0A 03 12 06 02 0A 02 0A 03  // ................
  6D80: 12 06 02 0A 03 0A 03 12 2B 03 0D 5C 5F 53 42 2E  // ........+..\_SB.
  6D90: 53 50 49 31 00 01 12 1C 05 00 12 04 02 00 00 12  // SPI1............
  6DA0: 05 02 01 0A 03 12 06 02 0A 02 0A 03 12 06 02 0A  // ................
  6DB0: 03 0A 03 12 2B 03 0D 5C 5F 53 42 2E 55 52 54 31  // ....+..\_SB.URT1
  6DC0: 00 01 12 1C 05 00 12 04 02 00 00 12 05 02 01 0A  // ................
  6DD0: 03 12 06 02 0A 02 0A 03 12 06 02 0A 03 0A 03 12  // ................
  6DE0: 2B 03 0D 5C 5F 53 42 2E 55 52 54 32 00 01 12 1C  // +..\_SB.URT2....
  6DF0: 05 00 12 04 02 00 00 12 05 02 01 0A 03 12 06 02  // ................
  6E00: 0A 02 0A 03 12 06 02 0A 03 0A 03 08 42 43 43 44  // ............BCCD
  6E10: 12 2C 01 12 29 02 0D 5C 5F 53 42 2E 53 44 48 41  // .,..)..\_SB.SDHA
  6E20: 00 12 1B 01 12 18 03 12 09 05 00 0A 20 00 0A 03  // ............ ...
  6E30: FF 12 0A 03 0C FC FF FF FF 00 0A 04 00 14 09 5F  // ..............._
  6E40: 53 54 41 00 A4 0A 0F 14 4B 0D 5F 44 53 4D 0C A0  // STA.....K._DSM..
  6E50: 44 07 93 68 11 13 0A 10 E0 BF FE B8 F8 BA 4B 45  // D..h..........KE
  6E60: AE CD 49 FB 91 13 7B 21 A0 09 93 6A 00 A4 11 03  // ..I...{!...j....
  6E70: 01 0F A0 0D 93 6A 01 70 01 50 45 50 50 A4 0A 0F  // .....j.p.PEPP...
  6E80: A0 19 93 6A 0A 02 A0 09 93 69 00 A4 44 45 56 53  // ...j.....i..DEVS
  6E90: A0 09 93 69 01 A4 44 45 56 58 A0 29 93 6A 0A 03  // ...i..DEVX.).j..
  6EA0: 70 0D 5C 5F 53 42 2E 53 44 48 41 00 88 43 44 4D  // p.\_SB.SDHA..CDM
  6EB0: 50 00 00 70 45 4D 31 41 88 43 44 4D 50 01 00 A4  // P..pEM1A.CDMP...
  6EC0: 43 44 4D 50 A0 4C 05 93 68 11 13 0A 10 A0 40 EB  // CDMP.L..h.....@.
  6ED0: C4 D2 6C E2 11 BC FD 08 00 20 0C 9A 66 A0 09 93  // ..l...... ..f...
  6EE0: 6A 00 A4 11 03 01 07 A0 09 93 6A 01 A4 44 45 56  // j.........j..DEV
  6EF0: 59 A0 2F 93 6A 0A 02 70 45 4D 31 41 60 72 60 0A  // Y./.j..pEM1A`r`.
  6F00: 84 60 70 60 88 83 88 83 88 83 88 83 88 42 43 43  // .`p`.........BCC
  6F10: 44 00 00 01 00 00 00 00 00 0A 04 00 A4 42 43 43  // D............BCC
  6F20: 44 A4 01 5B 82 48 1C 53 44 48 41 08 5F 41 44 52  // D..[.H.SDHA._ADR
  6F30: 00 08 5F 48 49 44 0D 38 30 38 36 30 46 31 34 00  // .._HID.80860F14.
  6F40: 08 5F 43 49 44 0D 50 4E 50 30 44 34 30 00 08 5F  // ._CID.PNP0D40.._
  6F50: 44 44 4E 0D 49 6E 74 65 6C 28 52 29 20 65 4D 4D  // DDN.Intel(R) eMM
  6F60: 43 20 43 6F 6E 74 72 6F 6C 6C 65 72 20 2D 20 38  // C Controller - 8
  6F70: 30 38 36 30 46 31 34 00 08 5F 55 49 44 01 08 5F  // 0860F14.._UID.._
  6F80: 44 45 50 12 06 01 50 45 50 44 08 52 42 46 31 11  // DEP...PEPD.RBF1.
  6F90: 1A 0A 17 86 09 00 01 00 00 00 00 00 10 00 00 89  // ................
  6FA0: 06 00 05 01 2D 00 00 00 79 00 08 52 42 46 32 11  // ....-...y..RBF2.
  6FB0: 1A 0A 17 86 09 00 01 00 00 00 00 00 10 00 00 89  // ................
  6FC0: 06 00 05 01 2C 00 00 00 79 00 14 49 06 5F 43 52  // ....,...y..I._CR
  6FD0: 53 00 8A 52 42 46 31 0A 04 42 30 42 31 8A 52 42  // S..RBF1..B0B1.RB
  6FE0: 46 31 0A 08 42 30 4C 31 70 45 4D 30 41 42 30 42  // F1..B0L1pEM0AB0B
  6FF0: 31 70 45 4D 30 4C 42 30 4C 31 8A 52 42 46 32 0A  // 1pEM0LB0L1.RBF2.
  7000: 04 42 30 42 32 8A 52 42 46 32 0A 08 42 30 4C 32  // .B0B2.RBF2..B0L2
  7010: 70 45 4D 30 41 42 30 42 32 70 45 4D 30 4C 42 30  // pEM0AB0B2pEM0LB0
  7020: 4C 32 A0 0C 93 45 4D 56 52 01 A4 52 42 46 32 A4  // L2...EMVR..RBF2.
  7030: 52 42 46 31 14 09 5F 53 54 41 00 A4 0A 0F 14 37  // RBF1.._STA.....7
  7040: 5F 50 53 33 00 7D 50 53 41 54 0A 03 50 53 41 54  // _PS3.}PSAT..PSAT
  7050: 7D 50 53 41 54 00 50 53 41 54 A0 1B 91 95 53 4F  // }PSAT.PSAT....SO
  7060: 43 53 0A 02 90 93 53 4F 43 53 0A 02 93 45 4D 56  // CS....SOCS...EMV
  7070: 52 01 5B 22 0A 02 14 3A 5F 50 53 30 00 7B 50 53  // R.["...:_PS0.{PS
  7080: 41 54 0C FC FF FF FF 50 53 41 54 7D 50 53 41 54  // AT.....PSAT}PSAT
  7090: 00 50 53 41 54 A0 1B 91 95 53 4F 43 53 0A 02 90  // .PSAT....SOCS...
  70A0: 93 53 4F 43 53 0A 02 93 45 4D 56 52 01 5B 22 0A  // .SOCS...EMVR.[".
  70B0: 02 5B 80 4B 45 59 53 00 45 4D 31 41 0B 00 01 5B  // .[.KEYS.EM1A...[
  70C0: 81 0E 4B 45 59 53 43 00 40 42 50 53 41 54 20 14  // ..KEYSC.@BPSAT .
  70D0: 06 5F 44 49 53 00 5B 82 15 45 4D 4D 44 08 5F 41  // ._DIS.[..EMMD._A
  70E0: 44 52 0A 08 14 08 5F 52 4D 56 00 A4 00 5B 82 4B  // DR...._RMV...[.K
  70F0: 40 53 44 48 42 08 5F 41 44 52 00 08 5F 48 49 44  // @SDHB._ADR.._HID
  7100: 0D 49 4E 54 33 33 42 42 00 08 5F 43 49 44 0D 50  // .INT33BB.._CID.P
  7110: 4E 50 30 44 34 30 00 08 5F 44 44 4E 0D 49 6E 74  // NP0D40.._DDN.Int
  7120: 65 6C 28 52 29 20 53 44 49 4F 20 43 6F 6E 74 72  // el(R) SDIO Contr
  7130: 6F 6C 6C 65 72 20 2D 20 38 30 38 36 30 46 31 35  // oller - 80860F15
  7140: 00 08 5F 55 49 44 0A 02 08 5F 48 52 56 0A 02 08  // .._UID..._HRV...
  7150: 5F 44 45 50 12 0A 02 50 45 50 44 47 50 4F 32 08  // _DEP...PEPDGPO2.
  7160: 50 53 54 53 00 08 52 42 55 46 11 1A 0A 17 86 09  // PSTS..RBUF......
  7170: 00 01 00 00 00 00 00 10 00 00 89 06 00 05 01 2E  // ................
  7180: 00 00 00 79 00 14 33 5F 43 52 53 00 8A 52 42 55  // ...y..3_CRS..RBU
  7190: 46 0A 04 42 30 42 41 8A 52 42 55 46 0A 08 42 30  // F..B0BA.RBUF..B0
  71A0: 4C 4E 70 53 49 30 41 42 30 42 41 70 53 49 30 4C  // LNpSI0AB0BApSI0L
  71B0: 42 30 4C 4E A4 52 42 55 46 14 2D 5F 53 54 41 00  // B0LN.RBUF.-_STA.
  71C0: A0 12 92 94 53 54 45 50 0A 04 70 53 44 4D 44 5F  // ....STEP..pSDMD_
  71D0: 48 52 56 A0 10 91 93 53 49 30 41 00 93 53 44 32  // HRV....SI0A..SD2
  71E0: 44 01 A4 00 A4 0A 0F 14 06 5F 44 49 53 00 14 1B  // D........_DIS...
  71F0: 5F 50 53 33 00 7D 50 53 41 54 0A 03 50 53 41 54  // _PS3.}PSAT..PSAT
  7200: 7D 50 53 41 54 00 50 53 41 54 14 49 04 5F 50 53  // }PSAT.PSAT.I._PS
  7210: 30 00 7B 50 53 41 54 0C FC FF FF FF 50 53 41 54  // 0.{PSAT.....PSAT
  7220: 7D 50 53 41 54 00 50 53 41 54 A0 29 93 50 53 54  // }PSAT.PSAT.).PST
  7230: 53 00 A0 21 93 5E 5E 2E 47 50 4F 32 41 56 42 4C  // S..!.^^.GPO2AVBL
  7240: 01 70 01 5E 5E 2E 47 50 4F 32 57 46 44 33 70 01  // .p.^^.GPO2WFD3p.
  7250: 50 53 54 53 5B 80 4B 45 59 53 00 53 49 31 41 0B  // PSTS[.KEYS.SI1A.
  7260: 00 01 5B 81 0E 4B 45 59 53 43 00 40 42 50 53 41  // ..[..KEYSC.@BPSA
  7270: 54 20 5B 82 4C 0C 42 52 43 4D 08 5F 41 44 52 01  // T [.L.BRCM._ADR.
  7280: 08 5F 44 45 50 12 06 01 47 50 4F 32 14 14 5F 53  // ._DEP...GPO2.._S
  7290: 54 41 00 A0 0A 93 42 44 49 44 0A 03 A4 00 A4 0A  // TA....BDID......
  72A0: 0F 14 08 5F 52 4D 56 00 A4 00 08 5F 50 52 57 12  // ..._RMV...._PRW.
  72B0: 04 02 00 00 08 5F 53 34 57 0A 02 08 5F 53 30 57  // ....._S4W..._S0W
  72C0: 0A 02 14 1F 5F 43 52 53 00 08 52 42 55 46 11 0E  // ...._CRS..RBUF..
  72D0: 0A 0B 89 06 00 13 01 49 00 00 00 79 00 A4 52 42  // .......I...y..RB
  72E0: 55 46 14 2A 5F 50 53 33 00 A0 23 93 5E 5E 5E 2E  // UF.*_PS3..#.^^^.
  72F0: 47 50 4F 32 41 56 42 4C 01 70 00 5E 5E 5E 2E 47  // GPO2AVBL.p.^^^.G
  7300: 50 4F 32 57 46 44 33 70 00 50 53 54 53 14 32 5F  // PO2WFD3p.PSTS.2_
  7310: 50 53 30 00 A0 2B 93 50 53 54 53 00 A0 23 93 5E  // PS0..+.PSTS..#.^
  7320: 5E 5E 2E 47 50 4F 32 41 56 42 4C 01 70 01 5E 5E  // ^^.GPO2AVBL.p.^^
  7330: 5E 2E 47 50 4F 32 57 46 44 33 70 01 50 53 54 53  // ^.GPO2WFD3p.PSTS
  7340: 5B 82 4E 07 42 52 43 32 08 5F 41 44 52 0A 02 14  // [.N.BRC2._ADR...
  7350: 14 5F 53 54 41 00 A0 0A 93 42 44 49 44 0A 03 A4  // ._STA....BDID...
  7360: 00 A4 0A 0F 14 08 5F 52 4D 56 00 A4 00 14 42 05  // ......_RMV....B.
  7370: 5F 43 52 53 00 08 4E 41 4D 5F 11 12 0A 0F 5C 5F  // _CRS..NAM_....\_
  7380: 53 42 2E 53 44 48 42 2E 42 52 43 4D 00 08 53 50  // SB.SDHB.BRCM..SP
  7390: 42 5F 11 0F 0A 0C 8E 18 00 01 00 C0 02 00 00 01  // B_..............
  73A0: 00 00 08 45 4E 44 5F 11 05 0A 02 79 00 73 53 50  // ...END_....y.sSP
  73B0: 42 5F 4E 41 4D 5F 60 73 60 45 4E 44 5F 61 A4 61  // B_NAM_`s`END_a.a
  73C0: 5B 82 48 13 42 52 43 33 08 5F 41 44 52 01 08 5F  // [.H.BRC3._ADR.._
  73D0: 44 45 50 12 06 01 47 50 4F 32 08 5F 48 49 44 0D  // DEP...GPO2._HID.
  73E0: 42 43 4D 34 33 32 31 00 08 5F 43 49 44 0D 42 43  // BCM4321.._CID.BC
  73F0: 4D 34 33 32 34 31 00 14 14 5F 53 54 41 00 A0 0B  // M43241..._STA...
  7400: 93 42 44 49 44 0A 03 A4 0A 0F A4 00 14 08 5F 52  // .BDID........._R
  7410: 4D 56 00 A4 00 08 5F 50 52 57 12 04 02 00 00 08  // MV...._PRW......
  7420: 5F 53 34 57 0A 02 08 5F 53 30 57 0A 02 14 47 06  // _S4W..._S0W...G.
  7430: 5F 43 52 53 00 08 52 42 55 46 11 45 05 0A 51 89  // _CRS..RBUF.E..Q.
  7440: 06 00 13 01 49 00 00 00 8C 20 00 01 00 01 00 11  // ....I.... ......
  7450: 00 03 00 00 00 00 17 00 00 19 00 23 00 00 00 0F  // ...........#....
  7460: 00 5C 5F 53 42 2E 47 50 4F 32 00 8C 20 00 01 01  // .\_SB.GPO2.. ...
  7470: 01 00 02 00 00 00 00 00 00 17 00 00 19 00 23 00  // ..............#.
  7480: 00 00 14 00 5C 5F 53 42 2E 47 50 4F 32 00 79 00  // ....\_SB.GPO2.y.
  7490: A4 52 42 55 46 14 2A 5F 50 53 33 00 A0 23 93 5E  // .RBUF.*_PS3..#.^
  74A0: 5E 5E 2E 47 50 4F 32 41 56 42 4C 01 70 00 5E 5E  // ^^.GPO2AVBL.p.^^
  74B0: 5E 2E 47 50 4F 32 57 46 44 33 70 00 50 53 54 53  // ^.GPO2WFD3p.PSTS
  74C0: 14 06 5F 50 53 32 00 14 32 5F 50 53 30 00 A0 2B  // .._PS2..2_PS0..+
  74D0: 93 50 53 54 53 00 A0 23 93 5E 5E 5E 2E 47 50 4F  // .PSTS..#.^^^.GPO
  74E0: 32 41 56 42 4C 01 70 01 5E 5E 5E 2E 47 50 4F 32  // 2AVBL.p.^^^.GPO2
  74F0: 57 46 44 33 70 01 50 53 54 53 5B 82 47 26 53 44  // WFD3p.PSTS[.G&SD
  7500: 48 43 08 5F 41 44 52 00 08 5F 48 49 44 0D 38 30  // HC._ADR.._HID.80
  7510: 38 36 30 46 31 34 00 08 5F 43 49 44 0D 50 4E 50  // 860F14.._CID.PNP
  7520: 30 44 34 30 00 08 5F 44 44 4E 0D 49 6E 74 65 6C  // 0D40.._DDN.Intel
  7530: 28 52 29 20 53 44 20 43 61 72 64 20 43 6F 6E 74  // (R) SD Card Cont
  7540: 72 6F 6C 6C 65 72 20 2D 20 38 30 38 36 30 46 31  // roller - 80860F1
  7550: 36 00 08 5F 55 49 44 0A 03 08 5F 44 45 50 12 0A  // 6.._UID..._DEP..
  7560: 02 50 45 50 44 47 50 4F 30 08 52 42 55 46 11 41  // .PEPDGPO0.RBUF.A
  7570: 06 0A 5D 86 09 00 01 00 00 00 00 00 10 00 00 89  // ..].............
  7580: 06 00 05 01 2F 00 00 00 8C 20 00 01 00 01 00 1D  // ..../.... ......
  7590: 00 03 00 00 10 27 17 00 00 19 00 23 00 00 00 26  // .....'.....#...&
  75A0: 00 5C 5F 53 42 2E 47 50 4F 30 00 8C 20 00 01 01  // .\_SB.GPO0.. ...
  75B0: 01 00 09 00 00 00 00 00 00 17 00 00 19 00 23 00  // ..............#.
  75C0: 00 00 26 00 5C 5F 53 42 2E 47 50 4F 30 00 79 00  // ..&.\_SB.GPO0.y.
  75D0: 08 41 42 55 46 11 47 0A 0A A3 86 09 00 01 00 00  // .ABUF.G.........
  75E0: 00 00 00 10 00 00 89 06 00 05 01 2F 00 00 00 8C  // .........../....
  75F0: 20 00 01 00 01 00 1D 00 03 00 00 10 27 17 00 00  //  ...........'...
  7600: 19 00 23 00 00 00 26 00 5C 5F 53 42 2E 47 50 4F  // ..#...&.\_SB.GPO
  7610: 30 00 8C 20 00 01 01 01 00 09 00 00 00 00 00 00  // 0.. ............
  7620: 17 00 00 19 00 23 00 00 00 26 00 5C 5F 53 42 2E  // .....#...&.\_SB.
  7630: 47 50 4F 30 00 8C 20 00 01 01 01 00 0A 00 00 00  // GPO0.. .........
  7640: 00 00 00 17 00 00 19 00 23 00 00 00 28 00 5C 5F  // ........#...(.\_
  7650: 53 42 2E 47 50 4F 30 00 8C 20 00 01 01 01 00 0A  // SB.GPO0.. ......
  7660: 00 00 00 00 00 00 17 00 00 19 00 23 00 00 00 29  // ...........#...)
  7670: 00 5C 5F 53 42 2E 47 50 4F 30 00 79 00 14 41 07  // .\_SB.GPO0.y..A.
  7680: 5F 43 52 53 00 8A 52 42 55 46 0A 04 42 30 42 41  // _CRS..RBUF..B0BA
  7690: 8A 52 42 55 46 0A 08 42 30 4C 4E 70 53 44 30 41  // .RBUF..B0LNpSD0A
  76A0: 42 30 42 41 70 53 44 30 4C 42 30 4C 4E 8A 41 42  // B0BApSD0LB0LN.AB
  76B0: 55 46 0A 04 42 30 42 58 8A 41 42 55 46 0A 08 42  // UF..B0BX.ABUF..B
  76C0: 30 4C 58 70 53 44 30 41 42 30 42 58 70 53 44 30  // 0LXpSD0AB0BXpSD0
  76D0: 4C 42 30 4C 58 A0 14 90 93 42 44 49 44 0A 03 93  // LB0LX....BDID...
  76E0: 4F 53 53 4C 01 A4 41 42 55 46 A4 52 42 55 46 14  // OSSL..ABUF.RBUF.
  76F0: 1A 5F 53 54 41 00 A0 10 91 93 53 44 30 41 00 93  // ._STA.....SD0A..
  7700: 53 44 33 44 01 A4 00 A4 0A 0F 14 1B 5F 50 53 33  // SD3D........_PS3
  7710: 00 7D 50 53 41 54 0A 03 50 53 41 54 7D 50 53 41  // .}PSAT..PSAT}PSA
  7720: 54 00 50 53 41 54 14 1E 5F 50 53 30 00 7B 50 53  // T.PSAT.._PS0.{PS
  7730: 41 54 0C FC FF FF FF 50 53 41 54 7D 50 53 41 54  // AT.....PSAT}PSAT
  7740: 00 50 53 41 54 5B 80 4B 45 59 53 00 53 44 31 41  // .PSAT[.KEYS.SD1A
  7750: 0B 00 01 5B 81 0E 4B 45 59 53 43 00 40 42 50 53  // ...[..KEYSC.@BPS
  7760: 41 54 20 5B 82 42 0C 4D 48 53 49 08 5F 41 44 52  // AT [.B.MHSI._ADR
  7770: 00 08 5F 48 49 44 0D 38 30 38 36 30 46 35 30 00  // .._HID.80860F50.
  7780: 08 5F 43 49 44 0D 38 30 38 36 30 46 35 30 00 08  // ._CID.80860F50..
  7790: 5F 44 44 4E 0D 49 6E 74 65 6C 28 52 29 20 48 53  // _DDN.Intel(R) HS
  77A0: 49 20 43 6F 6E 74 72 6F 6C 6C 65 72 20 2D 20 38  // I Controller - 8
  77B0: 30 38 36 30 46 35 30 00 08 52 42 55 46 11 1A 0A  // 0860F50..RBUF...
  77C0: 17 86 09 00 01 00 00 00 00 00 10 00 00 89 06 00  // ................
  77D0: 05 01 2C 00 00 00 79 00 14 33 5F 43 52 53 00 8A  // ..,...y..3_CRS..
  77E0: 52 42 55 46 0A 04 42 30 42 41 8A 52 42 55 46 0A  // RBUF..B0BA.RBUF.
  77F0: 08 42 30 4C 4E 70 4D 48 30 41 42 30 42 41 70 4D  // .B0LNpMH0AB0BApM
  7800: 48 30 4C 42 30 4C 4E A4 52 42 55 46 14 1A 5F 53  // H0LB0LN.RBUF.._S
  7810: 54 41 00 A0 10 91 93 4D 48 30 41 00 93 48 53 49  // TA.....MH0A..HSI
  7820: 44 01 A4 00 A4 0A 0F 5B 82 46 0B 47 44 4D 31 08  // D......[.F.GDM1.
  7830: 5F 48 49 44 0D 49 4E 54 4C 39 43 36 30 00 08 5F  // _HID.INTL9C60.._
  7840: 44 44 4E 0D 49 6E 74 65 6C 28 52 29 20 44 4D 41  // DDN.Intel(R) DMA
  7850: 20 43 6F 6E 74 72 6F 6C 6C 65 72 20 23 31 20 2D  //  Controller #1 -
  7860: 20 49 4E 54 4C 39 43 36 30 00 08 5F 55 49 44 01  //  INTL9C60.._UID.
  7870: 08 52 42 55 46 11 1A 0A 17 86 09 00 01 00 00 00  // .RBUF...........
  7880: 00 00 40 00 00 89 06 00 05 01 2A 00 00 00 79 00  // ..@.......*...y.
  7890: 14 33 5F 43 52 53 00 8A 52 42 55 46 0A 04 42 30  // .3_CRS..RBUF..B0
  78A0: 42 41 8A 52 42 55 46 0A 08 42 30 4C 4E 70 44 31  // BA.RBUF..B0LNpD1
  78B0: 30 41 42 30 42 41 70 44 31 30 4C 42 30 4C 4E A4  // 0AB0BApD10LB0LN.
  78C0: 52 42 55 46 14 1A 5F 53 54 41 00 A0 10 91 93 44  // RBUF.._STA.....D
  78D0: 31 30 41 00 93 4C 31 30 44 01 A4 00 A4 0A 0F 5B  // 10A..L10D......[
  78E0: 82 47 0B 47 44 4D 32 08 5F 48 49 44 0D 49 4E 54  // .G.GDM2._HID.INT
  78F0: 4C 39 43 36 30 00 08 5F 44 44 4E 0D 49 6E 74 65  // L9C60.._DDN.Inte
  7900: 6C 28 52 29 20 44 4D 41 20 43 6F 6E 74 72 6F 6C  // l(R) DMA Control
  7910: 6C 65 72 20 23 32 20 2D 20 49 4E 54 4C 39 43 36  // ler #2 - INTL9C6
  7920: 30 00 08 5F 55 49 44 0A 02 08 52 42 55 46 11 1A  // 0.._UID...RBUF..
  7930: 0A 17 86 09 00 01 00 00 00 00 00 40 00 00 89 06  // ...........@....
  7940: 00 05 01 2B 00 00 00 79 00 14 33 5F 43 52 53 00  // ...+...y..3_CRS.
  7950: 8A 52 42 55 46 0A 04 42 30 42 41 8A 52 42 55 46  // .RBUF..B0BA.RBUF
  7960: 0A 08 42 30 4C 4E 70 44 32 30 41 42 30 42 41 70  // ..B0LNpD20AB0BAp
  7970: 44 32 30 4C 42 30 4C 4E A4 52 42 55 46 14 1A 5F  // D20LB0LN.RBUF.._
  7980: 53 54 41 00 A0 10 91 93 44 32 30 41 00 93 4C 32  // STA.....D20A..L2
  7990: 30 44 01 A4 00 A4 0A 0F 5B 82 42 0C 50 57 4D 31  // 0D......[.B.PWM1
  79A0: 08 5F 41 44 52 00 08 5F 48 49 44 0D 38 30 38 36  // ._ADR.._HID.8086
  79B0: 30 46 30 39 00 08 5F 43 49 44 0D 38 30 38 36 30  // 0F09.._CID.80860
  79C0: 46 30 39 00 08 5F 44 44 4E 0D 49 6E 74 65 6C 28  // F09.._DDN.Intel(
  79D0: 52 29 20 50 57 4D 20 43 6F 6E 74 72 6F 6C 6C 65  // R) PWM Controlle
  79E0: 72 20 23 31 20 2D 20 38 30 38 36 30 46 30 38 00  // r #1 - 80860F08.
  79F0: 08 5F 55 49 44 01 08 52 42 55 46 11 11 0A 0E 86  // ._UID..RBUF.....
  7A00: 09 00 01 00 00 00 00 00 10 00 00 79 00 14 33 5F  // ...........y..3_
  7A10: 43 52 53 00 8A 52 42 55 46 0A 04 42 30 42 41 8A  // CRS..RBUF..B0BA.
  7A20: 52 42 55 46 0A 08 42 30 4C 4E 70 50 31 30 41 42  // RBUF..B0LNpP10AB
  7A30: 30 42 41 70 50 31 30 4C 42 30 4C 4E A4 52 42 55  // 0BApP10LB0LN.RBU
  7A40: 46 14 1A 5F 53 54 41 00 A0 10 91 93 50 31 30 41  // F.._STA.....P10A
  7A50: 00 93 4C 31 31 44 01 A4 00 A4 0A 0F 5B 82 43 0C  // ..L11D......[.C.
  7A60: 50 57 4D 32 08 5F 41 44 52 00 08 5F 48 49 44 0D  // PWM2._ADR.._HID.
  7A70: 38 30 38 36 30 46 30 39 00 08 5F 43 49 44 0D 38  // 80860F09.._CID.8
  7A80: 30 38 36 30 46 30 39 00 08 5F 44 44 4E 0D 49 6E  // 0860F09.._DDN.In
  7A90: 74 65 6C 28 52 29 20 50 57 4D 20 43 6F 6E 74 72  // tel(R) PWM Contr
  7AA0: 6F 6C 6C 65 72 20 23 32 20 2D 20 38 30 38 36 30  // oller #2 - 80860
  7AB0: 46 30 39 00 08 5F 55 49 44 0A 02 08 52 42 55 46  // F09.._UID...RBUF
  7AC0: 11 11 0A 0E 86 09 00 01 00 00 00 00 00 10 00 00  // ................
  7AD0: 79 00 14 33 5F 43 52 53 00 8A 52 42 55 46 0A 04  // y..3_CRS..RBUF..
  7AE0: 42 30 42 41 8A 52 42 55 46 0A 08 42 30 4C 4E 70  // B0BA.RBUF..B0LNp
  7AF0: 50 32 30 41 42 30 42 41 70 50 32 30 4C 42 30 4C  // P20AB0BApP20LB0L
  7B00: 4E A4 52 42 55 46 14 1A 5F 53 54 41 00 A0 10 91  // N.RBUF.._STA....
  7B10: 93 50 32 30 41 00 93 4C 31 32 44 01 A4 00 A4 0A  // .P20A..L12D.....
  7B20: 0F 5B 82 4A 42 55 52 54 31 08 5F 41 44 52 00 08  // .[.JBURT1._ADR..
  7B30: 5F 48 49 44 0D 38 30 38 36 30 46 30 41 00 08 5F  // _HID.80860F0A.._
  7B40: 43 49 44 0D 38 30 38 36 30 46 30 41 00 08 5F 44  // CID.80860F0A.._D
  7B50: 44 4E 0D 49 6E 74 65 6C 28 52 29 20 48 53 2D 55  // DN.Intel(R) HS-U
  7B60: 41 52 54 20 43 6F 6E 74 72 6F 6C 6C 65 72 20 23  // ART Controller #
  7B70: 31 20 2D 20 38 30 38 36 30 46 30 41 00 08 5F 55  // 1 - 80860F0A.._U
  7B80: 49 44 01 08 5F 44 45 50 12 06 01 50 45 50 44 08  // ID.._DEP...PEPD.
  7B90: 52 42 55 46 11 26 0A 23 86 09 00 01 00 00 00 00  // RBUF.&.#........
  7BA0: 00 10 00 00 89 06 00 05 01 27 00 00 00 55 02 00  // .........'...U..
  7BB0: 02 00 02 55 03 00 03 00 02 79 00 14 0B 5F 48 52  // ...U.....y..._HR
  7BC0: 56 00 A4 53 4F 43 53 14 33 5F 43 52 53 00 8A 52  // V..SOCS.3_CRS..R
  7BD0: 42 55 46 0A 04 42 30 42 41 8A 52 42 55 46 0A 08  // BUF..B0BA.RBUF..
  7BE0: 42 30 4C 4E 70 55 31 30 41 42 30 42 41 70 55 31  // B0LNpU10AB0BApU1
  7BF0: 30 4C 42 30 4C 4E A4 52 42 55 46 14 1A 5F 53 54  // 0LB0LN.RBUF.._ST
  7C00: 41 00 A0 10 91 93 55 31 30 41 00 93 4C 31 33 44  // A.....U10A..L13D
  7C10: 01 A4 00 A4 0A 0F 14 1B 5F 50 53 33 00 7D 50 53  // ........_PS3.}PS
  7C20: 41 54 0A 03 50 53 41 54 7D 50 53 41 54 00 50 53  // AT..PSAT}PSAT.PS
  7C30: 41 54 14 1E 5F 50 53 30 00 7B 50 53 41 54 0C FC  // AT.._PS0.{PSAT..
  7C40: FF FF FF 50 53 41 54 7D 50 53 41 54 00 50 53 41  // ...PSAT}PSAT.PSA
  7C50: 54 5B 80 4B 45 59 53 00 55 31 31 41 0B 00 01 5B  // T[.KEYS.U11A...[
  7C60: 81 0E 4B 45 59 53 43 00 40 42 50 53 41 54 20 5B  // ..KEYSC.@BPSAT [
  7C70: 82 4C 14 42 54 48 30 08 5F 48 49 44 0D 42 43 4D  // .L.BTH0._HID.BCM
  7C80: 32 45 33 41 00 14 1E 5F 53 54 41 00 A0 09 93 55  // 2E3A..._STA....U
  7C90: 54 53 5F 01 A4 00 A0 0A 93 42 44 49 44 0A 03 A4  // TS_......BDID...
  7CA0: 00 A4 0A 0F 14 48 11 5F 43 52 53 00 08 55 42 55  // .....H._CRS..UBU
  7CB0: 46 11 45 07 0A 71 8E 1D 00 01 00 03 02 34 00 01  // F.E..q.......4..
  7CC0: 0A 00 00 C2 01 00 20 00 20 00 00 FC 5C 5F 53 42  // ...... . ...\_SB
  7CD0: 2E 55 52 54 31 00 89 06 00 13 01 46 00 00 00 8C  // .URT1......F....
  7CE0: 20 00 01 01 01 00 02 00 00 00 00 00 00 17 00 00  //  ...............
  7CF0: 19 00 23 00 00 00 34 00 5C 5F 53 42 2E 47 50 4F  // ..#...4.\_SB.GPO
  7D00: 30 00 8C 20 00 01 01 01 00 02 00 00 00 00 00 00  // 0.. ............
  7D10: 17 00 00 19 00 23 00 00 00 35 00 5C 5F 53 42 2E  // .....#...5.\_SB.
  7D20: 47 50 4F 30 00 79 00 08 50 42 55 46 11 45 07 0A  // GPO0.y..PBUF.E..
  7D30: 71 8E 1D 00 01 00 03 02 34 00 01 0A 00 00 C2 01  // q.......4.......
  7D40: 00 20 00 20 00 00 FC 5C 5F 53 42 2E 55 52 54 31  // . . ...\_SB.URT1
  7D50: 00 89 06 00 13 01 46 00 00 00 8C 20 00 01 01 01  // ......F.... ....
  7D60: 00 02 00 00 00 00 00 00 17 00 00 19 00 23 00 00  // .............#..
  7D70: 00 35 00 5C 5F 53 42 2E 47 50 4F 30 00 8C 20 00  // .5.\_SB.GPO0.. .
  7D80: 01 01 01 00 02 00 00 00 00 00 00 17 00 00 19 00  // ................
  7D90: 23 00 00 00 34 00 5C 5F 53 42 2E 47 50 4F 30 00  // #...4.\_SB.GPO0.
  7DA0: 79 00 A0 15 93 42 44 49 44 0A 04 A0 0C 93 46 42  // y....BDID.....FB
  7DB0: 49 44 00 A4 50 42 55 46 A4 55 42 55 46 5B 82 4E  // ID..PBUF.UBUF[.N
  7DC0: 18 42 54 48 31 08 5F 48 49 44 0D 42 43 4D 32 45  // .BTH1._HID.BCM2E
  7DD0: 31 41 00 08 55 41 52 54 00 14 4E 15 5F 43 52 53  // 1A..UART..N._CRS
  7DE0: 00 08 55 42 55 46 11 48 09 0A 94 8E 1D 00 01 00  // ..UBUF.H........
  7DF0: 03 02 34 00 01 0A 00 00 C2 01 00 20 00 20 00 00  // ..4........ . ..
  7E00: FC 5C 5F 53 42 2E 55 52 54 31 00 89 06 00 13 01  // .\_SB.URT1......
  7E10: 46 00 00 00 8C 20 00 01 01 01 00 02 00 00 00 00  // F.... ..........
  7E20: 00 00 17 00 00 19 00 23 00 00 00 34 00 5C 5F 53  // .......#...4.\_S
  7E30: 42 2E 47 50 4F 30 00 8C 20 00 01 01 01 00 02 00  // B.GPO0.. .......
  7E40: 00 00 00 00 00 17 00 00 19 00 23 00 00 00 35 00  // ..........#...5.
  7E50: 5C 5F 53 42 2E 47 50 4F 30 00 8C 20 00 01 01 01  // \_SB.GPO0.. ....
  7E60: 00 01 00 00 00 00 00 00 17 00 00 19 00 23 00 00  // .............#..
  7E70: 00 93 00 5C 5F 53 42 2E 47 50 4F 30 00 79 00 08  // ...\_SB.GPO0.y..
  7E80: 50 42 55 46 11 48 09 0A 94 8E 1D 00 01 00 03 02  // PBUF.H..........
  7E90: 34 00 01 0A 00 00 C2 01 00 20 00 20 00 00 FC 5C  // 4........ . ...\
  7EA0: 5F 53 42 2E 55 52 54 31 00 89 06 00 13 01 46 00  // _SB.URT1......F.
  7EB0: 00 00 8C 20 00 01 01 01 00 02 00 00 00 00 00 00  // ... ............
  7EC0: 17 00 00 19 00 23 00 00 00 34 00 5C 5F 53 42 2E  // .....#...4.\_SB.
  7ED0: 47 50 4F 30 00 8C 20 00 01 01 01 00 02 00 00 00  // GPO0.. .........
  7EE0: 00 00 00 17 00 00 19 00 23 00 00 00 35 00 5C 5F  // ........#...5.\_
  7EF0: 53 42 2E 47 50 4F 30 00 8C 20 00 01 01 01 00 01  // SB.GPO0.. ......
  7F00: 00 00 00 00 00 00 17 00 00 19 00 23 00 00 00 93  // ...........#....
  7F10: 00 5C 5F 53 42 2E 47 50 4F 30 00 79 00 A0 15 93  // .\_SB.GPO0.y....
  7F20: 42 44 49 44 0A 04 A0 0C 93 46 42 49 44 00 A4 50  // BDID.....FBID..P
  7F30: 42 55 46 A4 55 42 55 46 14 14 5F 53 54 41 00 A0  // BUF.UBUF.._STA..
  7F40: 0B 93 42 44 49 44 0A 03 A4 0A 0F A4 00 5B 82 45  // ..BDID.......[.E
  7F50: 1D 55 52 54 32 08 5F 41 44 52 00 08 5F 48 49 44  // .URT2._ADR.._HID
  7F60: 0D 38 30 38 36 30 46 30 41 00 08 5F 43 49 44 0D  // .80860F0A.._CID.
  7F70: 38 30 38 36 30 46 30 41 00 08 5F 44 44 4E 0D 49  // 80860F0A.._DDN.I
  7F80: 6E 74 65 6C 28 52 29 20 48 53 2D 55 41 52 54 20  // ntel(R) HS-UART 
  7F90: 43 6F 6E 74 72 6F 6C 6C 65 72 20 23 32 20 2D 20  // Controller #2 - 
  7FA0: 38 30 38 36 30 46 30 43 00 08 5F 55 49 44 0A 02  // 80860F0C.._UID..
  7FB0: 08 5F 44 45 50 12 06 01 50 45 50 44 08 52 42 55  // ._DEP...PEPD.RBU
  7FC0: 46 11 26 0A 23 86 09 00 01 00 00 00 00 00 10 00  // F.&.#...........
  7FD0: 00 89 06 00 05 01 28 00 00 00 55 04 00 04 00 02  // ......(...U.....
  7FE0: 55 05 00 05 00 02 79 00 14 0B 5F 48 52 56 00 A4  // U.....y..._HRV..
  7FF0: 53 4F 43 53 14 33 5F 43 52 53 00 8A 52 42 55 46  // SOCS.3_CRS..RBUF
  8000: 0A 04 42 30 42 41 8A 52 42 55 46 0A 08 42 30 4C  // ..B0BA.RBUF..B0L
  8010: 4E 70 55 32 30 41 42 30 42 41 70 55 32 30 4C 42  // NpU20AB0BApU20LB
  8020: 30 4C 4E A4 52 42 55 46 14 1A 5F 53 54 41 00 A0  // 0LN.RBUF.._STA..
  8030: 10 91 93 55 32 30 41 00 93 4C 31 34 44 01 A4 00  // ...U20A..L14D...
  8040: A4 0A 0F 14 1B 5F 50 53 33 00 7D 50 53 41 54 0A  // ....._PS3.}PSAT.
  8050: 03 50 53 41 54 7D 50 53 41 54 00 50 53 41 54 14  // .PSAT}PSAT.PSAT.
  8060: 1E 5F 50 53 30 00 7B 50 53 41 54 0C FC FF FF FF  // ._PS0.{PSAT.....
  8070: 50 53 41 54 7D 50 53 41 54 00 50 53 41 54 5B 80  // PSAT}PSAT.PSAT[.
  8080: 4B 45 59 53 00 55 32 31 41 0B 00 01 5B 81 0E 4B  // KEYS.U21A...[..K
  8090: 45 59 53 43 00 40 42 50 53 41 54 20 5B 82 46 08  // EYSC.@BPSAT [.F.
  80A0: 47 50 53 30 08 5F 48 49 44 0D 42 43 4D 34 37 35  // GPS0._HID.BCM475
  80B0: 32 00 08 55 41 52 54 01 08 45 4E 41 42 00 14 4B  // 2..UART..ENAB..K
  80C0: 05 5F 43 52 53 00 08 55 42 55 46 11 49 04 0A 45  // ._CRS..UBUF.I..E
  80D0: 8E 1D 00 01 00 03 02 35 00 01 0A 00 00 C2 01 00  // .......5........
  80E0: 20 00 20 00 00 FC 5C 5F 53 42 2E 55 52 54 32 00  //  . ...\_SB.URT2.
  80F0: 8C 20 00 01 01 01 00 02 00 00 00 00 00 00 17 00  // . ..............
  8100: 00 19 00 23 00 00 00 01 00 5C 5F 53 42 2E 47 50  // ...#.....\_SB.GP
  8110: 4F 30 00 79 00 A4 55 42 55 46 14 09 5F 53 54 41  // O0.y..UBUF.._STA
  8120: 00 A4 0A 0F 5B 82 4C 1B 53 50 49 31 08 5F 41 44  // ....[.L.SPI1._AD
  8130: 52 00 08 5F 48 49 44 0D 38 30 38 36 30 46 30 45  // R.._HID.80860F0E
  8140: 00 08 5F 43 49 44 0D 38 30 38 36 30 46 30 45 00  // .._CID.80860F0E.
  8150: 08 5F 55 49 44 00 08 5F 44 45 50 12 06 01 50 45  // ._UID.._DEP...PE
  8160: 50 44 08 5F 44 44 4E 0D 49 6E 74 65 6C 28 52 29  // PD._DDN.Intel(R)
  8170: 20 53 50 49 20 43 6F 6E 74 72 6F 6C 6C 65 72 20  //  SPI Controller 
  8180: 2D 20 38 30 38 36 30 46 30 45 00 08 52 42 55 46  // - 80860F0E..RBUF
  8190: 11 26 0A 23 86 09 00 01 00 00 00 00 00 10 00 00  // .&.#............
  81A0: 89 06 00 05 01 29 00 00 00 55 00 00 00 00 02 55  // .....)...U.....U
  81B0: 01 00 01 00 02 79 00 14 0B 5F 48 52 56 00 A4 53  // .....y..._HRV..S
  81C0: 4F 43 53 14 33 5F 43 52 53 00 8A 52 42 55 46 0A  // OCS.3_CRS..RBUF.
  81D0: 04 42 30 42 41 8A 52 42 55 46 0A 08 42 30 4C 4E  // .B0BA.RBUF..B0LN
  81E0: 70 53 50 30 41 42 30 42 41 70 53 50 30 4C 42 30  // pSP0AB0BApSP0LB0
  81F0: 4C 4E A4 52 42 55 46 14 1A 5F 53 54 41 00 A0 10  // LN.RBUF.._STA...
  8200: 91 93 53 50 30 41 00 93 4C 31 35 44 01 A4 00 A4  // ..SP0A..L15D....
  8210: 0A 0F 14 1B 5F 50 53 33 00 7D 50 53 41 54 0A 03  // ...._PS3.}PSAT..
  8220: 50 53 41 54 7D 50 53 41 54 00 50 53 41 54 14 1E  // PSAT}PSAT.PSAT..
  8230: 5F 50 53 30 00 7B 50 53 41 54 0C FC FF FF FF 50  // _PS0.{PSAT.....P
  8240: 53 41 54 7D 50 53 41 54 00 50 53 41 54 5B 80 4B  // SAT}PSAT.PSAT[.K
  8250: 45 59 53 00 53 50 31 41 0B 00 01 5B 81 0E 4B 45  // EYS.SP1A...[..KE
  8260: 59 53 43 00 40 42 50 53 41 54 20 5B 82 45 07 46  // YSC.@BPSAT [.E.F
  8270: 50 4E 54 08 5F 48 49 44 0D 41 55 54 48 32 37 35  // PNT._HID.AUTH275
  8280: 30 00 08 5F 44 44 4E 0D 41 75 74 68 65 6E 54 65  // 0.._DDN.AuthenTe
  8290: 63 20 41 45 53 32 37 35 30 00 14 3E 5F 43 52 53  // c AES2750..>_CRS
  82A0: 00 08 55 42 55 46 11 2D 0A 2A 8E 1C 00 01 00 02  // ..UBUF.-.*......
  82B0: 02 00 00 01 09 00 00 12 7A 00 08 01 00 01 00 5C  // ........z......\
  82C0: 5F 53 42 2E 53 50 49 31 00 89 06 00 03 01 48 00  // _SB.SPI1......H.
  82D0: 00 00 79 00 A4 55 42 55 46 14 08 5F 53 54 41 00  // ..y..UBUF.._STA.
  82E0: A4 00 5B 82 41 05 4E 46 43 32 08 5F 41 44 52 00  // ..[.A.NFC2._ADR.
  82F0: 08 5F 48 49 44 0D 4E 58 50 35 34 34 32 00 08 5F  // ._HID.NXP5442.._
  8300: 43 49 44 0D 4E 58 50 35 34 34 32 00 08 5F 44 44  // CID.NXP5442.._DD
  8310: 4E 0D 4E 58 50 20 4E 46 43 00 08 5F 55 49 44 01  // N.NXP NFC.._UID.
  8320: 14 14 5F 53 54 41 00 A0 0B 93 4E 46 43 53 0A 02  // .._STA....NFCS..
  8330: A4 0A 0F A4 00 5B 82 48 14 49 32 43 31 08 5F 41  // .....[.H.I2C1._A
  8340: 44 52 00 08 5F 48 49 44 0D 38 30 38 36 30 46 34  // DR.._HID.80860F4
  8350: 31 00 08 5F 43 49 44 0D 38 30 38 36 30 46 34 31  // 1.._CID.80860F41
  8360: 00 08 5F 44 45 50 12 06 01 50 45 50 44 08 5F 44  // .._DEP...PEPD._D
  8370: 44 4E 0D 49 6E 74 65 6C 28 52 29 20 49 32 43 20  // DN.Intel(R) I2C 
  8380: 43 6F 6E 74 72 6F 6C 6C 65 72 20 23 31 20 2D 20  // Controller #1 - 
  8390: 38 30 38 36 30 46 34 31 00 08 5F 55 49 44 01 08  // 80860F41.._UID..
  83A0: 52 42 55 46 11 26 0A 23 86 09 00 01 00 00 00 00  // RBUF.&.#........
  83B0: 00 10 00 00 89 06 00 05 01 20 00 00 00 55 10 00  // ......... ...U..
  83C0: 00 00 02 55 11 00 01 00 02 79 00 14 0B 5F 48 52  // ...U.....y..._HR
  83D0: 56 00 A4 53 4F 43 53 14 33 5F 43 52 53 00 8A 52  // V..SOCS.3_CRS..R
  83E0: 42 55 46 0A 04 42 30 42 41 8A 52 42 55 46 0A 08  // BUF..B0BA.RBUF..
  83F0: 42 30 4C 4E 70 49 31 30 41 42 30 42 41 70 49 31  // B0LNpI10AB0BApI1
  8400: 30 4C 42 30 4C 4E A4 52 42 55 46 14 1A 5F 53 54  // 0LB0LN.RBUF.._ST
  8410: 41 00 A0 10 91 93 49 31 30 41 00 93 4C 32 31 44  // A.....I10A..L21D
  8420: 01 A4 00 A4 0A 0F 14 1B 5F 50 53 33 00 7D 50 53  // ........_PS3.}PS
  8430: 41 54 0A 03 50 53 41 54 7D 50 53 41 54 00 50 53  // AT..PSAT}PSAT.PS
  8440: 41 54 14 1E 5F 50 53 30 00 7B 50 53 41 54 0C FC  // AT.._PS0.{PSAT..
  8450: FF FF FF 50 53 41 54 7D 50 53 41 54 00 50 53 41  // ...PSAT}PSAT.PSA
  8460: 54 5B 80 4B 45 59 53 00 49 31 31 41 0B 00 01 5B  // T[.KEYS.I11A...[
  8470: 81 0E 4B 45 59 53 43 00 40 42 50 53 41 54 20 5B  // ..KEYSC.@BPSAT [
  8480: 82 4E 21 49 32 43 32 08 5F 41 44 52 00 08 5F 48  // .N!I2C2._ADR.._H
  8490: 49 44 0D 38 30 38 36 30 46 34 31 00 08 5F 43 49  // ID.80860F41.._CI
  84A0: 44 0D 38 30 38 36 30 46 34 31 00 08 5F 44 45 50  // D.80860F41.._DEP
  84B0: 12 06 01 50 45 50 44 08 5F 44 44 4E 0D 49 6E 74  // ...PEPD._DDN.Int
  84C0: 65 6C 28 52 29 20 49 32 43 20 43 6F 6E 74 72 6F  // el(R) I2C Contro
  84D0: 6C 6C 65 72 20 23 32 20 2D 20 38 30 38 36 30 46  // ller #2 - 80860F
  84E0: 34 32 00 08 5F 55 49 44 0A 02 08 52 42 55 46 11  // 42.._UID...RBUF.
  84F0: 26 0A 23 86 09 00 01 00 00 00 00 00 10 00 00 89  // &.#.............
  8500: 06 00 05 01 21 00 00 00 55 12 00 02 00 02 55 13  // ....!...U.....U.
  8510: 00 03 00 02 79 00 14 0B 5F 48 52 56 00 A4 53 4F  // ....y..._HRV..SO
  8520: 43 53 14 33 5F 43 52 53 00 8A 52 42 55 46 0A 04  // CS.3_CRS..RBUF..
  8530: 42 30 42 41 8A 52 42 55 46 0A 08 42 30 4C 4E 70  // B0BA.RBUF..B0LNp
  8540: 49 32 30 41 42 30 42 41 70 49 32 30 4C 42 30 4C  // I20AB0BApI20LB0L
  8550: 4E A4 52 42 55 46 14 1A 5F 53 54 41 00 A0 10 91  // N.RBUF.._STA....
  8560: 93 49 32 30 41 00 93 4C 32 32 44 01 A4 00 A4 0A  // .I20A..L22D.....
  8570: 0F 14 1B 5F 50 53 33 00 7D 50 53 41 54 0A 03 50  // ..._PS3.}PSAT..P
  8580: 53 41 54 7D 50 53 41 54 00 50 53 41 54 14 1E 5F  // SAT}PSAT.PSAT.._
  8590: 50 53 30 00 7B 50 53 41 54 0C FC FF FF FF 50 53  // PS0.{PSAT.....PS
  85A0: 41 54 7D 50 53 41 54 00 50 53 41 54 5B 80 4B 45  // AT}PSAT.PSAT[.KE
  85B0: 59 53 00 49 32 31 41 0B 00 01 5B 81 0E 4B 45 59  // YS.I21A...[..KEY
  85C0: 53 43 00 40 42 50 53 41 54 20 5B 82 43 0D 52 54  // SC.@BPSAT [.C.RT
  85D0: 45 4B 08 5F 41 44 52 00 08 5F 48 49 44 0D 31 30  // EK._ADR.._HID.10
  85E0: 57 4D 35 31 30 32 00 08 5F 43 49 44 0D 31 30 57  // WM5102.._CID.10W
  85F0: 4D 35 31 30 32 00 08 5F 44 44 4E 0D 52 54 45 4B  // M5102.._DDN.RTEK
  8600: 20 43 6F 64 65 63 20 43 6F 6E 74 72 6F 6C 6C 65  //  Codec Controlle
  8610: 72 20 00 08 5F 55 49 44 01 14 4A 05 5F 43 52 53  // r .._UID..J._CRS
  8620: 00 08 53 42 55 46 11 48 04 0A 44 8E 1C 00 01 00  // ..SBUF.H..D.....
  8630: 02 02 00 00 01 09 00 C0 E1 E4 00 08 01 00 01 00  // ................
  8640: 5C 5F 53 42 2E 53 50 49 31 00 8C 20 00 01 00 01  // \_SB.SPI1.. ....
  8650: 00 11 00 03 00 00 00 00 17 00 00 19 00 23 00 00  // .............#..
  8660: 00 04 00 5C 5F 53 42 2E 47 50 4F 32 00 79 00 A4  // ...\_SB.GPO2.y..
  8670: 53 42 55 46 14 09 5F 53 54 41 00 A4 0A 0F 14 0C  // SBUF.._STA......
  8680: 5F 50 53 33 00 70 00 43 4B 43 33 14 0C 5F 50 53  // _PS3.p.CKC3.._PS
  8690: 30 00 70 01 43 4B 43 33 14 06 5F 44 49 53 00 5B  // 0.p.CKC3.._DIS.[
  86A0: 82 49 14 49 32 43 33 08 5F 41 44 52 00 08 5F 48  // .I.I2C3._ADR.._H
  86B0: 49 44 0D 38 30 38 36 30 46 34 31 00 08 5F 43 49  // ID.80860F41.._CI
  86C0: 44 0D 38 30 38 36 30 46 34 31 00 08 5F 44 44 4E  // D.80860F41.._DDN
  86D0: 0D 49 6E 74 65 6C 28 52 29 20 49 32 43 20 43 6F  // .Intel(R) I2C Co
  86E0: 6E 74 72 6F 6C 6C 65 72 20 23 33 20 2D 20 38 30  // ntroller #3 - 80
  86F0: 38 36 30 46 34 33 00 08 5F 55 49 44 0A 03 08 5F  // 860F43.._UID..._
  8700: 44 45 50 12 06 01 50 45 50 44 08 52 42 55 46 11  // DEP...PEPD.RBUF.
  8710: 26 0A 23 86 09 00 01 00 00 00 00 00 10 00 00 89  // &.#.............
  8720: 06 00 05 01 22 00 00 00 55 14 00 04 00 02 55 15  // ...."...U.....U.
  8730: 00 05 00 02 79 00 14 0B 5F 48 52 56 00 A4 53 4F  // ....y..._HRV..SO
  8740: 43 53 14 33 5F 43 52 53 00 8A 52 42 55 46 0A 04  // CS.3_CRS..RBUF..
  8750: 42 30 42 41 8A 52 42 55 46 0A 08 42 30 4C 4E 70  // B0BA.RBUF..B0LNp
  8760: 49 33 30 41 42 30 42 41 70 49 33 30 4C 42 30 4C  // I30AB0BApI30LB0L
  8770: 4E A4 52 42 55 46 14 1A 5F 53 54 41 00 A0 10 91  // N.RBUF.._STA....
  8780: 93 49 33 30 41 00 93 4C 32 33 44 01 A4 00 A4 0A  // .I30A..L23D.....
  8790: 0F 14 1B 5F 50 53 33 00 7D 50 53 41 54 0A 03 50  // ..._PS3.}PSAT..P
  87A0: 53 41 54 7D 50 53 41 54 00 50 53 41 54 14 1E 5F  // SAT}PSAT.PSAT.._
  87B0: 50 53 30 00 7B 50 53 41 54 0C FC FF FF FF 50 53  // PS0.{PSAT.....PS
  87C0: 41 54 7D 50 53 41 54 00 50 53 41 54 5B 80 4B 45  // AT}PSAT.PSAT[.KE
  87D0: 59 53 00 49 33 31 41 0B 00 01 5B 81 0E 4B 45 59  // YS.I31A...[..KEY
  87E0: 53 43 00 40 42 50 53 41 54 20 5B 82 4F 1B 49 32  // SC.@BPSAT [.O.I2
  87F0: 43 34 08 5F 41 44 52 00 08 5F 48 49 44 0D 38 30  // C4._ADR.._HID.80
  8800: 38 36 30 46 34 31 00 08 5F 43 49 44 0D 38 30 38  // 860F41.._CID.808
  8810: 36 30 46 34 31 00 08 5F 44 44 4E 0D 49 6E 74 65  // 60F41.._DDN.Inte
  8820: 6C 28 52 29 20 49 32 43 20 43 6F 6E 74 72 6F 6C  // l(R) I2C Control
  8830: 6C 65 72 20 23 34 20 2D 20 38 30 38 36 30 46 34  // ler #4 - 80860F4
  8840: 34 00 08 5F 55 49 44 0A 04 08 5F 44 45 50 12 06  // 4.._UID..._DEP..
  8850: 01 50 45 50 44 08 52 42 55 46 11 26 0A 23 86 09  // .PEPD.RBUF.&.#..
  8860: 00 01 00 00 00 00 00 10 00 00 89 06 00 05 01 23  // ...............#
  8870: 00 00 00 55 16 00 06 00 02 55 17 00 07 00 02 79  // ...U.....U.....y
  8880: 00 14 0B 5F 48 52 56 00 A4 53 4F 43 53 14 33 5F  // ..._HRV..SOCS.3_
  8890: 43 52 53 00 8A 52 42 55 46 0A 04 42 30 42 41 8A  // CRS..RBUF..B0BA.
  88A0: 52 42 55 46 0A 08 42 30 4C 4E 70 49 34 30 41 42  // RBUF..B0LNpI40AB
  88B0: 30 42 41 70 49 34 30 4C 42 30 4C 4E A4 52 42 55  // 0BApI40LB0LN.RBU
  88C0: 46 14 1A 5F 53 54 41 00 A0 10 91 93 49 34 30 41  // F.._STA.....I40A
  88D0: 00 93 4C 32 34 44 01 A4 00 A4 0A 0F 14 1B 5F 50  // ..L24D........_P
  88E0: 53 33 00 7D 50 53 41 54 0A 03 50 53 41 54 7D 50  // S3.}PSAT..PSAT}P
  88F0: 53 41 54 00 50 53 41 54 14 1E 5F 50 53 30 00 7B  // SAT.PSAT.._PS0.{
  8900: 50 53 41 54 0C FC FF FF FF 50 53 41 54 7D 50 53  // PSAT.....PSAT}PS
  8910: 41 54 00 50 53 41 54 5B 80 4B 45 59 53 00 49 34  // AT.PSAT[.KEYS.I4
  8920: 31 41 0B 00 01 5B 81 0E 4B 45 59 53 43 00 40 42  // 1A...[..KEYSC.@B
  8930: 50 53 41 54 20 5B 84 39 43 4C 4B 30 00 00 00 14  // PSAT [.9CLK0....
  8940: 0B 5F 53 54 41 00 A4 43 4B 43 30 14 16 5F 4F 4E  // ._STA..CKC0.._ON
  8950: 5F 00 70 01 43 4B 43 30 70 01 43 4B 46 30 5B 22  // _.p.CKC0p.CKF0["
  8960: 0A 20 14 0D 5F 4F 46 46 00 70 0A 02 43 4B 43 30  // . .._OFF.p..CKC0
  8970: 5B 84 39 43 4C 4B 31 00 00 00 14 0B 5F 53 54 41  // [.9CLK1....._STA
  8980: 00 A4 43 4B 43 31 14 16 5F 4F 4E 5F 00 70 01 43  // ..CKC1.._ON_.p.C
  8990: 4B 43 31 70 01 43 4B 46 31 5B 22 0A 20 14 0D 5F  // KC1p.CKF1[". .._
  89A0: 4F 46 46 00 70 0A 02 43 4B 43 31 5B 82 49 14 49  // OFF.p..CKC1[.I.I
  89B0: 32 43 35 08 5F 41 44 52 00 08 5F 48 49 44 0D 38  // 2C5._ADR.._HID.8
  89C0: 30 38 36 30 46 34 31 00 08 5F 43 49 44 0D 38 30  // 0860F41.._CID.80
  89D0: 38 36 30 46 34 31 00 08 5F 44 44 4E 0D 49 6E 74  // 860F41.._DDN.Int
  89E0: 65 6C 28 52 29 20 49 32 43 20 43 6F 6E 74 72 6F  // el(R) I2C Contro
  89F0: 6C 6C 65 72 20 23 35 20 2D 20 38 30 38 36 30 46  // ller #5 - 80860F
  8A00: 34 35 00 08 5F 55 49 44 0A 05 08 5F 44 45 50 12  // 45.._UID..._DEP.
  8A10: 06 01 50 45 50 44 08 52 42 55 46 11 26 0A 23 86  // ..PEPD.RBUF.&.#.
  8A20: 09 00 01 00 00 00 00 00 10 00 00 89 06 00 05 01  // ................
  8A30: 24 00 00 00 55 18 00 00 00 02 55 19 00 01 00 02  // $...U.....U.....
  8A40: 79 00 14 0B 5F 48 52 56 00 A4 53 4F 43 53 14 33  // y..._HRV..SOCS.3
  8A50: 5F 43 52 53 00 8A 52 42 55 46 0A 04 42 30 42 41  // _CRS..RBUF..B0BA
  8A60: 8A 52 42 55 46 0A 08 42 30 4C 4E 70 49 35 30 41  // .RBUF..B0LNpI50A
  8A70: 42 30 42 41 70 49 35 30 4C 42 30 4C 4E A4 52 42  // B0BApI50LB0LN.RB
  8A80: 55 46 14 1A 5F 53 54 41 00 A0 10 91 93 49 35 30  // UF.._STA.....I50
  8A90: 41 00 93 4C 32 35 44 01 A4 00 A4 0A 0F 14 1B 5F  // A..L25D........_
  8AA0: 50 53 33 00 7D 50 53 41 54 0A 03 50 53 41 54 7D  // PS3.}PSAT..PSAT}
  8AB0: 50 53 41 54 00 50 53 41 54 14 1E 5F 50 53 30 00  // PSAT.PSAT.._PS0.
  8AC0: 7B 50 53 41 54 0C FC FF FF FF 50 53 41 54 7D 50  // {PSAT.....PSAT}P
  8AD0: 53 41 54 00 50 53 41 54 5B 80 4B 45 59 53 00 49  // SAT.PSAT[.KEYS.I
  8AE0: 35 31 41 0B 00 01 5B 81 0E 4B 45 59 53 43 00 40  // 51A...[..KEYSC.@
  8AF0: 42 50 53 41 54 20 5B 82 48 55 49 32 43 36 08 5F  // BPSAT [.HUI2C6._
  8B00: 41 44 52 00 08 5F 48 49 44 0D 38 30 38 36 30 46  // ADR.._HID.80860F
  8B10: 34 31 00 08 5F 43 49 44 0D 38 30 38 36 30 46 34  // 41.._CID.80860F4
  8B20: 31 00 08 5F 44 44 4E 0D 49 6E 74 65 6C 28 52 29  // 1.._DDN.Intel(R)
  8B30: 20 49 32 43 20 43 6F 6E 74 72 6F 6C 6C 65 72 20  //  I2C Controller 
  8B40: 23 36 20 2D 20 38 30 38 36 30 46 34 36 00 08 5F  // #6 - 80860F46.._
  8B50: 55 49 44 0A 06 08 5F 44 45 50 12 06 01 50 45 50  // UID..._DEP...PEP
  8B60: 44 08 52 42 55 46 11 26 0A 23 86 09 00 01 00 00  // D.RBUF.&.#......
  8B70: 00 00 00 10 00 00 89 06 00 05 01 25 00 00 00 55  // ...........%...U
  8B80: 1A 00 02 00 02 55 1B 00 03 00 02 79 00 14 0B 5F  // .....U.....y..._
  8B90: 48 52 56 00 A4 53 4F 43 53 14 33 5F 43 52 53 00  // HRV..SOCS.3_CRS.
  8BA0: 8A 52 42 55 46 0A 04 42 30 42 41 8A 52 42 55 46  // .RBUF..B0BA.RBUF
  8BB0: 0A 08 42 30 4C 4E 70 49 36 30 41 42 30 42 41 70  // ..B0LNpI60AB0BAp
  8BC0: 49 36 30 4C 42 30 4C 4E A4 52 42 55 46 14 1A 5F  // I60LB0LN.RBUF.._
  8BD0: 53 54 41 00 A0 10 91 93 49 36 30 41 00 93 4C 32  // STA.....I60A..L2
  8BE0: 36 44 01 A4 00 A4 0A 0F 14 1B 5F 50 53 33 00 7D  // 6D........_PS3.}
  8BF0: 50 53 41 54 0A 03 50 53 41 54 7D 50 53 41 54 00  // PSAT..PSAT}PSAT.
  8C00: 50 53 41 54 14 1E 5F 50 53 30 00 7B 50 53 41 54  // PSAT.._PS0.{PSAT
  8C10: 0C FC FF FF FF 50 53 41 54 7D 50 53 41 54 00 50  // .....PSAT}PSAT.P
  8C20: 53 41 54 5B 80 4B 45 59 53 00 49 36 31 41 0B 00  // SAT[.KEYS.I61A..
  8C30: 01 5B 81 0E 4B 45 59 53 43 00 40 42 50 53 41 54  // .[..KEYSC.@BPSAT
  8C40: 20 5B 84 47 0F 54 43 50 52 00 00 00 08 5F 44 45  //  [.G.TCPR...._DE
  8C50: 50 12 11 02 49 32 43 37 5E 5E 2E 49 32 43 37 50  // P...I2C7^^.I2C7P
  8C60: 4D 49 43 14 2F 5F 53 54 41 00 A0 26 93 5E 5E 5E  // MIC./_STA..&.^^^
  8C70: 2F 03 49 32 43 37 50 4D 49 43 41 56 42 4C 01 A4  // /.I2C7PMICAVBL..
  8C80: 5E 5E 5E 2F 03 49 32 43 37 50 4D 49 43 54 43 4F  // ^^^/.I2C7PMICTCO
  8C90: 4E A4 00 14 47 07 5F 4F 4E 5F 00 A0 1D 93 5E 5E  // N...G._ON_....^^
  8CA0: 5E 2E 47 50 4F 30 41 56 42 4C 01 70 00 5E 5E 5E  // ^.GPO0AVBL.p.^^^
  8CB0: 2E 47 50 4F 30 54 43 44 33 5B 22 0A 05 A0 27 93  // .GPO0TCD3["...'.
  8CC0: 5E 5E 5E 2F 03 49 32 43 37 50 4D 49 43 41 56 42  // ^^^/.I2C7PMICAVB
  8CD0: 47 01 70 01 5E 5E 5E 2F 03 49 32 43 37 50 4D 49  // G.p.^^^/.I2C7PMI
  8CE0: 43 54 43 4F 4E 5B 22 0A 0A A0 1D 93 5E 5E 5E 2E  // CTCON[".....^^^.
  8CF0: 47 50 4F 30 41 56 42 4C 01 70 01 5E 5E 5E 2E 47  // GPO0AVBL.p.^^^.G
  8D00: 50 4F 30 54 43 44 33 5B 22 0A 50 14 2E 5F 4F 46  // PO0TCD3[".P.._OF
  8D10: 46 00 A0 27 93 5E 5E 5E 2F 03 49 32 43 37 50 4D  // F..'.^^^/.I2C7PM
  8D20: 49 43 41 56 42 47 01 70 00 5E 5E 5E 2F 03 49 32  // ICAVBG.p.^^^/.I2
  8D30: 43 37 50 4D 49 43 54 43 4F 4E 5B 82 44 31 54 43  // C7PMICTCON[.D1TC
  8D40: 53 30 08 5F 41 44 52 00 08 5F 48 49 44 0D 41 54  // S0._ADR.._HID.AT
  8D50: 4D 4C 31 30 30 30 00 08 5F 43 49 44 0D 50 4E 50  // ML1000.._CID.PNP
  8D60: 30 43 35 30 00 08 5F 53 30 57 00 08 5F 44 45 50  // 0C50.._S0W.._DEP
  8D70: 12 0A 02 47 50 4F 30 49 32 43 37 14 2E 5F 50 53  // ...GPO0I2C7.._PS
  8D80: 33 08 A0 27 93 5E 5E 5E 2F 03 49 32 43 37 50 4D  // 3..'.^^^/.I2C7PM
  8D90: 49 43 41 56 42 47 01 70 00 5E 5E 5E 2F 03 49 32  // ICAVBG.p.^^^/.I2
  8DA0: 43 37 50 4D 49 43 54 43 4F 4E 14 47 07 5F 50 53  // C7PMICTCON.G._PS
  8DB0: 30 08 A0 1D 93 5E 5E 5E 2E 47 50 4F 30 41 56 42  // 0....^^^.GPO0AVB
  8DC0: 4C 01 70 00 5E 5E 5E 2E 47 50 4F 30 54 43 44 33  // L.p.^^^.GPO0TCD3
  8DD0: 5B 22 0A 05 A0 27 93 5E 5E 5E 2F 03 49 32 43 37  // ["...'.^^^/.I2C7
  8DE0: 50 4D 49 43 41 56 42 47 01 70 01 5E 5E 5E 2F 03  // PMICAVBG.p.^^^/.
  8DF0: 49 32 43 37 50 4D 49 43 54 43 4F 4E 5B 22 0A 1E  // I2C7PMICTCON["..
  8E00: A0 1D 93 5E 5E 5E 2E 47 50 4F 30 41 56 42 4C 01  // ...^^^.GPO0AVBL.
  8E10: 70 01 5E 5E 5E 2E 47 50 4F 30 54 43 44 33 5B 22  // p.^^^.GPO0TCD3["
  8E20: 0A 78 14 47 15 5F 43 52 53 00 08 52 42 55 46 11  // .x.G._CRS..RBUF.
  8E30: 4E 04 0A 4A 8E 19 00 01 00 01 02 00 00 01 06 00  // N..J............
  8E40: A0 F0 19 00 4A 00 5C 5F 53 42 2E 49 32 43 36 00  // ....J.\_SB.I2C6.
  8E50: 89 06 00 01 01 45 00 00 00 8C 20 00 01 01 01 00  // .....E.... .....
  8E60: 02 00 00 00 00 00 00 17 00 00 19 00 23 00 00 00  // ............#...
  8E70: 3C 00 5C 5F 53 42 2E 47 50 4F 30 00 79 00 08 50  // <.\_SB.GPO0.y..P
  8E80: 42 55 46 11 4E 04 0A 4A 8E 19 00 01 00 01 02 00  // BUF.N..J........
  8E90: 00 01 06 00 80 1A 06 00 4B 00 5C 5F 53 42 2E 49  // ........K.\_SB.I
  8EA0: 32 43 36 00 89 06 00 01 01 45 00 00 00 8C 20 00  // 2C6......E.... .
  8EB0: 01 01 01 00 02 00 00 00 00 00 00 17 00 00 19 00  // ................
  8EC0: 23 00 00 00 3C 00 5C 5F 53 42 2E 47 50 4F 30 00  // #...<.\_SB.GPO0.
  8ED0: 79 00 08 41 42 55 46 11 46 07 0A 72 8E 19 00 01  // y..ABUF.F..r....
  8EE0: 00 01 02 00 00 01 06 00 A0 F0 19 00 20 00 5C 5F  // ............ .\_
  8EF0: 53 42 2E 49 32 43 36 00 89 06 00 01 01 45 00 00  // SB.I2C6......E..
  8F00: 00 8C 20 00 01 01 01 00 02 00 00 00 00 00 00 17  // .. .............
  8F10: 00 00 19 00 23 00 00 00 3C 00 5C 5F 53 42 2E 47  // ....#...<.\_SB.G
  8F20: 50 4F 30 00 8C 25 00 01 01 01 00 02 00 00 00 00  // PO0..%..........
  8F30: 00 00 17 00 00 19 00 28 00 00 00 0B 00 5C 5F 53  // .......(.....\_S
  8F40: 42 2E 49 32 43 37 2E 50 4D 49 43 00 79 00 A0 0D  // B.I2C7.PMIC.y...
  8F50: 93 49 54 53 41 0A 4B A4 50 42 55 46 A1 1D A0 14  // .ITSA.K.PBUF....
  8F60: 90 93 42 44 49 44 0A 03 93 4F 53 53 4C 01 A4 41  // ..BDID...OSSL..A
  8F70: 42 55 46 A1 06 A4 52 42 55 46 14 4B 0C 5F 44 53  // BUF...RBUF.K._DS
  8F80: 4D 0C 08 5F 54 5F 31 00 08 5F 54 5F 30 00 70 0D  // M.._T_1.._T_0.p.
  8F90: 4D 65 74 68 6F 64 20 5F 44 53 4D 20 62 65 67 69  // Method _DSM begi
  8FA0: 6E 00 5B 31 A0 4A 09 93 68 11 13 0A 10 F7 F6 DF  // n.[1.J..h.......
  8FB0: 3C 67 42 55 45 AD 05 B3 0A 3D 89 38 DE A2 41 08  // <gBUE....=.8..A.
  8FC0: 01 70 99 6A 00 5F 54 5F 30 A0 47 04 93 5F 54 5F  // .p.j._T_0.G.._T_
  8FD0: 30 00 A2 3E 01 70 99 69 00 5F 54 5F 31 A0 2B 93  // 0..>.p.i._T_1.+.
  8FE0: 5F 54 5F 31 01 70 0D 4D 65 74 68 6F 64 20 5F 44  // _T_1.p.Method _D
  8FF0: 53 4D 20 46 75 6E 63 74 69 6F 6E 20 51 75 65 72  // SM Function Quer
  9000: 79 00 5B 31 A4 11 03 01 03 A1 06 A4 11 03 01 00  // y.[1............
  9010: A5 A1 2C A0 26 93 5F 54 5F 30 01 70 0D 4D 65 74  // ..,.&._T_0.p.Met
  9020: 68 6F 64 20 5F 44 53 4D 20 46 75 6E 63 74 69 6F  // hod _DSM Functio
  9030: 6E 20 48 49 44 00 5B 31 A4 00 A1 03 A4 00 A5 A1  // n HID.[1........
  9040: 06 A4 11 03 01 00 14 09 5F 53 54 41 00 A4 0A 0F  // ........_STA....
  9050: 5B 82 49 14 49 32 43 37 08 5F 41 44 52 00 08 5F  // [.I.I2C7._ADR.._
  9060: 48 49 44 0D 38 30 38 36 30 46 34 31 00 08 5F 43  // HID.80860F41.._C
  9070: 49 44 0D 38 30 38 36 30 46 34 31 00 08 5F 44 44  // ID.80860F41.._DD
  9080: 4E 0D 49 6E 74 65 6C 28 52 29 20 49 32 43 20 43  // N.Intel(R) I2C C
  9090: 6F 6E 74 72 6F 6C 6C 65 72 20 23 37 20 2D 20 38  // ontroller #7 - 8
  90A0: 30 38 36 30 46 34 37 00 08 5F 55 49 44 0A 07 08  // 0860F47.._UID...
  90B0: 5F 44 45 50 12 06 01 50 45 50 44 08 52 42 55 46  // _DEP...PEPD.RBUF
  90C0: 11 26 0A 23 86 09 00 01 00 00 00 00 00 10 00 00  // .&.#............
  90D0: 89 06 00 05 01 26 00 00 00 55 1C 00 04 00 02 55  // .....&...U.....U
  90E0: 1D 00 05 00 02 79 00 14 0B 5F 48 52 56 00 A4 53  // .....y..._HRV..S
  90F0: 4F 43 53 14 33 5F 43 52 53 00 8A 52 42 55 46 0A  // OCS.3_CRS..RBUF.
  9100: 04 42 30 42 41 8A 52 42 55 46 0A 08 42 30 4C 4E  // .B0BA.RBUF..B0LN
  9110: 70 49 37 30 41 42 30 42 41 70 49 37 30 4C 42 30  // pI70AB0BApI70LB0
  9120: 4C 4E A4 52 42 55 46 14 1A 5F 53 54 41 00 A0 10  // LN.RBUF.._STA...
  9130: 91 93 49 37 30 41 00 93 4C 32 37 44 01 A4 00 A4  // ..I70A..L27D....
  9140: 0A 0F 14 1B 5F 50 53 33 00 7D 50 53 41 54 0A 03  // ...._PS3.}PSAT..
  9150: 50 53 41 54 7D 50 53 41 54 00 50 53 41 54 14 1E  // PSAT}PSAT.PSAT..
  9160: 5F 50 53 30 00 7B 50 53 41 54 0C FC FF FF FF 50  // _PS0.{PSAT.....P
  9170: 53 41 54 7D 50 53 41 54 00 50 53 41 54 5B 80 4B  // SAT}PSAT.PSAT[.K
  9180: 45 59 53 00 49 37 31 41 0B 00 01 5B 81 0E 4B 45  // EYS.I71A...[..KE
  9190: 59 53 43 00 40 42 50 53 41 54 20 10 45 CF 49 32  // YSC.@BPSAT .E.I2
  91A0: 43 37 5B 82 4D CE 50 4D 49 43 08 5F 41 44 52 00  // C7[.M.PMIC._ADR.
  91B0: 08 5F 48 49 44 0D 49 4E 54 33 33 46 44 00 08 5F  // ._HID.INT33FD.._
  91C0: 43 49 44 0D 49 4E 54 33 33 46 44 00 08 5F 44 44  // CID.INT33FD.._DD
  91D0: 4E 0D 50 4D 49 43 20 47 50 49 4F 20 43 6F 6E 74  // N.PMIC GPIO Cont
  91E0: 72 6F 6C 6C 65 72 00 08 5F 48 52 56 0A 02 08 5F  // roller.._HRV..._
  91F0: 55 49 44 01 08 5F 44 45 50 12 06 01 49 32 43 37  // UID.._DEP...I2C7
  9200: 14 4E 04 5F 43 52 53 00 08 53 42 55 46 11 3C 0A  // .N._CRS..SBUF.<.
  9210: 39 8E 19 00 01 00 01 02 00 00 01 06 00 40 42 0F  // 9............@B.
  9220: 00 6E 00 5C 5F 53 42 2E 49 32 43 37 00 89 06 00  // .n.\_SB.I2C7....
  9230: 09 01 43 00 00 00 89 06 00 09 01 43 00 00 00 89  // ..C........C....
  9240: 06 00 09 01 43 00 00 00 79 00 A4 53 42 55 46 14  // ....C...y..SBUF.
  9250: 13 5F 53 54 41 00 A0 09 93 50 4D 45 4E 00 A4 00  // ._STA....PMEN...
  9260: A4 0A 0F 5B 80 44 50 54 46 8C 00 0B 00 01 5B 81  // ...[.DPTF.....[.
  9270: 4F 07 44 50 54 46 03 54 4D 50 30 20 41 58 30 30  // O.DPTF.TMP0 AX00
  9280: 20 41 58 30 31 20 54 4D 50 31 20 41 58 31 30 20  //  AX01 TMP1 AX10 
  9290: 41 58 31 31 20 54 4D 50 32 20 41 58 32 30 20 41  // AX11 TMP2 AX20 A
  92A0: 58 32 31 20 54 4D 50 33 20 41 58 33 30 20 41 58  // X21 TMP3 AX30 AX
  92B0: 33 31 20 54 4D 50 34 20 41 58 34 30 20 41 58 34  // 31 TMP4 AX40 AX4
  92C0: 31 20 54 4D 50 35 20 41 58 35 30 20 41 58 35 31  // 1 TMP5 AX50 AX51
  92D0: 20 50 45 4E 30 20 50 45 4E 31 20 50 45 4E 32 20  //  PEN0 PEN1 PEN2 
  92E0: 50 45 4E 33 20 50 45 4E 34 20 50 45 4E 35 20 5B  // PEN3 PEN4 PEN5 [
  92F0: 80 50 4D 4F 50 8D 00 0B 00 01 5B 81 49 08 50 4D  // .PMOP.....[.I.PM
  9300: 4F 50 03 56 53 59 53 20 53 59 53 58 20 53 59 53  // OP.VSYS SYSX SYS
  9310: 55 20 53 59 53 53 20 56 35 30 53 20 48 4F 53 54  // U SYSS V50S HOST
  9320: 20 56 42 55 53 20 48 44 4D 49 20 53 32 38 35 20  //  VBUS HDMI S285 
  9330: 58 32 38 35 20 56 33 33 41 20 56 33 33 53 20 56  // X285 V33A V33S V
  9340: 33 33 55 20 56 33 33 49 20 56 31 38 41 20 52 45  // 33U V33I V18A RE
  9350: 46 51 20 56 31 32 41 20 56 31 38 53 20 56 31 38  // FQ V12A V18S V18
  9360: 58 20 56 31 38 55 20 56 31 32 58 20 56 31 32 53  // X V18U V12X V12S
  9370: 20 56 31 30 41 20 56 31 30 53 20 56 31 30 58 20  //  V10A V10S V10X 
  9380: 56 31 30 35 20 5B 80 47 50 4F 50 08 00 0B 00 01  // V105 [.GPOP.....
  9390: 5B 81 4F A2 47 50 4F 50 01 02 11 2B 0A 28 8C 25  // [.O.GPOP...+.(.%
  93A0: 00 01 01 01 00 02 00 00 00 00 00 00 17 00 00 19  // ................
  93B0: 00 28 00 00 00 20 00 5C 5F 53 42 2E 49 32 43 37  // .(... .\_SB.I2C7
  93C0: 2E 50 4D 49 43 00 47 4D 50 30 01 02 11 2B 0A 28  // .PMIC.GMP0...+.(
  93D0: 8C 25 00 01 01 01 00 02 00 00 00 00 00 00 17 00  // .%..............
  93E0: 00 19 00 28 00 00 00 21 00 5C 5F 53 42 2E 49 32  // ...(...!.\_SB.I2
  93F0: 43 37 2E 50 4D 49 43 00 47 58 30 30 01 02 11 2B  // C7.PMIC.GX00...+
  9400: 0A 28 8C 25 00 01 01 01 00 02 00 00 00 00 00 00  // .(.%............
  9410: 17 00 00 19 00 28 00 00 00 22 00 5C 5F 53 42 2E  // .....(...".\_SB.
  9420: 49 32 43 37 2E 50 4D 49 43 00 47 58 30 31 01 02  // I2C7.PMIC.GX01..
  9430: 11 2B 0A 28 8C 25 00 01 01 01 00 02 00 00 00 00  // .+.(.%..........
  9440: 00 00 17 00 00 19 00 28 00 00 00 23 00 5C 5F 53  // .......(...#.\_S
  9450: 42 2E 49 32 43 37 2E 50 4D 49 43 00 47 4D 50 31  // B.I2C7.PMIC.GMP1
  9460: 01 02 11 2B 0A 28 8C 25 00 01 01 01 00 02 00 00  // ...+.(.%........
  9470: 00 00 00 00 17 00 00 19 00 28 00 00 00 24 00 5C  // .........(...$.\
  9480: 5F 53 42 2E 49 32 43 37 2E 50 4D 49 43 00 47 58  // _SB.I2C7.PMIC.GX
  9490: 31 30 01 02 11 2B 0A 28 8C 25 00 01 01 01 00 02  // 10...+.(.%......
  94A0: 00 00 00 00 00 00 17 00 00 19 00 28 00 00 00 25  // ...........(...%
  94B0: 00 5C 5F 53 42 2E 49 32 43 37 2E 50 4D 49 43 00  // .\_SB.I2C7.PMIC.
  94C0: 47 58 31 31 01 02 11 2B 0A 28 8C 25 00 01 01 01  // GX11...+.(.%....
  94D0: 00 02 00 00 00 00 00 00 17 00 00 19 00 28 00 00  // .............(..
  94E0: 00 26 00 5C 5F 53 42 2E 49 32 43 37 2E 50 4D 49  // .&.\_SB.I2C7.PMI
  94F0: 43 00 47 4D 50 32 01 02 11 2B 0A 28 8C 25 00 01  // C.GMP2...+.(.%..
  9500: 01 01 00 02 00 00 00 00 00 00 17 00 00 19 00 28  // ...............(
  9510: 00 00 00 27 00 5C 5F 53 42 2E 49 32 43 37 2E 50  // ...'.\_SB.I2C7.P
  9520: 4D 49 43 00 47 58 32 30 01 02 11 2B 0A 28 8C 25  // MIC.GX20...+.(.%
  9530: 00 01 01 01 00 02 00 00 00 00 00 00 17 00 00 19  // ................
  9540: 00 28 00 00 00 28 00 5C 5F 53 42 2E 49 32 43 37  // .(...(.\_SB.I2C7
  9550: 2E 50 4D 49 43 00 47 58 32 31 01 02 11 2B 0A 28  // .PMIC.GX21...+.(
  9560: 8C 25 00 01 01 01 00 02 00 00 00 00 00 00 17 00  // .%..............
  9570: 00 19 00 28 00 00 00 29 00 5C 5F 53 42 2E 49 32  // ...(...).\_SB.I2
  9580: 43 37 2E 50 4D 49 43 00 47 4D 50 33 01 02 11 2B  // C7.PMIC.GMP3...+
  9590: 0A 28 8C 25 00 01 01 01 00 02 00 00 00 00 00 00  // .(.%............
  95A0: 17 00 00 19 00 28 00 00 00 2A 00 5C 5F 53 42 2E  // .....(...*.\_SB.
  95B0: 49 32 43 37 2E 50 4D 49 43 00 47 58 33 30 01 02  // I2C7.PMIC.GX30..
  95C0: 11 2B 0A 28 8C 25 00 01 01 01 00 02 00 00 00 00  // .+.(.%..........
  95D0: 00 00 17 00 00 19 00 28 00 00 00 2B 00 5C 5F 53  // .......(...+.\_S
  95E0: 42 2E 49 32 43 37 2E 50 4D 49 43 00 47 58 33 31  // B.I2C7.PMIC.GX31
  95F0: 01 02 11 2B 0A 28 8C 25 00 01 01 01 00 02 00 00  // ...+.(.%........
  9600: 00 00 00 00 17 00 00 19 00 28 00 00 00 2C 00 5C  // .........(...,.\
  9610: 5F 53 42 2E 49 32 43 37 2E 50 4D 49 43 00 47 4D  // _SB.I2C7.PMIC.GM
  9620: 50 34 01 02 11 2B 0A 28 8C 25 00 01 01 01 00 02  // P4...+.(.%......
  9630: 00 00 00 00 00 00 17 00 00 19 00 28 00 00 00 2D  // ...........(...-
  9640: 00 5C 5F 53 42 2E 49 32 43 37 2E 50 4D 49 43 00  // .\_SB.I2C7.PMIC.
  9650: 47 58 34 30 01 02 11 2B 0A 28 8C 25 00 01 01 01  // GX40...+.(.%....
  9660: 00 02 00 00 00 00 00 00 17 00 00 19 00 28 00 00  // .............(..
  9670: 00 2E 00 5C 5F 53 42 2E 49 32 43 37 2E 50 4D 49  // ...\_SB.I2C7.PMI
  9680: 43 00 47 58 34 31 01 02 11 2B 0A 28 8C 25 00 01  // C.GX41...+.(.%..
  9690: 01 01 00 02 00 00 00 00 00 00 17 00 00 19 00 28  // ...............(
  96A0: 00 00 00 2F 00 5C 5F 53 42 2E 49 32 43 37 2E 50  // .../.\_SB.I2C7.P
  96B0: 4D 49 43 00 47 4D 50 35 01 02 11 2B 0A 28 8C 25  // MIC.GMP5...+.(.%
  96C0: 00 01 01 01 00 02 00 00 00 00 00 00 17 00 00 19  // ................
  96D0: 00 28 00 00 00 30 00 5C 5F 53 42 2E 49 32 43 37  // .(...0.\_SB.I2C7
  96E0: 2E 50 4D 49 43 00 47 58 35 30 01 02 11 2B 0A 28  // .PMIC.GX50...+.(
  96F0: 8C 25 00 01 01 01 00 02 00 00 00 00 00 00 17 00  // .%..............
  9700: 00 19 00 28 00 00 00 31 00 5C 5F 53 42 2E 49 32  // ...(...1.\_SB.I2
  9710: 43 37 2E 50 4D 49 43 00 47 58 35 31 01 02 11 2B  // C7.PMIC.GX51...+
  9720: 0A 28 8C 25 00 01 01 01 00 02 00 00 00 00 00 00  // .(.%............
  9730: 17 00 00 19 00 28 00 00 00 32 00 5C 5F 53 42 2E  // .....(...2.\_SB.
  9740: 49 32 43 37 2E 50 4D 49 43 00 47 45 4E 30 01 02  // I2C7.PMIC.GEN0..
  9750: 11 2B 0A 28 8C 25 00 01 01 01 00 02 00 00 00 00  // .+.(.%..........
  9760: 00 00 17 00 00 19 00 28 00 00 00 33 00 5C 5F 53  // .......(...3.\_S
  9770: 42 2E 49 32 43 37 2E 50 4D 49 43 00 47 45 4E 31  // B.I2C7.PMIC.GEN1
  9780: 01 02 11 2B 0A 28 8C 25 00 01 01 01 00 02 00 00  // ...+.(.%........
  9790: 00 00 00 00 17 00 00 19 00 28 00 00 00 34 00 5C  // .........(...4.\
  97A0: 5F 53 42 2E 49 32 43 37 2E 50 4D 49 43 00 47 45  // _SB.I2C7.PMIC.GE
  97B0: 4E 32 01 02 11 2B 0A 28 8C 25 00 01 01 01 00 02  // N2...+.(.%......
  97C0: 00 00 00 00 00 00 17 00 00 19 00 28 00 00 00 35  // ...........(...5
  97D0: 00 5C 5F 53 42 2E 49 32 43 37 2E 50 4D 49 43 00  // .\_SB.I2C7.PMIC.
  97E0: 47 45 4E 33 01 02 11 2B 0A 28 8C 25 00 01 01 01  // GEN3...+.(.%....
  97F0: 00 02 00 00 00 00 00 00 17 00 00 19 00 28 00 00  // .............(..
  9800: 00 36 00 5C 5F 53 42 2E 49 32 43 37 2E 50 4D 49  // .6.\_SB.I2C7.PMI
  9810: 43 00 47 45 4E 34 01 02 11 2B 0A 28 8C 25 00 01  // C.GEN4...+.(.%..
  9820: 01 01 00 02 00 00 00 00 00 00 17 00 00 19 00 28  // ...............(
  9830: 00 00 00 37 00 5C 5F 53 42 2E 49 32 43 37 2E 50  // ...7.\_SB.I2C7.P
  9840: 4D 49 43 00 47 45 4E 35 01 02 11 2B 0A 28 8C 25  // MIC.GEN5...+.(.%
  9850: 00 01 01 01 00 02 00 00 00 00 00 00 17 00 00 19  // ................
  9860: 00 28 00 00 00 40 00 5C 5F 53 42 2E 49 32 43 37  // .(...@.\_SB.I2C7
  9870: 2E 50 4D 49 43 00 47 53 59 53 01 02 11 2B 0A 28  // .PMIC.GSYS...+.(
  9880: 8C 25 00 01 01 01 00 02 00 00 00 00 00 00 17 00  // .%..............
  9890: 00 19 00 28 00 00 00 41 00 5C 5F 53 42 2E 49 32  // ...(...A.\_SB.I2
  98A0: 43 37 2E 50 4D 49 43 00 47 59 53 58 01 02 11 2B  // C7.PMIC.GYSX...+
  98B0: 0A 28 8C 25 00 01 01 01 00 02 00 00 00 00 00 00  // .(.%............
  98C0: 17 00 00 19 00 28 00 00 00 42 00 5C 5F 53 42 2E  // .....(...B.\_SB.
  98D0: 49 32 43 37 2E 50 4D 49 43 00 47 59 53 55 01 02  // I2C7.PMIC.GYSU..
  98E0: 11 2B 0A 28 8C 25 00 01 01 01 00 02 00 00 00 00  // .+.(.%..........
  98F0: 00 00 17 00 00 19 00 28 00 00 00 43 00 5C 5F 53  // .......(...C.\_S
  9900: 42 2E 49 32 43 37 2E 50 4D 49 43 00 47 59 53 53  // B.I2C7.PMIC.GYSS
  9910: 01 02 11 2B 0A 28 8C 25 00 01 01 01 00 02 00 00  // ...+.(.%........
  9920: 00 00 00 00 17 00 00 19 00 28 00 00 00 44 00 5C  // .........(...D.\
  9930: 5F 53 42 2E 49 32 43 37 2E 50 4D 49 43 00 47 35  // _SB.I2C7.PMIC.G5
  9940: 30 53 01 02 11 2B 0A 28 8C 25 00 01 01 01 00 02  // 0S...+.(.%......
  9950: 00 00 00 00 00 00 17 00 00 19 00 28 00 00 00 45  // ...........(...E
  9960: 00 5C 5F 53 42 2E 49 32 43 37 2E 50 4D 49 43 00  // .\_SB.I2C7.PMIC.
  9970: 47 4F 53 54 01 02 11 2B 0A 28 8C 25 00 01 01 01  // GOST...+.(.%....
  9980: 00 02 00 00 00 00 00 00 17 00 00 19 00 28 00 00  // .............(..
  9990: 00 46 00 5C 5F 53 42 2E 49 32 43 37 2E 50 4D 49  // .F.\_SB.I2C7.PMI
  99A0: 43 00 47 42 55 53 01 02 11 2B 0A 28 8C 25 00 01  // C.GBUS...+.(.%..
  99B0: 01 01 00 02 00 00 00 00 00 00 17 00 00 19 00 28  // ...............(
  99C0: 00 00 00 47 00 5C 5F 53 42 2E 49 32 43 37 2E 50  // ...G.\_SB.I2C7.P
  99D0: 4D 49 43 00 47 44 4D 49 01 02 11 2B 0A 28 8C 25  // MIC.GDMI...+.(.%
  99E0: 00 01 01 01 00 02 00 00 00 00 00 00 17 00 00 19  // ................
  99F0: 00 28 00 00 00 48 00 5C 5F 53 42 2E 49 32 43 37  // .(...H.\_SB.I2C7
  9A00: 2E 50 4D 49 43 00 47 32 38 53 01 02 11 2B 0A 28  // .PMIC.G28S...+.(
  9A10: 8C 25 00 01 01 01 00 02 00 00 00 00 00 00 17 00  // .%..............
  9A20: 00 19 00 28 00 00 00 49 00 5C 5F 53 42 2E 49 32  // ...(...I.\_SB.I2
  9A30: 43 37 2E 50 4D 49 43 00 47 32 38 58 01 02 11 2B  // C7.PMIC.G28X...+
  9A40: 0A 28 8C 25 00 01 01 01 00 02 00 00 00 00 00 00  // .(.%............
  9A50: 17 00 00 19 00 28 00 00 00 4A 00 5C 5F 53 42 2E  // .....(...J.\_SB.
  9A60: 49 32 43 37 2E 50 4D 49 43 00 47 33 33 41 01 02  // I2C7.PMIC.G33A..
  9A70: 11 2B 0A 28 8C 25 00 01 01 01 00 02 00 00 00 00  // .+.(.%..........
  9A80: 00 00 17 00 00 19 00 28 00 00 00 4B 00 5C 5F 53  // .......(...K.\_S
  9A90: 42 2E 49 32 43 37 2E 50 4D 49 43 00 47 33 33 53  // B.I2C7.PMIC.G33S
  9AA0: 01 02 11 2B 0A 28 8C 25 00 01 01 01 00 02 00 00  // ...+.(.%........
  9AB0: 00 00 00 00 17 00 00 19 00 28 00 00 00 4C 00 5C  // .........(...L.\
  9AC0: 5F 53 42 2E 49 32 43 37 2E 50 4D 49 43 00 47 33  // _SB.I2C7.PMIC.G3
  9AD0: 33 55 01 02 11 2B 0A 28 8C 25 00 01 01 01 00 02  // 3U...+.(.%......
  9AE0: 00 00 00 00 00 00 17 00 00 19 00 28 00 00 00 4D  // ...........(...M
  9AF0: 00 5C 5F 53 42 2E 49 32 43 37 2E 50 4D 49 43 00  // .\_SB.I2C7.PMIC.
  9B00: 47 33 33 49 01 02 11 2B 0A 28 8C 25 00 01 01 01  // G33I...+.(.%....
  9B10: 00 02 00 00 00 00 00 00 17 00 00 19 00 28 00 00  // .............(..
  9B20: 00 4E 00 5C 5F 53 42 2E 49 32 43 37 2E 50 4D 49  // .N.\_SB.I2C7.PMI
  9B30: 43 00 47 31 38 41 01 02 11 2B 0A 28 8C 25 00 01  // C.G18A...+.(.%..
  9B40: 01 01 00 02 00 00 00 00 00 00 17 00 00 19 00 28  // ...............(
  9B50: 00 00 00 4F 00 5C 5F 53 42 2E 49 32 43 37 2E 50  // ...O.\_SB.I2C7.P
  9B60: 4D 49 43 00 47 45 46 51 01 02 11 2B 0A 28 8C 25  // MIC.GEFQ...+.(.%
  9B70: 00 01 01 01 00 02 00 00 00 00 00 00 17 00 00 19  // ................
  9B80: 00 28 00 00 00 50 00 5C 5F 53 42 2E 49 32 43 37  // .(...P.\_SB.I2C7
  9B90: 2E 50 4D 49 43 00 47 31 32 41 01 02 11 2B 0A 28  // .PMIC.G12A...+.(
  9BA0: 8C 25 00 01 01 01 00 02 00 00 00 00 00 00 17 00  // .%..............
  9BB0: 00 19 00 28 00 00 00 51 00 5C 5F 53 42 2E 49 32  // ...(...Q.\_SB.I2
  9BC0: 43 37 2E 50 4D 49 43 00 47 31 38 53 01 02 11 2B  // C7.PMIC.G18S...+
  9BD0: 0A 28 8C 25 00 01 01 01 00 02 00 00 00 00 00 00  // .(.%............
  9BE0: 17 00 00 19 00 28 00 00 00 52 00 5C 5F 53 42 2E  // .....(...R.\_SB.
  9BF0: 49 32 43 37 2E 50 4D 49 43 00 47 31 38 58 01 02  // I2C7.PMIC.G18X..
  9C00: 11 2B 0A 28 8C 25 00 01 01 01 00 02 00 00 00 00  // .+.(.%..........
  9C10: 00 00 17 00 00 19 00 28 00 00 00 53 00 5C 5F 53  // .......(...S.\_S
  9C20: 42 2E 49 32 43 37 2E 50 4D 49 43 00 47 31 38 55  // B.I2C7.PMIC.G18U
  9C30: 01 02 11 2B 0A 28 8C 25 00 01 01 01 00 02 00 00  // ...+.(.%........
  9C40: 00 00 00 00 17 00 00 19 00 28 00 00 00 54 00 5C  // .........(...T.\
  9C50: 5F 53 42 2E 49 32 43 37 2E 50 4D 49 43 00 47 31  // _SB.I2C7.PMIC.G1
  9C60: 32 58 01 02 11 2B 0A 28 8C 25 00 01 01 01 00 02  // 2X...+.(.%......
  9C70: 00 00 00 00 00 00 17 00 00 19 00 28 00 00 00 55  // ...........(...U
  9C80: 00 5C 5F 53 42 2E 49 32 43 37 2E 50 4D 49 43 00  // .\_SB.I2C7.PMIC.
  9C90: 47 31 32 53 01 02 11 2B 0A 28 8C 25 00 01 01 01  // G12S...+.(.%....
  9CA0: 00 02 00 00 00 00 00 00 17 00 00 19 00 28 00 00  // .............(..
  9CB0: 00 56 00 5C 5F 53 42 2E 49 32 43 37 2E 50 4D 49  // .V.\_SB.I2C7.PMI
  9CC0: 43 00 47 31 30 41 01 02 11 2B 0A 28 8C 25 00 01  // C.G10A...+.(.%..
  9CD0: 01 01 00 02 00 00 00 00 00 00 17 00 00 19 00 28  // ...............(
  9CE0: 00 00 00 57 00 5C 5F 53 42 2E 49 32 43 37 2E 50  // ...W.\_SB.I2C7.P
  9CF0: 4D 49 43 00 47 31 30 53 01 02 11 2B 0A 28 8C 25  // MIC.G10S...+.(.%
  9D00: 00 01 01 01 00 02 00 00 00 00 00 00 17 00 00 19  // ................
  9D10: 00 28 00 00 00 58 00 5C 5F 53 42 2E 49 32 43 37  // .(...X.\_SB.I2C7
  9D20: 2E 50 4D 49 43 00 47 31 30 58 01 02 11 2B 0A 28  // .PMIC.G10X...+.(
  9D30: 8C 25 00 01 01 01 00 02 00 00 00 00 00 00 17 00  // .%..............
  9D40: 00 19 00 28 00 00 00 59 00 5C 5F 53 42 2E 49 32  // ...(...Y.\_SB.I2
  9D50: 43 37 2E 50 4D 49 43 00 47 31 30 35 01 02 11 2B  // C7.PMIC.G105...+
  9D60: 0A 28 8C 25 00 01 01 01 00 02 00 00 00 00 00 00  // .(.%............
  9D70: 17 00 00 19 00 28 00 00 00 5E 00 5C 5F 53 42 2E  // .....(...^.\_SB.
  9D80: 49 32 43 37 2E 50 4D 49 43 00 46 43 4F 54 01 02  // I2C7.PMIC.FCOT..
  9D90: 11 2B 0A 28 8C 25 00 01 01 01 00 02 00 00 00 00  // .+.(.%..........
  9DA0: 00 00 17 00 00 19 00 28 00 00 00 0B 00 5C 5F 53  // .......(.....\_S
  9DB0: 42 2E 49 32 43 37 2E 50 4D 49 43 00 54 43 4F 4E  // B.I2C7.PMIC.TCON
  9DC0: 01 08 41 56 42 4C 00 08 41 56 42 44 00 08 41 56  // ..AVBL..AVBD..AV
  9DD0: 42 47 00 14 2A 5F 52 45 47 02 A0 0B 93 68 0A 08  // BG..*_REG....h..
  9DE0: 70 69 41 56 42 47 A0 0B 93 68 0A 8D 70 69 41 56  // piAVBG...h..piAV
  9DF0: 42 4C A0 0B 93 68 0A 8C 70 69 41 56 42 44 08 4C  // BL...h..piAVBD.L
  9E00: 50 41 54 12 4D 08 30 0B E3 09 0B D1 03 0B 15 0A  // PAT.M.0.........
  9E10: 0B C1 03 0B 47 0A 0B AD 03 0B 79 0A 0B 95 03 0B  // ....G.....y.....
  9E20: AB 0A 0B 77 03 0B DD 0A 0B 55 03 0B 0F 0B 0B 2D  // ...w.....U.....-
  9E30: 03 0B 41 0B 0B 01 03 0B 73 0B 0B D0 02 0B A5 0B  // ..A.....s.......
  9E40: 0B 9D 02 0B D7 0B 0B 67 02 0B 09 0C 0B 31 02 0B  // .......g.....1..
  9E50: 3B 0C 0B FC 01 0B 6D 0C 0B C8 01 0B 9F 0C 0B 97  // ;.....m.........
  9E60: 01 0B D1 0C 0B 65 01 0B 03 0D 0B 3B 01 0B 35 0D  // .....e.....;..5.
  9E70: 0B 15 01 0B 67 0D 0A F3 0B 99 0D 0A D4 0B CB 0D  // ....g...........
  9E80: 0A BA 0B FD 0D 0A A2 0B 2F 0E 0A 8C 0B 93 0E 0A  // ......../.......
  9E90: 6B 10 42 17 49 32 43 31 5B 82 47 07 49 4D 50 31  // k.B.I2C1[.G.IMP1
  9EA0: 08 5F 41 44 52 00 08 5F 48 49 44 0D 49 4D 50 4A  // ._ADR.._HID.IMPJ
  9EB0: 30 30 30 31 00 08 5F 43 49 44 0D 49 4D 50 4A 30  // 0001.._CID.IMPJ0
  9EC0: 30 30 31 00 08 5F 55 49 44 01 14 13 5F 53 54 41  // 001.._UID..._STA
  9ED0: 00 A0 0A 93 50 53 53 44 01 A4 0A 0F A4 00 14 32  // ....PSSD.......2
  9EE0: 5F 43 52 53 00 08 53 42 55 46 11 21 0A 1E 8E 19  // _CRS..SBUF.!....
  9EF0: 00 01 00 01 02 00 00 01 06 00 A0 86 01 00 6E 00  // ..............n.
  9F00: 5C 5F 53 42 2E 49 32 43 31 00 79 00 A4 53 42 55  // \_SB.I2C1.y..SBU
  9F10: 46 5B 82 47 07 49 4D 50 32 08 5F 41 44 52 00 08  // F[.G.IMP2._ADR..
  9F20: 5F 48 49 44 0D 49 4D 50 4A 30 30 30 32 00 08 5F  // _HID.IMPJ0002.._
  9F30: 43 49 44 0D 49 4D 50 4A 30 30 30 32 00 08 5F 55  // CID.IMPJ0002.._U
  9F40: 49 44 01 14 13 5F 53 54 41 00 A0 0A 93 50 53 53  // ID..._STA....PSS
  9F50: 44 01 A4 0A 0F A4 00 14 32 5F 43 52 53 00 08 53  // D.......2_CRS..S
  9F60: 42 55 46 11 21 0A 1E 8E 19 00 01 00 01 02 00 00  // BUF.!...........
  9F70: 01 06 00 A0 86 01 00 6F 00 5C 5F 53 42 2E 49 32  // .......o.\_SB.I2
  9F80: 43 31 00 79 00 A4 53 42 55 46 5B 82 48 07 49 4D  // C1.y..SBUF[.H.IM
  9F90: 50 33 08 5F 41 44 52 00 08 5F 48 49 44 0D 49 4D  // P3._ADR.._HID.IM
  9FA0: 50 4A 30 30 30 33 00 08 5F 43 49 44 0D 49 4D 50  // PJ0003.._CID.IMP
  9FB0: 4A 30 30 30 33 00 08 5F 55 49 44 01 14 14 5F 53  // J0003.._UID..._S
  9FC0: 54 41 00 A0 0B 93 50 53 53 44 0A 02 A4 0A 0F A4  // TA....PSSD......
  9FD0: 00 14 32 5F 43 52 53 00 08 53 42 55 46 11 21 0A  // ..2_CRS..SBUF.!.
  9FE0: 1E 8E 19 00 01 00 01 02 00 00 01 06 00 A0 86 01  // ................
  9FF0: 00 6E 00 5C 5F 53 42 2E 49 32 43 31 00 79 00 A4  // .n.\_SB.I2C1.y..
  A000: 53 42 55 46 5B 84 47 12 50 32 38 58 05 00 00 08  // SBUF[.G.P28X....
  A010: 5F 44 45 50 12 10 02 49 32 43 37 5E 2E 49 32 43  // _DEP...I2C7^.I2C
  A020: 37 50 4D 49 43 14 45 05 5F 53 54 41 00 A0 4B 04  // 7PMIC.E._STA..K.
  A030: 93 5E 5E 2F 03 49 32 43 37 50 4D 49 43 41 56 42  // .^^/.I2C7PMICAVB
  A040: 47 01 70 00 5E 5E 2F 03 49 32 43 37 50 4D 49 43  // G.p.^^/.I2C7PMIC
  A050: 47 32 38 58 A0 24 93 5E 5E 2F 03 49 32 43 37 50  // G28X.$.^^/.I2C7P
  A060: 4D 49 43 41 56 42 4C 01 A4 5E 5E 2F 03 49 32 43  // MICAVBL..^^/.I2C
  A070: 37 50 4D 49 43 58 32 38 35 A4 00 14 48 05 5F 4F  // 7PMICX285...H._O
  A080: 4E 5F 00 A0 40 05 93 5E 5E 2F 03 49 32 43 37 50  // N_..@..^^/.I2C7P
  A090: 4D 49 43 41 56 42 4C 01 70 01 5E 5E 2F 03 49 32  // MICAVBL.p.^^/.I2
  A0A0: 43 37 50 4D 49 43 58 32 38 35 A0 29 93 5E 5E 2F  // C7PMICX285.).^^/
  A0B0: 03 49 32 43 37 50 4D 49 43 41 56 42 47 01 70 01  // .I2C7PMICAVBG.p.
  A0C0: 5E 5E 2F 03 49 32 43 37 50 4D 49 43 47 32 38 58  // ^^/.I2C7PMICG28X
  A0D0: 5B 22 0A 1E 14 48 05 5F 4F 46 46 00 A0 40 05 93  // ["...H._OFF..@..
  A0E0: 5E 5E 2F 03 49 32 43 37 50 4D 49 43 41 56 42 4C  // ^^/.I2C7PMICAVBL
  A0F0: 01 70 00 5E 5E 2F 03 49 32 43 37 50 4D 49 43 58  // .p.^^/.I2C7PMICX
  A100: 32 38 35 A0 29 93 5E 5E 2F 03 49 32 43 37 50 4D  // 285.).^^/.I2C7PM
  A110: 49 43 41 56 42 47 01 70 01 5E 5E 2F 03 49 32 43  // ICAVBG.p.^^/.I2C
  A120: 37 50 4D 49 43 47 32 38 58 5B 22 0A 1E 5B 84 47  // 7PMICG28X["..[.G
  A130: 12 50 31 38 58 05 00 00 08 5F 44 45 50 12 10 02  // .P18X...._DEP...
  A140: 49 32 43 37 5E 2E 49 32 43 37 50 4D 49 43 14 45  // I2C7^.I2C7PMIC.E
  A150: 05 5F 53 54 41 00 A0 4B 04 93 5E 5E 2F 03 49 32  // ._STA..K..^^/.I2
  A160: 43 37 50 4D 49 43 41 56 42 47 01 70 00 5E 5E 2F  // C7PMICAVBG.p.^^/
  A170: 03 49 32 43 37 50 4D 49 43 47 31 38 58 A0 24 93  // .I2C7PMICG18X.$.
  A180: 5E 5E 2F 03 49 32 43 37 50 4D 49 43 41 56 42 4C  // ^^/.I2C7PMICAVBL
  A190: 01 A4 5E 5E 2F 03 49 32 43 37 50 4D 49 43 56 31  // ..^^/.I2C7PMICV1
  A1A0: 38 58 A4 00 14 48 05 5F 4F 4E 5F 00 A0 40 05 93  // 8X...H._ON_..@..
  A1B0: 5E 5E 2F 03 49 32 43 37 50 4D 49 43 41 56 42 4C  // ^^/.I2C7PMICAVBL
  A1C0: 01 70 01 5E 5E 2F 03 49 32 43 37 50 4D 49 43 56  // .p.^^/.I2C7PMICV
  A1D0: 31 38 58 A0 29 93 5E 5E 2F 03 49 32 43 37 50 4D  // 18X.).^^/.I2C7PM
  A1E0: 49 43 41 56 42 47 01 70 01 5E 5E 2F 03 49 32 43  // ICAVBG.p.^^/.I2C
  A1F0: 37 50 4D 49 43 47 31 38 58 5B 22 0A 1E 14 48 05  // 7PMICG18X["...H.
  A200: 5F 4F 46 46 00 A0 40 05 93 5E 5E 2F 03 49 32 43  // _OFF..@..^^/.I2C
  A210: 37 50 4D 49 43 41 56 42 4C 01 70 00 5E 5E 2F 03  // 7PMICAVBL.p.^^/.
  A220: 49 32 43 37 50 4D 49 43 56 31 38 58 A0 29 93 5E  // I2C7PMICV18X.).^
  A230: 5E 2F 03 49 32 43 37 50 4D 49 43 41 56 42 47 01  // ^/.I2C7PMICAVBG.
  A240: 70 01 5E 5E 2F 03 49 32 43 37 50 4D 49 43 47 31  // p.^^/.I2C7PMICG1
  A250: 38 58 5B 22 0A 1E 5B 82 42 2D 54 42 41 44 08 5F  // 8X["..[.B-TBAD._
  A260: 48 49 44 0D 49 4E 54 43 46 44 39 00 08 5F 43 49  // HID.INTCFD9.._CI
  A270: 44 0D 50 4E 50 30 43 34 30 00 08 5F 44 44 4E 0D  // D.PNP0C40.._DDN.
  A280: 4B 65 79 62 6F 61 72 64 20 6C 65 73 73 20 73 79  // Keyboard less sy
  A290: 73 74 65 6D 20 2D 20 35 20 42 75 74 74 6F 6E 20  // stem - 5 Button 
  A2A0: 41 72 72 61 79 20 44 65 76 69 63 65 00 08 5F 44  // Array Device.._D
  A2B0: 45 50 12 18 04 47 50 4F 30 47 50 4F 32 49 32 43  // EP...GPO0GPO2I2C
  A2C0: 37 5E 2E 49 32 43 37 50 4D 49 43 14 4F 1C 5F 43  // 7^.I2C7PMIC.O._C
  A2D0: 52 53 00 08 52 42 55 46 11 44 0C 0A C0 8C 20 00  // RS..RBUF.D.... .
  A2E0: 01 00 01 00 15 00 00 00 00 00 00 17 00 00 19 00  // ................
  A2F0: 23 00 00 00 10 00 5C 5F 53 42 2E 47 50 4F 32 00  // #.....\_SB.GPO2.
  A300: 8C 20 00 01 00 01 00 15 00 00 00 00 00 00 17 00  // . ..............
  A310: 00 19 00 23 00 00 00 06 00 5C 5F 53 42 2E 47 50  // ...#.....\_SB.GP
  A320: 4F 30 00 8C 25 00 01 00 01 00 05 00 00 00 00 00  // O0..%...........
  A330: 00 17 00 00 19 00 28 00 00 00 00 00 5C 5F 53 42  // ......(.....\_SB
  A340: 2E 49 32 43 37 2E 50 4D 49 43 00 8C 25 00 01 00  // .I2C7.PMIC..%...
  A350: 01 00 05 00 00 00 00 00 00 17 00 00 19 00 28 00  // ..............(.
  A360: 00 00 01 00 5C 5F 53 42 2E 49 32 43 37 2E 50 4D  // ....\_SB.I2C7.PM
  A370: 49 43 00 8C 25 00 01 00 01 00 05 00 00 00 00 00  // IC..%...........
  A380: 00 17 00 00 19 00 28 00 00 00 07 00 5C 5F 53 42  // ......(.....\_SB
  A390: 2E 49 32 43 37 2E 50 4D 49 43 00 79 00 08 50 42  // .I2C7.PMIC.y..PB
  A3A0: 55 46 11 45 0B 0A B1 8C 20 00 01 00 01 00 15 00  // UF.E.... .......
  A3B0: 00 00 00 00 00 17 00 00 19 00 23 00 00 00 10 00  // ..........#.....
  A3C0: 5C 5F 53 42 2E 47 50 4F 32 00 8C 20 00 01 00 01  // \_SB.GPO2.. ....
  A3D0: 00 15 00 00 00 00 00 00 17 00 00 19 00 23 00 00  // .............#..
  A3E0: 00 06 00 5C 5F 53 42 2E 47 50 4F 30 00 8C 20 00  // ...\_SB.GPO0.. .
  A3F0: 01 00 01 00 05 00 00 00 00 00 00 17 00 00 19 00  // ................
  A400: 23 00 00 00 05 00 5C 5F 53 42 2E 47 50 4F 30 00  // #.....\_SB.GPO0.
  A410: 8C 20 00 01 00 01 00 05 00 00 00 00 00 00 17 00  // . ..............
  A420: 00 19 00 23 00 00 00 04 00 5C 5F 53 42 2E 47 50  // ...#.....\_SB.GP
  A430: 4F 30 00 8C 20 00 01 00 01 00 05 00 00 00 00 00  // O0.. ...........
  A440: 00 17 00 00 19 00 23 00 00 00 02 00 5C 5F 53 42  // ......#.....\_SB
  A450: 2E 47 50 4F 30 00 79 00 A0 24 93 42 44 49 44 0A  // .GPO0.y..$.BDID.
  A460: 04 A0 0D 93 46 42 49 44 0A 02 A4 50 42 55 46 A0  // ....FBID...PBUF.
  A470: 0D 93 46 42 49 44 0A 03 A4 50 42 55 46 A1 18 A0  // ..FBID...PBUF...
  A480: 16 93 42 44 49 44 0A 02 A0 0D 93 46 42 49 44 0A  // ..BDID.....FBID.
  A490: 02 A4 50 42 55 46 A4 52 42 55 46 14 09 5F 53 54  // ..PBUF.RBUF.._ST
  A4A0: 41 00 A4 0A 0F 14 44 08 5F 44 53 4D 0C 08 5F 54  // A.....D._DSM.._T
  A4B0: 5F 30 00 A0 1B 93 4F 53 59 53 0B DD 07 70 01 5E  // _0....OSYS...p.^
  A4C0: 5E 2F 03 49 32 43 37 50 4D 49 43 46 43 4F 54 A1  // ^/.I2C7PMICFCOT.
  A4D0: 13 70 00 5E 5E 2F 03 49 32 43 37 50 4D 49 43 46  // .p.^^/.I2C7PMICF
  A4E0: 43 4F 54 A0 3D 93 68 11 13 0A 10 C5 F3 BC DF A5  // COT.=.h.........
  A4F0: E7 E6 44 9C 1F 29 C7 6F 6E 05 9C A2 25 01 70 99  // ..D..).on...%.p.
  A500: 6A 00 5F 54 5F 30 A0 0C 93 5F 54 5F 30 00 A4 11  // j._T_0..._T_0...
  A510: 03 01 03 A1 0C A0 0A 93 5F 54 5F 30 01 A4 0A 07  // ........_T_0....
  A520: A5 A1 06 A4 11 03 01 00 A4 00 5B 82 42 13 4D 42  // ..........[.B.MB
  A530: 49 44 08 5F 48 49 44 0D 49 4E 54 33 33 42 44 00  // ID._HID.INT33BD.
  A540: 08 5F 43 49 44 0D 49 4E 54 33 33 42 44 00 08 5F  // ._CID.INT33BD.._
  A550: 48 52 56 0A 02 08 5F 55 49 44 01 14 22 5F 43 52  // HRV..._UID.."_CR
  A560: 53 08 08 52 42 55 46 11 11 0A 0E 86 09 00 01 D0  // S..RBUF.........
  A570: 00 00 E0 0C 00 00 00 79 00 A4 52 42 55 46 5B 80  // .......y..RBUF[.
  A580: 52 45 47 53 87 00 0A 30 5B 81 24 52 45 47 53 03  // REGS...0[.$REGS.
  A590: 50 4F 52 54 20 52 45 47 5F 20 44 41 54 41 20 4D  // PORT REG_ DATA M
  A5A0: 41 53 4B 20 42 45 5F 5F 20 4F 50 5F 5F 20 08 41  // ASK BE__ OP__ .A
  A5B0: 56 42 4C 00 14 12 5F 52 45 47 02 A0 0B 93 68 0A  // VBL..._REG....h.
  A5C0: 87 70 69 41 56 42 4C 14 35 52 45 41 44 0B 70 0C  // .piAVBL.5READ.p.
  A5D0: FF FF FF FF 60 A0 25 93 41 56 42 4C 01 70 00 4F  // ....`.%.AVBL.p.O
  A5E0: 50 5F 5F 70 68 50 4F 52 54 70 69 52 45 47 5F 70  // P__phPORTpiREG_p
  A5F0: 6A 42 45 5F 5F 70 44 41 54 41 60 A4 60 14 2C 57  // jBE__pDATA`.`.,W
  A600: 52 49 54 0C A0 25 93 41 56 42 4C 01 70 01 4F 50  // RIT..%.AVBL.p.OP
  A610: 5F 5F 70 68 50 4F 52 54 70 69 52 45 47 5F 70 6A  // __phPORTpiREG_pj
  A620: 42 45 5F 5F 70 6B 44 41 54 41 14 33 4D 4F 44 49  // BE__pkDATA.3MODI
  A630: 0D A0 2C 93 41 56 42 4C 01 70 0A 02 4F 50 5F 5F  // ..,.AVBL.p..OP__
  A640: 70 68 50 4F 52 54 70 69 52 45 47 5F 70 6A 42 45  // phPORTpiREG_pjBE
  A650: 5F 5F 70 6B 44 41 54 41 70 6C 4D 41 53 4B 5B 82  // __pkDATAplMASK[.
  A660: 47 06 50 41 47 44 08 5F 48 49 44 0D 41 43 50 49  // G.PAGD._HID.ACPI
  A670: 30 30 30 43 00 08 5F 43 49 44 0D 41 43 50 49 30  // 000C.._CID.ACPI0
  A680: 30 30 43 00 08 49 44 43 4E 00 08 50 55 52 50 12  // 00C..IDCN..PURP.
  A690: 04 02 01 00 14 17 5F 50 55 52 08 70 49 44 43 4E  // ......_PUR.pIDCN
  A6A0: 88 50 55 52 50 01 00 A4 50 55 52 50 14 1A 5F 4F  // .PURP...PURP.._O
  A6B0: 53 54 0B 70 0D 5F 4F 53 54 20 69 73 20 69 6E 76  // ST.p._OST is inv
  A6C0: 6F 6B 65 64 00 5B 31 08 50 49 43 4D 00 5B 82 41  // oked.[1.PICM.[.A
  A6D0: 11 4D 44 4D 5F 08 5F 48 49 44 0C 34 64 00 01 08  // .MDM_._HID.4d...
  A6E0: 5F 43 49 44 0D 4D 43 44 30 30 30 31 00 08 43 50  // _CID.MCD0001..CP
  A6F0: 55 5F 0D 56 61 6C 6C 65 79 56 69 65 77 32 00 08  // U_.ValleyView2..
  A700: 4D 44 4D 4E 0D 58 4D 4D 5F 37 31 36 30 00 14 14  // MDMN.XMM_7160...
  A710: 5F 53 54 41 00 A0 0B 93 42 44 49 44 0A 03 A4 0A  // _STA....BDID....
  A720: 0F A4 00 14 44 0A 5F 43 52 53 00 08 55 42 55 46  // ....D._CRS..UBUF
  A730: 11 42 09 0A 8E 8C 20 00 01 01 01 00 02 00 00 00  // .B.... .........
  A740: 00 00 00 17 00 00 19 00 23 00 00 00 1A 00 5C 5F  // ........#.....\_
  A750: 53 42 2E 47 50 4F 31 00 8C 20 00 01 01 01 00 01  // SB.GPO1.. ......
  A760: 00 00 00 00 00 00 17 00 00 19 00 23 00 00 00 1E  // ...........#....
  A770: 00 5C 5F 53 42 2E 47 50 4F 32 00 8C 20 00 01 01  // .\_SB.GPO2.. ...
  A780: 01 00 01 00 00 00 00 00 00 17 00 00 19 00 23 00  // ..............#.
  A790: 00 00 1C 00 5C 5F 53 42 2E 47 50 4F 32 00 8C 20  // ....\_SB.GPO2.. 
  A7A0: 00 01 01 01 00 02 00 00 00 00 00 00 17 00 00 19  // ................
  A7B0: 00 23 00 00 00 1D 00 5C 5F 53 42 2E 47 50 4F 32  // .#.....\_SB.GPO2
  A7C0: 00 79 00 A4 55 42 55 46 08 50 4D 49 43 12 08 04  // .y..UBUF.PMIC...
  A7D0: 0A 29 01 00 0A FC 08 45 50 57 52 12 04 02 00 01  // .).....EPWR.....
  A7E0: 10 43 09 5F 54 5A 5F 5B 85 4B 08 54 5A 30 30 08  // .C._TZ_[.K.TZ00.
  A7F0: 5F 44 45 50 12 1B 02 5C 2E 5F 53 42 5F 49 32 43  // _DEP...\._SB_I2C
  A800: 37 5C 2F 03 5F 53 42 5F 49 32 43 37 50 4D 49 43  // 7\/._SB_I2C7PMIC
  A810: 14 43 06 5F 54 4D 50 08 A0 47 05 93 5C 2F 04 5F  // .C._TMP..G..\/._
  A820: 53 42 5F 49 32 43 37 50 4D 49 43 41 56 42 47 01  // SB_I2C7PMICAVBG.
  A830: 70 00 5C 2F 04 5F 53 42 5F 49 32 43 37 50 4D 49  // p.\/._SB_I2C7PMI
  A840: 43 47 4D 50 32 A0 2A 93 5C 2F 04 5F 53 42 5F 49  // CGMP2.*.\/._SB_I
  A850: 32 43 37 50 4D 49 43 41 56 42 44 01 A4 5C 2F 04  // 2C7PMICAVBD..\/.
  A860: 5F 53 42 5F 49 32 43 37 50 4D 49 43 54 4D 50 32  // _SB_I2C7PMICTMP2
  A870: A4 0B AC 0A 10 4B 09 2E 5F 53 42 5F 50 43 49 30  // .....K.._SB_PCI0
  A880: 5B 82 4E 08 50 44 52 43 08 5F 48 49 44 0C 41 D0  // [.N.PDRC._HID.A.
  A890: 0C 02 08 5F 55 49 44 01 08 42 55 46 30 11 42 07  // ..._UID..BUF0.B.
  A8A0: 0A 6E 86 09 00 01 00 00 00 E0 00 00 00 10 86 09  // .n..............
  A8B0: 00 01 00 10 D0 FE 00 10 00 00 86 09 00 01 00 30  // ...............0
  A8C0: D0 FE 00 10 00 00 86 09 00 01 00 40 D0 FE 00 10  // ...........@....
  A8D0: 00 00 86 09 00 01 00 C0 D0 FE 00 40 00 00 86 09  // ...........@....
  A8E0: 00 01 00 80 D0 FE 00 10 00 00 86 09 00 01 00 C0  // ................
  A8F0: D1 FE 00 10 00 00 86 09 00 00 00 00 E0 FE 00 00  // ................
  A900: 10 00 86 09 00 01 00 00 F0 FE 00 00 10 00 79 00  // ..............y.
  A910: 14 49 0C 42 52 54 4E 09 A0 23 93 7B 44 49 44 31  // .I.BRTN..#.{DID1
  A920: 0B 00 0F 00 0B 00 04 86 5C 2F 04 5F 53 42 5F 50  // ........\/._SB_P
  A930: 43 49 30 47 46 58 30 44 44 30 31 68 A0 23 93 7B  // CI0GFX0DD01h.#.{
  A940: 44 49 44 32 0B 00 0F 00 0B 00 04 86 5C 2F 04 5F  // DID2........\/._
  A950: 53 42 5F 50 43 49 30 47 46 58 30 44 44 30 32 68  // SB_PCI0GFX0DD02h
  A960: A0 23 93 7B 44 49 44 33 0B 00 0F 00 0B 00 04 86  // .#.{DID3........
  A970: 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46 58 30 44  // \/._SB_PCI0GFX0D
  A980: 44 30 33 68 A0 23 93 7B 44 49 44 34 0B 00 0F 00  // D03h.#.{DID4....
  A990: 0B 00 04 86 5C 2F 04 5F 53 42 5F 50 43 49 30 47  // ....\/._SB_PCI0G
  A9A0: 46 58 30 44 44 30 34 68 A0 23 93 7B 44 49 44 35  // FX0DD04h.#.{DID5
  A9B0: 0B 00 0F 00 0B 00 04 86 5C 2F 04 5F 53 42 5F 50  // ........\/._SB_P
  A9C0: 43 49 30 47 46 58 30 44 44 30 35 68 A0 0D 5B 12  // CI0GFX0DD05h..[.
  A9D0: 4E 44 4E 33 00 4E 44 4E 33 68 10 0A 2E 5F 53 42  // NDN3.NDN3h..._SB
  A9E0: 5F 49 32 43 33 10 47 16 2E 5F 53 42 5F 49 32 43  // _I2C3.G.._SB_I2C
  A9F0: 31 5B 82 43 0B 53 4D 46 47 08 5F 48 49 44 0D 42  // 1[.C.SMFG._HID.B
  AA00: 51 46 32 37 35 34 31 00 08 5F 43 49 44 0D 42 51  // QF27541.._CID.BQ
  AA10: 46 32 37 35 34 31 00 08 5F 44 44 4E 0D 46 75 65  // F27541.._DDN.Fue
  AA20: 6C 20 47 61 75 67 65 20 43 6F 6E 74 72 6F 6C 6C  // l Gauge Controll
  AA30: 65 72 00 08 52 42 55 46 11 45 04 0A 41 8E 19 00  // er..RBUF.E..A...
  AA40: 01 00 01 02 00 00 01 06 00 A0 86 01 00 55 00 5C  // .............U.\
  AA50: 5F 53 42 2E 49 32 43 31 00 8C 20 00 01 00 01 00  // _SB.I2C1.. .....
  AA60: 11 00 00 00 00 00 00 17 00 00 19 00 23 00 00 00  // ............#...
  AA70: 12 00 5C 5F 53 42 2E 47 50 4F 32 00 79 00 14 0B  // ..\_SB.GPO2.y...
  AA80: 5F 43 52 53 00 A4 52 42 55 46 14 1B 5F 53 54 41  // _CRS..RBUF.._STA
  AA90: 00 A0 12 90 93 42 44 49 44 0A 03 93 4F 53 53 4C  // .....BDID...OSSL
  AAA0: 01 A4 0A 0F A4 00 5B 82 45 0A 53 4D 43 47 08 5F  // ......[.E.SMCG._
  AAB0: 48 49 44 0D 54 42 51 32 34 32 39 36 00 08 5F 43  // HID.TBQ24296.._C
  AAC0: 49 44 0D 54 42 51 32 34 32 39 36 00 08 5F 44 44  // ID.TBQ24296.._DD
  AAD0: 4E 0D 43 68 61 72 67 65 72 00 08 52 42 55 46 11  // N.Charger..RBUF.
  AAE0: 45 04 0A 41 8E 19 00 01 00 01 02 00 00 01 06 00  // E..A............
  AAF0: A0 86 01 00 6B 00 5C 5F 53 42 2E 49 32 43 31 00  // ....k.\_SB.I2C1.
  AB00: 8C 20 00 01 00 01 00 11 00 00 00 00 00 00 17 00  // . ..............
  AB10: 00 19 00 23 00 00 00 02 00 5C 5F 53 42 2E 47 50  // ...#.....\_SB.GP
  AB20: 4F 32 00 79 00 14 0B 5F 43 52 53 00 A4 52 42 55  // O2.y..._CRS..RBU
  AB30: 46 14 1B 5F 53 54 41 00 A0 12 90 93 42 44 49 44  // F.._STA.....BDID
  AB40: 0A 03 93 4F 53 53 4C 01 A4 0A 0F A4 00 10 30 5F  // ...OSSL.......0_
  AB50: 53 42 5F 5B 82 29 41 44 50 31 08 5F 48 49 44 0D  // SB_[.)ADP1._HID.
  AB60: 41 43 50 49 30 30 30 33 00 14 08 5F 50 53 52 00  // ACPI0003..._PSR.
  AB70: A4 01 14 0B 5F 50 43 4C 00 A4 5F 53 42 5F 10 47  // ...._PCL.._SB_.G
  AB80: 3C 2E 5F 53 42 5F 49 32 43 35 5B 82 4D 0E 54 50  // <._SB_I2C5[.M.TP
  AB90: 31 5F 08 5F 41 44 52 00 08 5F 48 49 44 0D 53 54  // 1_._ADR.._HID.ST
  ABA0: 4B 30 30 30 31 00 08 5F 43 49 44 0D 57 49 54 54  // K0001.._CID.WITT
  ABB0: 54 65 73 74 00 14 13 5F 53 54 41 00 A0 0A 93 57  // Test..._STA....W
  ABC0: 49 54 54 01 A4 0A 0F A4 00 14 33 5F 43 52 53 00  // ITT.......3_CRS.
  ABD0: 08 52 42 55 46 11 22 0A 1F 8E 1A 00 01 00 01 02  // .RBUF.".........
  ABE0: 00 00 01 06 00 A0 86 01 00 7F 00 5C 5F 53 42 5F  // ...........\_SB_
  ABF0: 2E 49 32 43 35 00 79 00 A4 52 42 55 46 14 4B 07  // .I2C5.y..RBUF.K.
  AC00: 5F 44 53 4D 04 A0 4A 06 93 68 11 13 0A 10 66 FC  // _DSM..J..h....f.
  AC10: B3 4F FB C8 80 46 B6 EB 95 64 A9 80 D4 34 A0 2D  // .O...F...d...4.-
  AC20: 93 6A 00 A0 28 93 69 01 70 0D 4D 65 74 68 6F 64  // .j..(.i.p.Method
  AC30: 20 5F 44 53 4D 20 46 75 6E 63 74 69 6F 6E 20 51  //  _DSM Function Q
  AC40: 75 65 72 79 00 5B 31 A4 11 03 01 03 A0 23 93 6A  // uery.[1......#.j
  AC50: 01 70 0D 4D 65 74 68 6F 64 20 5F 44 53 4D 20 46  // .p.Method _DSM F
  AC60: 75 6E 63 74 69 6F 6E 20 48 49 44 00 5B 31 A4 00  // unction HID.[1..
  AC70: A1 06 A4 11 03 01 00 A4 00 5B 82 4D 0E 54 50 32  // .........[.M.TP2
  AC80: 5F 08 5F 41 44 52 00 08 5F 48 49 44 0D 53 54 4B  // _._ADR.._HID.STK
  AC90: 30 30 30 32 00 08 5F 43 49 44 0D 57 49 54 54 54  // 0002.._CID.WITTT
  ACA0: 65 73 74 00 14 13 5F 53 54 41 00 A0 0A 93 57 49  // est..._STA....WI
  ACB0: 54 54 01 A4 0A 0F A4 00 14 33 5F 43 52 53 00 08  // TT.......3_CRS..
  ACC0: 52 42 55 46 11 22 0A 1F 8E 1A 00 01 00 01 02 00  // RBUF."..........
  ACD0: 00 01 06 00 A0 86 01 00 11 00 5C 5F 53 42 5F 2E  // ..........\_SB_.
  ACE0: 49 32 43 35 00 79 00 A4 52 42 55 46 14 4B 07 5F  // I2C5.y..RBUF.K._
  ACF0: 44 53 4D 04 A0 4A 06 93 68 11 13 0A 10 66 FC B3  // DSM..J..h....f..
  AD00: 4F FB C8 80 46 B6 EB 95 64 A9 80 D4 34 A0 2D 93  // O...F...d...4.-.
  AD10: 6A 00 A0 28 93 69 01 70 0D 4D 65 74 68 6F 64 20  // j..(.i.p.Method 
  AD20: 5F 44 53 4D 20 46 75 6E 63 74 69 6F 6E 20 51 75  // _DSM Function Qu
  AD30: 65 72 79 00 5B 31 A4 11 03 01 03 A0 23 93 6A 01  // ery.[1......#.j.
  AD40: 70 0D 4D 65 74 68 6F 64 20 5F 44 53 4D 20 46 75  // p.Method _DSM Fu
  AD50: 6E 63 74 69 6F 6E 20 48 49 44 00 5B 31 A4 00 A1  // nction HID.[1...
  AD60: 06 A4 11 03 01 00 A4 00 5B 82 4D 0E 54 50 33 5F  // ........[.M.TP3_
  AD70: 08 5F 41 44 52 00 08 5F 48 49 44 0D 53 54 4B 30  // ._ADR.._HID.STK0
  AD80: 30 30 33 00 08 5F 43 49 44 0D 57 49 54 54 54 65  // 003.._CID.WITTTe
  AD90: 73 74 00 14 13 5F 53 54 41 00 A0 0A 93 57 49 54  // st..._STA....WIT
  ADA0: 54 01 A4 0A 0F A4 00 14 33 5F 43 52 53 00 08 52  // T.......3_CRS..R
  ADB0: 42 55 46 11 22 0A 1F 8E 1A 00 01 00 01 02 00 00  // BUF."...........
  ADC0: 01 06 00 80 1A 06 00 12 00 5C 5F 53 42 5F 2E 49  // .........\_SB_.I
  ADD0: 32 43 35 00 79 00 A4 52 42 55 46 14 4B 07 5F 44  // 2C5.y..RBUF.K._D
  ADE0: 53 4D 04 A0 4A 06 93 68 11 13 0A 10 66 FC B3 4F  // SM..J..h....f..O
  ADF0: FB C8 80 46 B6 EB 95 64 A9 80 D4 34 A0 2D 93 6A  // ...F...d...4.-.j
  AE00: 00 A0 28 93 69 01 70 0D 4D 65 74 68 6F 64 20 5F  // ..(.i.p.Method _
  AE10: 44 53 4D 20 46 75 6E 63 74 69 6F 6E 20 51 75 65  // DSM Function Que
  AE20: 72 79 00 5B 31 A4 11 03 01 03 A0 23 93 6A 01 70  // ry.[1......#.j.p
  AE30: 0D 4D 65 74 68 6F 64 20 5F 44 53 4D 20 46 75 6E  // .Method _DSM Fun
  AE40: 63 74 69 6F 6E 20 48 49 44 00 5B 31 A4 00 A1 06  // ction HID.[1....
  AE50: A4 11 03 01 00 A4 00 5B 82 4D 0E 54 50 34 5F 08  // .......[.M.TP4_.
  AE60: 5F 41 44 52 00 08 5F 48 49 44 0D 53 54 4B 30 30  // _ADR.._HID.STK00
  AE70: 30 34 00 08 5F 43 49 44 0D 57 49 54 54 54 65 73  // 04.._CID.WITTTes
  AE80: 74 00 14 13 5F 53 54 41 00 A0 0A 93 57 49 54 54  // t..._STA....WITT
  AE90: 01 A4 0A 0F A4 00 14 33 5F 43 52 53 00 08 52 42  // .......3_CRS..RB
  AEA0: 55 46 11 22 0A 1F 8E 1A 00 01 00 01 02 00 00 01  // UF."............
  AEB0: 06 00 40 42 0F 00 13 00 5C 5F 53 42 5F 2E 49 32  // ..@B....\_SB_.I2
  AEC0: 43 35 00 79 00 A4 52 42 55 46 14 4B 07 5F 44 53  // C5.y..RBUF.K._DS
  AED0: 4D 04 A0 4A 06 93 68 11 13 0A 10 66 FC B3 4F FB  // M..J..h....f..O.
  AEE0: C8 80 46 B6 EB 95 64 A9 80 D4 34 A0 2D 93 6A 00  // ..F...d...4.-.j.
  AEF0: A0 28 93 69 01 70 0D 4D 65 74 68 6F 64 20 5F 44  // .(.i.p.Method _D
  AF00: 53 4D 20 46 75 6E 63 74 69 6F 6E 20 51 75 65 72  // SM Function Quer
  AF10: 79 00 5B 31 A4 11 03 01 03 A0 23 93 6A 01 70 0D  // y.[1......#.j.p.
  AF20: 4D 65 74 68 6F 64 20 5F 44 53 4D 20 46 75 6E 63  // Method _DSM Func
  AF30: 74 69 6F 6E 20 48 49 44 00 5B 31 A4 00 A1 06 A4  // tion HID.[1.....
  AF40: 11 03 01 00 A4 00 10 41 08 2E 5F 53 42 5F 55 52  // .......A.._SB_UR
  AF50: 54 31 5B 82 44 07 55 41 52 54 08 5F 48 49 44 0D  // T1[.D.UART._HID.
  AF60: 55 54 4B 30 30 30 31 00 08 5F 43 49 44 0D 55 41  // UTK0001.._CID.UA
  AF70: 52 54 54 65 73 74 00 08 5F 55 49 44 00 14 13 5F  // RTTest.._UID..._
  AF80: 53 54 41 00 A0 0A 93 55 54 53 5F 01 A4 0A 0F A4  // STA....UTS_.....
  AF90: 00 14 36 5F 43 52 53 00 08 52 42 55 46 11 25 0A  // ..6_CRS..RBUF.%.
  AFA0: 22 8E 1D 00 01 00 03 02 35 00 01 0A 00 00 C2 01  // ".......5.......
  AFB0: 00 20 00 20 00 00 C0 5C 5F 53 42 2E 55 52 54 31  // . . ...\_SB.URT1
  AFC0: 00 79 00 A4 52 42 55 46 08 5F 53 30 5F 12 06 04  // .y..RBUF._S0_...
  AFD0: 00 00 00 00 08 5F 53 34 5F 12 07 04 0A 06 00 00  // ....._S4_.......
  AFE0: 00 08 5F 53 35 5F 12 07 04 0A 07 00 00 00        // .._S5_........
 */
