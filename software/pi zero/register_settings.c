#include "register_settings.h"

// Magic register settings generated by AX RadioLab
// Look, but do not touch.
// I don't even know what most of these do. There's just too many to understand them all.
void set_init_registers()
{
    ax5043_register_write(AX_REG_MODULATION      ,  0x08);
    ax5043_register_write(AX_REG_ENCODING        ,  0x00);
    ax5043_register_write(AX_REG_FRAMING         ,  0x26);
    ax5043_register_write(AX_REG_PINFUNCSYSCLK   ,  0x01);
    ax5043_register_write(AX_REG_PINFUNCDCLK     ,  0x01);
    ax5043_register_write(AX_REG_PINFUNCDATA     ,  0x01);
    ax5043_register_write(AX_REG_PINFUNCANTSEL   ,  0x01);
    ax5043_register_write(AX_REG_PINFUNCPWRAMP   ,  0x07);
    ax5043_register_write(AX_REG_WAKEUPXOEARLY   ,  0x01);
    ax5043_register_write(AX_REG_IFFREQ1         ,  0x01);
    ax5043_register_write(AX_REG_IFFREQ0         ,  0x89);
    ax5043_register_write(AX_REG_DECIMATION      ,  0x1B);
    ax5043_register_write(AX_REG_RXDATARATE2     ,  0x00);
    ax5043_register_write(AX_REG_RXDATARATE1     ,  0x3D);
    ax5043_register_write(AX_REG_RXDATARATE0     ,  0xBA);
    ax5043_register_write(AX_REG_MAXDROFFSET2    ,  0x00);
    ax5043_register_write(AX_REG_MAXDROFFSET1    ,  0x00);
    ax5043_register_write(AX_REG_MAXDROFFSET0    ,  0x00);
    ax5043_register_write(AX_REG_MAXRFOFFSET2    ,  0x80);
    ax5043_register_write(AX_REG_MAXRFOFFSET1    ,  0x03);
    ax5043_register_write(AX_REG_MAXRFOFFSET0    ,  0x8C);
    ax5043_register_write(AX_REG_FSKDMAX1        ,  0x00);
    ax5043_register_write(AX_REG_FSKDMAX0        ,  0xA6);
    ax5043_register_write(AX_REG_FSKDMIN1        ,  0xFF);
    ax5043_register_write(AX_REG_FSKDMIN0        ,  0x5A);
    ax5043_register_write(AX_REG_AMPLFILTER      ,  0x00);
    ax5043_register_write(AX_REG_RXPARAMSETS     ,  0xF4);
    ax5043_register_write(AX_REG_AGCGAIN0        ,  0xC6);
    ax5043_register_write(AX_REG_AGCTARGET0      ,  0x84);
    ax5043_register_write(AX_REG_TIMEGAIN0       ,  0xF8);
    ax5043_register_write(AX_REG_DRGAIN0         ,  0xF2);
    ax5043_register_write(AX_REG_PHASEGAIN0      ,  0xC3);
    ax5043_register_write(AX_REG_FREQUENCYGAINA0 ,  0x0F);
    ax5043_register_write(AX_REG_FREQUENCYGAINB0 ,  0x1F);
    ax5043_register_write(AX_REG_FREQUENCYGAINC0 ,  0x08);
    ax5043_register_write(AX_REG_FREQUENCYGAIND0 ,  0x08);
    ax5043_register_write(AX_REG_AMPLITUDEGAIN0  ,  0x06);
    ax5043_register_write(AX_REG_FREQDEV10       ,  0x00);
    ax5043_register_write(AX_REG_FREQDEV00       ,  0x00);
    ax5043_register_write(AX_REG_BBOFFSRES0      ,  0x00);
    ax5043_register_write(AX_REG_AGCGAIN1        ,  0xC6);
    ax5043_register_write(AX_REG_AGCTARGET1      ,  0x84);
    ax5043_register_write(AX_REG_AGCAHYST1       ,  0x00);
    ax5043_register_write(AX_REG_AGCMINMAX1      ,  0x00);
    ax5043_register_write(AX_REG_TIMEGAIN1       ,  0xF6);
    ax5043_register_write(AX_REG_DRGAIN1         ,  0xF1);
    ax5043_register_write(AX_REG_PHASEGAIN1      ,  0xC3);
    ax5043_register_write(AX_REG_FREQUENCYGAINA1 ,  0x0F);
    ax5043_register_write(AX_REG_FREQUENCYGAINB1 ,  0x1F);
    ax5043_register_write(AX_REG_FREQUENCYGAINC1 ,  0x08);
    ax5043_register_write(AX_REG_FREQUENCYGAIND1 ,  0x08);
    ax5043_register_write(AX_REG_AMPLITUDEGAIN1  ,  0x06);
    ax5043_register_write(AX_REG_FREQDEV11       ,  0x00);
    ax5043_register_write(AX_REG_FREQDEV01       ,  0x43);
    ax5043_register_write(AX_REG_FOURFSK1        ,  0x16);
    ax5043_register_write(AX_REG_BBOFFSRES1      ,  0x00);
    ax5043_register_write(AX_REG_AGCGAIN3        ,  0xFF);
    ax5043_register_write(AX_REG_AGCTARGET3      ,  0x84);
    ax5043_register_write(AX_REG_AGCAHYST3       ,  0x00);
    ax5043_register_write(AX_REG_AGCMINMAX3      ,  0x00);
    ax5043_register_write(AX_REG_TIMEGAIN3       ,  0xF5);
    ax5043_register_write(AX_REG_DRGAIN3         ,  0xF0);
    ax5043_register_write(AX_REG_PHASEGAIN3      ,  0xC3);
    ax5043_register_write(AX_REG_FREQUENCYGAINA3 ,  0x0F);
    ax5043_register_write(AX_REG_FREQUENCYGAINB3 ,  0x1F);
    ax5043_register_write(AX_REG_FREQUENCYGAINC3 ,  0x0C);
    ax5043_register_write(AX_REG_FREQUENCYGAIND3 ,  0x0C);
    ax5043_register_write(AX_REG_AMPLITUDEGAIN3  ,  0x06);
    ax5043_register_write(AX_REG_FREQDEV13       ,  0x00);
    ax5043_register_write(AX_REG_FREQDEV03       ,  0x43);
    ax5043_register_write(AX_REG_FOURFSK3        ,  0x16);
    ax5043_register_write(AX_REG_BBOFFSRES3      ,  0x00);
    ax5043_register_write(AX_REG_MODCFGF         ,  0x03);
    ax5043_register_write(AX_REG_FSKDEV2         ,  0x00);
    ax5043_register_write(AX_REG_FSKDEV1         ,  0x06);
    ax5043_register_write(AX_REG_FSKDEV0         ,  0x8E);
    ax5043_register_write(AX_REG_MODCFGA         ,  0x05);
    ax5043_register_write(AX_REG_TXRATE2         ,  0x00);
    ax5043_register_write(AX_REG_TXRATE1         ,  0x13);
    ax5043_register_write(AX_REG_TXRATE0         ,  0xA9);
    ax5043_register_write(AX_REG_TXPWRCOEFFB1    ,  0x0F);
    ax5043_register_write(AX_REG_TXPWRCOEFFB0    ,  0xFF);
    ax5043_register_write(AX_REG_PLLVCOI         ,  0x99);
    ax5043_register_write(AX_REG_PLLRNGCLK       ,  0x03);
    ax5043_register_write(AX_REG_BBTUNE          ,  0x0F);
    ax5043_register_write(AX_REG_BBOFFSCAP       ,  0x77);
    ax5043_register_write(AX_REG_PKTADDRCFG      ,  0x01);
    ax5043_register_write(AX_REG_PKTLENCFG       ,  0x80);
    ax5043_register_write(AX_REG_PKTLENOFFSET    ,  0x00);
    ax5043_register_write(AX_REG_PKTMAXLEN       ,  0xC8);
    ax5043_register_write(AX_REG_MATCH0PAT3      ,  0xAA);
    ax5043_register_write(AX_REG_MATCH0PAT2      ,  0xCC);
    ax5043_register_write(AX_REG_MATCH0PAT1      ,  0xAA);
    ax5043_register_write(AX_REG_MATCH0PAT0      ,  0xCC);
    ax5043_register_write(AX_REG_MATCH0LEN       ,  0x1F);
    ax5043_register_write(AX_REG_MATCH0MAX       ,  0x1F);
    ax5043_register_write(AX_REG_MATCH1PAT1      ,  0x55);
    ax5043_register_write(AX_REG_MATCH1PAT0      ,  0x55);
    ax5043_register_write(AX_REG_MATCH1LEN       ,  0x8A);
    ax5043_register_write(AX_REG_MATCH1MAX       ,  0x0A);
    ax5043_register_write(AX_REG_TMGTXBOOST      ,  0x32);
    ax5043_register_write(AX_REG_TMGTXSETTLE     ,  0x14);
    ax5043_register_write(AX_REG_TMGRXBOOST      ,  0x32);
    ax5043_register_write(AX_REG_TMGRXSETTLE     ,  0x14);
    ax5043_register_write(AX_REG_TMGRXOFFSACQ    ,  0x00);
    ax5043_register_write(AX_REG_TMGRXCOARSEAGC  ,  0x73);
    ax5043_register_write(AX_REG_TMGRXRSSI       ,  0x03);
    ax5043_register_write(AX_REG_TMGRXPREAMBLE2  ,  0x35);
    ax5043_register_write(AX_REG_RSSIABSTHR      ,  0xE0);
    ax5043_register_write(AX_REG_BGNDRSSITHR     ,  0x00);
    ax5043_register_write(AX_REG_PKTCHUNKSIZE    ,  0x0D);
    ax5043_register_write(AX_REG_PKTACCEPTFLAGS  ,  0x20);
    ax5043_register_write(AX_REG_DACVALUE1       ,  0x00);
    ax5043_register_write(AX_REG_DACVALUE0       ,  0x00);
    ax5043_register_write(AX_REG_DACCONFIG       ,  0x00);
    ax5043_register_write(AX_REG_REF             ,  0x03);
    ax5043_register_write(AX_REG_XTALOSC         ,  0x04);
    ax5043_register_write(AX_REG_XTALAMPL        ,  0x00);
    ax5043_register_write(0xF1C                  ,  0x07);
    ax5043_register_write(0xF21                  ,  0x68);
    ax5043_register_write(0xF22                  ,  0xFF);
    ax5043_register_write(0xF23                  ,  0x84);
    ax5043_register_write(0xF26                  ,  0x98);
    ax5043_register_write(0xF34                  ,  0x28);
    ax5043_register_write(0xF35                  ,  0x10);
    ax5043_register_write(0xF44                  ,  0x25);
}

void set_tx_registers()
{
    ax5043_register_write(AX_REG_PLLLOOP         , 0x0B);
    ax5043_register_write(AX_REG_PLLCPI          , 0x10);
    ax5043_register_write(AX_REG_PLLVCODIV       , 0x24);
    ax5043_register_write(AX_REG_XTALCAP         , 0x00);
    ax5043_register_write(0xF00                  , 0x0F);
    ax5043_register_write(0xF18                  , 0x06);
};