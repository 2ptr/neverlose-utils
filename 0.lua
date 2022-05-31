local t=string.byte;local r=string.char;local d=string.sub;local T=table.concat;local K=math.ldexp;local G=getfenv or function()return _ENV end;local H=setmetatable;local L=select;local f=unpack;local i=tonumber;local function h(f)local e,o,n="","",{}local a=256;local c={}for l=0,a-1 do c[l]=r(l)end;local l=1;local function t()local e=i(d(f,l,l),36)l=l+1;local o=i(d(f,l,l+e-1),36)l=l+e;return o end;e=r(t())n[1]=e;while l<#f do local l=t()if c[l]then o=c[l]else o=e..d(e,1,1)end;c[a]=e..d(o,1,1)n[#n+1],e,a=o,o,a+1 end;return table.concat(n)end;local a=h('23T26D23T2761T23L23D23A1P23L2761S23T24P23T21827623T1P24127A2182412761L24P27O27H23T1H24H27O24H2761C25527621828323T1925527O2861524X27O24X2761125L27A23425L27621P25D27O25D27621L26127O26127621H27T23A21827V28224927I2861S24H27H1O28027L27923A21227D23T1O23L21L27I29F1L26H27O26H2761H26927O2692761D26X27O26X2761O24P27H29027R29C21829F1K24923D27I29327W1927O1929V1127O11276191P27A21C1P2761K2A223T23B27V1H2A629F1G24125523S27P29V21527O2152AM1X27O1X2761521L27O29J23T1121D27O21D28M22127O22128R21T27O21T2761G24X2A328F23T1D29C29E28124P2152B427V1929N28Z29P23T1529S28Z29U2BJ22927O2292C52A32C92AZ2761827Y27I29A1522X27O22X28G22P27O22P28M23D2AP2AB23T182AU2A12BE2C329F1428929428G23527O23528M23T23C28Z23T23S23T21L23L2DO2A72DR142AU2A42BJ2CQ23T1028D27I2C021P27N28Z27Q2DS28Y2E021H2492DO21C2492DR102AU21627V2E82DV2412DR21O25L25L23V21828L23T21O23L2832A727621G27K27J27621D24H2DV24H2DR2182CD2FE2762B927A1B27K21129C1B29F1Z23L27H1Q27D191S2CI21N2CI27F27621N27K22N2492931Q2932FV29Z23T21N2GA22H28Y1B27V22F24P2831Q27H2FV2AL2GB2GO1S2AH2GB2GS1S2C021N2C022B24H2G62802FV28621N2862272552AR1Q2832FV26P2G12HD23T1S2CD21N2CD1S29F21N29F1S2AR2GB2HQ1S2AD21N2AD1S2EB21N2EB2GV2G12C01S2H429525T2G12I723T22324X2H928F2GN2G12GQ2GS21N2GU2HI2HK27V21N27V2962G129A1S2EY21N2EY1S28Q2GB2IY1S2HF21N2HF2HL2G129F21X2412DO21G2ER23T21W21L26H23V1W2BI21T24X2EH24X2DR23J25L2GK28L2FV1H2G12JU2HG2B92GB2JY1S2BD2GB2K221W24129321J2I029F22729F24U27K23S23V27K27026823S23Q27K26F26K27225Y26C27026D27126826Y26K26D26K26I27123S23X27K26325K25Q25O23S23W27K25I27126926K26Z23S28V27626625O26324W26426725J2LK26326525S26725925A24X2562LT26725D25925625B25A26526725S2M324X2M62M82562LW25J24X2M725S25J2ME2MB2LT2MK2592MM2LU2ME24W25A25S2652LO2M32MT2LT2572562LX2592M82652L927K26226I26E2702L123U27K25K27226X2L22NF2NC26E23S23M2L42BY26Z26K27326E26D2732LF23S23Z27K25P26K26G26M2KY23S23N2KM2KO25Y26926E27126A26K26O2N727625H25O25Q25C2N62NZ27625K26826C26J2OC23S2AD23T25Q26G26C26K24P2OR26X26Z26E2NW2P026F2L123K27K2NR26N2LF26K26F26I26K2NJ27625G25C26225M23S29F23T26226K2712KU26F26M26Y23S2EB23T26Y2732KQ26G26P27026Y26Z26I26C26L2P426E2PI26Y26Y2KU26I26A2PZ2O72762KN2KP26Y26D26826L2NX2LA27626225E25C25J2622NN27K2662O226X26E26F24P26Y26A26826F2R32762QJ26A24P2OZ2NB2P92NE27K27624N25L2RN2RO2532RR2RO27624L25L23S23P2O82KP26I2LE2QK2OT26P23S24B27K23Y2LX26N26N24W26I25R25R2732KV27026G2QS26R2PJ23Y27K2672PN26425K25H2R22SR27625O2SE2KZ2712PZ24327K25R26E2QA2P12LD26826Z26L24P26X2LF26Y2R824P24H2SN2682NW24G2KF2NF25K2PQ2T726G2OE24P26D2O32OH23T25H2OR2682L12QN23T25P2NB26J2KY24P27126G2NI2OO23T26I2QS2PG2L12NO27626Y26I2NR2PG25Y26Y2682SP2RS2RW2S927K2KW27125Y2NS2UL25Y26I2SN26D26J26G2QK2U126X26G2RD2712U723V24E27K1V23L2932302FU1U27K152AM1U29C152FU1K27K22W27K2A92762362AD1L2AA23A21G2AD2A928321O2AD1G2F62W22492A32HW2AD2182W62ED27V2WG28427K1D27Y28Z29A1M2WP2871423T28V2WR23T172G523T23E2G82VV27A2VX2X029F22W2DE2AD2W52761M21T23A23A23C2XM26U2VZ2762W12AS2XI2HW2KA29F2QW2762TR2762KI23S2RS26M2PU2UX2RO2Y923T23D2522RO23X24O2WT29C1429F1C2DZ2912FR29K2AM2E22CS2F229A2DY28427V112WZ2D824128L2B523T21P2WV21829A21K2EB2Z421H28928Z28621Q29X28Z29Z1921928D2W92C02FE2AH22S2FF2YP2F32CU2BR2Z827E23T2ZX27K2ZM28E28426H2AH2FG29K2A329F2852ZX28629H2ZX29F310328Z2ZP310627I2ZT310A28424X2ZX2C02A92ZX2AD21Q26P2XN23C310X26U21O27K22027K21K29F22029F2WA2762202AD21O27V2362IP2XY2762PR2NY27K2UL2U52OG2OW2Y72V226D2QF2SN25Y26X2TZ26O2NX2PR311R311W2P52NI23O27K26C25Y2NW26I2672KX2QF311O2YB2762YB2YD23S2SZ23T2O426E2VA26D2PZ2S12RG2682QK2VG2LF2732SN2RO23S25E2VL2VN23T22T2VQ2VS2VU2VW2FU1V26127H22T28V191U28O23A1528Q191O27K162W229F1629F1H2E921C2EB1O2412982EB1R31342782872VR2BE2VU2W8152G829H2XT29F1O2XW2761U2212DO1522123S192VM28L2VP314631383146313J313L287313O276313Q2AS313S313U2WV21C29A313Z314127631432933145313H314U313H314A314C2XF314F314H23T1U25T314L25T314O2VM29P314S315E3148314628I313K2JS314Z23T315123T1K315329Q2ZN21C2C0315829G31422EB22U27Q315G2XC315I314E2A0315L1U2DJ313K2DL314P23L2AH315U31472CE2VU314W313M3161316331653150313U313J21C2IY316B313Z315A31443137315W316H313K316J23T2XG316L2W42AD1U2AO313K2AR314P25D2B922T313M1U315Y153160313P313R317329Q25T2AP2I93178316D276316F3146315H314Y315J317J23T2XJ315M2ZN28C314Y317Z3152318127W2CB21C2CD3186315A2AD22U2XA313A318C316K29G315L31612XU3190317K27E311I23T312S23T2YB25M2RV2RW24V2RZ2L32OP2NL2YB25P2RZ2Y02N92NB2712YB24R2RZ2RS2NG26X2YB2612RZ2UN23T2632NQ2NS2NU2NW26Z312I252311L2762O12O32O52Y02LC2LE26Z2RW24W27K27827A2VV2ZZ2A327K2HL310O29B27O314F2F12YQ3164310B315K2WK2A531AV2XV2Z32WF2WH29V2Z729A1K2Z227I2EB1931BA2762YK28429F1131BH23T1A2DU28Z23L314O31162AH1G29F21H29C23F3119319Y27I2LI31762842IY21931BN2JB2Z32EB21J22H29P21822H31462BT313K2BV19214318L23T2102W62AD1W2ZB2EB22K27V2E022H2ZN2182C021424H2Z329A1C2HF2182HF1G2GA2182GA1K2CI2182CI215315Y2EX2762142692AR31DH27621031B823T1W2WM2AD22K31CU27622G31CX27V22C2LI2182LI2282I92182I92242FF2CD2142JQ27I2IU24H2CZ2ZY313H28Y152GM1W318D23T22K2AD311C31E02EB2202EB22C27V22027V1W29A23629A1A22X23B2XO31F926U182W027K1431DW2761031DZ2EZ31E22CR29A2ZY2HG31B02762PB2Y12UH311N271311P27K3122311T2V726D311W311Y2NX31A03122311X26G311Z26Z2PZ2KL2762692U52S7311W26E2UU2KU2R831A8319A2RW23T24T2RZ2UH2UJ2682UL2O627K27126Z2VB26K25Y2QS2KN2RW2SA27729C22Z2HO27G27I31AR2ZU29F27M27O313Y23L2Z329L2E22A928V2WN2BW31DT1D2ZE2852AS314031BE31673104316C2A3314223L29Z2F3315E2XC2AM31612GS29G31ER314G319531FR2762KB276312L31AA23T31FX31FZ27631G1311U31G431GA31GC2Y527K26J2U52PK23T2VA26F26L2TU31IR2PU312326E2NI2PR312826N25R2TZ2PY31GP2RO24T31AL29C21G31HD27H1W31HG27H22V29F2VM283316U315F1U2WV152H227C27A31JN2A031HM31DU2A8311327K314G2982AD1R2K222U2BD313H2B7313K2B9313N31CO29H27H21X29L31BN1H31HW2861C31FS23T31KX31BK2AS31HE2F727W31D02C02B131072EB1C31FI23T1G2WJ2AC2761J313431I8316V2VT31462ZE152HB315B23T315D31LL2VU2E915316G1N318U318W2XC2FU31BW318Z31LE31IH319231KB315L2J523T31IK23T311K31FW2P9311O2OV31G031J831G2311V31IV2LF2DQ2PR2KV25Y2TN2NW31IN2KW2KY2L031A82Y223T2Y42Y62PU2RW312631HA27A22331JO31HF2A031DT1L2E92Z42A931B629Q31BN2C231B431KZ24P31CF27V31FE2WS28131LC2XS31NC2HG23T29331L431MB2ZV2UH31N131N32V02PU31J126C26G2LD31IX27626C2RD2Y91925J319T31MK2712RW25F31AR31KO31662HG31LF31IG23T2VM315C317C316W31LN2XC2HB31AM2W931NB31JQ318E162WL31KD2762VM318831OY31LM31I9313K2AM31MB31MD1T2E92JB2ZZ28L2D731FR31AT1P31BN1L31KT31BN1Q1P2DV1P314O182EB162EB182YP31JT2761B2CM23T22U2CM313H22H2XC31CH191931JM29F2CS29P2112YV31FN2E131NN2E42BZ27621O31FP29A1031LF31HS2E324X31HR2C031Q331O031BF2YS24H31CF2YV28631HX2E331DT31R831I028731RB31RD31BI2ZP2C0112E231QV2E631QX31QZ31FJ31LC31FE31O027K1931L631FO31072CV313J2182IY182X731R31U31KK21831KM182EY162EY1B2GO2392AL313H2AF313K2AH31QK31QM31FO29P23I31QR2YX28G28T28Z2LI31RJ2Z431QL31NN31QO2CU31BI31RF2861031KY31T431RA31T731RC31T923T1431RP28G318328Z2I931TF2CR310031NX31SH2842EY1Q25T31FA23C31TZ26U31PJ29F319931O52KJ31N42L1312L312N312P2PZ2PR2NR2SN2KU2P031N02RS2V131IN31GW31GY2RS311T26M23S2C023T2222112231D22321K2221Z22321M22321O31UW2232152231831V81L22321H2221Y22321422327S2222102231C2231T31VH31V92231131VN2231622321131VX1322321D24O2YB255319D2RO2RQ23U1J1G31WE31WE21S2YE2RO21131JL31K431P531JR23T31Q931OV24X31JW2IE1U31LO2HB31K331P431K628L31EQ31L2311B31M931PA23T314331PD314T317D2VR31IA28731U427631PT31K4315723L29P22R29L31S327W31DK2EY316B2Z431PV27Z2XV31CF2AD1H31S72IY1D31T131E631HY31I431HT31NT31LD31HH28131KY31KX31HR29F1F31LJ31PE2VU318I2IE311E27621927V21L31TO2342I921H31XO21D31XO21931TO31EA31QX24P31O027V21R255315C2HB31JZ2XC2H231YM23T31YO28R31YR31YT31YZ2I921D31ZI31YN31ZL31FM31Z328R2CB21G2CD21K25D31CH2332IY21G31RW23T21C31TB310P320423T21K2GJ27I27V21D2CB310821C25T31CH31Z031ZD2E22FE31EK31EE31DT21131Y028431FL21C23T2F227K2152E231DN2AB31DQ31CP31DT21431R22AD2FM31NN21029Z2B42GA1W31DG2CI22L2AJ28Z2GO21031HZ2Z431CQ2843215320C2CD321824P321A2761W31D82HF22L1H27O2JW22K192RZ2182GS22C31LC31DY320Q31DR320T31NX22L2BB28Z2K2322226H2B42GS22G31FL31ET31B223T22N31YH31XA31OZ313H2D1313K2D319322E31K4322H2CA23S1W322L27V1627V322O3194322Q317B322T31PF1U2BG313K29J322Z31ZR2CD32222NI2GR31E031E92I922C31ED2762282IY31S827622431E52LI22131ZN21X31ZN21T31ZN23H31ZN22K25D31O02IY22L321P276322219322K31E0323X2IY31E428431E725L31DP2EY224324R2B42EY22025L2C731DL2JD25L21L324W27621T2CX28Z2CZ23T23H31XO23D322W2182D331ES26131O02LI31LI31OX323E2VU31CJ1531CL31ET31502AD22N24P22X23S2302GM1U31LW316G325T3162325V23L2AR31JX31XB317N15317P324F31K4323M2AF23S21A322L320022G1131Q12182GO22C26X326P2GA326N321S326Q27622C320323T22C2AR2EW2HQ22931BQ2DW23T2252EG28Z2EJ31002J92EA2DR21X24P2DV321S23T21S2BN27I327P325C31I223D321Z28Z2JW2XP32242BV23T23431LC23C322N31NZ31NX1J31QC31QE314631QH313K31QJ31YG325N315V322U1U2BL313K2BN1922K2C0162C022G2AD31P8324H31OT3267328G31LU3146321G1531SO32302W93232322J323531E031SI2EY323A31OU322R328Y31JY31T115313G326F2W9326H26123V122GS22H327831BS23T22D327C2WN2DR229327G27P2DR225327K28Z327M2212552DV2B323T2201X32242K221S31KY31EY322A31ES328631O1319724V2KE31MG2KU31FY31MJ31J7311S31IT31G531GB31MP31J623T31MS31MU2PJ31GV2UK2P931GZ27631H231J426E31282VG312G31GQ2RW319Y31A82YB26X31W927622X26E2RZ31UF2PG2QU2NR2LG31GF23T2722T926D26L25Y27126E2UT2UQ26K2PG2KK27K31GH27131GJ2R731GM2682R823S24831OL32AX31GC25Y2722R632CH312131J82QE2NI24F312725Y26825C27126K26C2O126N2RD2U532CG26F25C31J426K2S831992P026G26Y2702NR32C232DB2L128623T24K24M24I24P2R02652LL25M25O26132DT25P24P26226126325O25K32DZ26225O25O32DZ25R26325I25G32E02LL2672LL24P25U24S26824M25725825B25W31IN26N2T931OA2L12KG2Y331U831OL31J131H632B427K26I2TD2UJ26K312G32BM311J32FA31NZ32FC24D32FC25S32FC319L31J132D026P319Q31GR2RU31OH26H32FA1926932FC25932FA21526F2RZ31FU32B131J4312U31OB2T923S24S27K32DO32DQ32E525F2642622652R025Q24P25P2PN26525K25J32DV24P26525I24P25D32E432EH25J2TL32EL24G2RW312L2G0327N31HG31O02HO31KY2HL32H627E31LC32H931AY31O22PR31GR23T');local n=bit and bit.bxor or function(l,e)local o,n=1,0 while l>0 and e>0 do local c,d=l%2,e%2 if c~=d then n=n+o end l,e,o=(l-c)/2,(e-d)/2,o*2 end if l<e then l=e end while l>0 do local e=l%2 if e>0 then n=n+o end l,o=(l-e)/2,o*2 end return n end local function l(e,l,o)if o then local l=(e/2^(l-1))%2^((o-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local e=1;local function o()local l,d,o,c=t(a,e,e+3);l=n(l,137)d=n(d,137)o=n(o,137)c=n(c,137)e=e+4;return(c*16777216)+(o*65536)+(d*256)+l;end;local function c()local l=n(t(a,e,e),137);e=e+1;return l;end;local function h()local e=o();local n=o();local d=1;local o=(l(n,1,20)*(2^32))+e;local e=l(n,21,31);local l=((-1)^l(n,32));if(e==0)then if(o==0)then return l*0;else e=1;d=0;end;elseif(e==2047)then return(o==0)and(l*(1/0))or(l*(0/0));end;return K(l,e-1023)*(d+(o/(2^52)));end;local i=o;local function K(l)local o;if(not l)then l=i();if(l==0)then return'';end;end;o=d(a,e,e+l-1);e=e+l;local e={}for l=1,#o do e[l]=r(n(t(d(o,l,l)),137))end return T(e);end;local e=o;local function r(...)return{...},L('#',...)end local function s()local t={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};local f={0,0,0,0,0,0,0,0,0,0};local e={};local a={t,nil,f,nil,e};a[4]=c();for c=1,o()do local d=n(o(),149);local o=n(o(),165);local n=l(d,1,2);local e=l(o,1,11);local e={e,l(d,3,11),nil,nil,o};if(n==0)then e[3]=l(d,12,20);e[5]=l(d,21,29);elseif(n==1)then e[3]=l(o,12,33);elseif(n==2)then e[3]=l(o,12,32)-1048575;elseif(n==3)then e[3]=l(o,12,32)-1048575;e[5]=l(d,21,29);end;t[c]=e;end;local l=o()local n={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};for o=1,l do local e=c();local l;if(e==2)then l=(c()~=0);elseif(e==3)then l=h();elseif(e==1)then l=K();end;n[o]=l;end;a[2]=n for l=1,o()do f[l-1]=s();end;return a;end;local function T(l,K,i)local o=l[1];local d=l[2];local e=l[3];local l=l[4];return function(...)local n=o;local d=d;local D=e;local c=l;local h=r local e=1;local a=-1;local s={};local t={...};local r=L('#',...)-1;local C={};local o={};for l=0,r do if(l>=c)then s[l-c]=t[l+1];else o[l]=t[l+1];end;end;local l=r-c+1 local l;local c;while true do l=n[e];c=l[1];if c<=54 then if c<=26 then if c<=12 then if c<=5 then if c<=2 then if c<=0 then local d;local a;local t;local c;o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];c=l[2];t=c+l[3]-2;a={};d=0;for l=c,t do d=d+1;a[d]=o[l];end;do return f(a,1,d)end;e=e+1;l=n[e];do return end;elseif c>1 then local L,c;local r;local t;local i;local A;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]]/d[l[5]];e=e+1;l=n[e];o[l[2]]=o[l[3]]/d[l[5]];e=e+1;l=n[e];o[l[2]]=o[l[3]]-o[l[5]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]]-d[l[5]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];for l=l[2],l[3]do o[l]=nil;end;e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A=o[l[3]];o[c+1]=A;o[c]=A[d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];c=l[2];i={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;i[t]=o[l];end;L,r=h(o[c](f(i,1,r-c)));r=r+c-1;t=0;for l=c,r do t=t+1;o[l]=L[t];end;a=r;e=e+1;l=n[e];c=l[2];i={};t=0;r=a;for l=c+1,r do t=t+1;i[t]=o[l];end;o[c](f(i,1,r-c));a=c;else o[l[2]]={unpack({},1,l[3])};end;elseif c<=3 then o[l[2]]=#o[l[3]];elseif c>4 then local n=l[2];local d={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;d[e]=o[l];end;local d,l=h(o[n](f(d,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=d[e];end;a=l;else local e=l[2];local d={};local n=0;local l=e+l[3]-1;for l=e+1,l do n=n+1;d[n]=o[l];end;o[e](f(d,1,l-e));a=e;end;elseif c<=8 then if c<=6 then local c,c;local K;local r;local c;local A;local t;t=l[2];A={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;A[c]=o[l];end;K={o[t](f(A,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=K[c];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];t=l[2];K,r={o[t]()};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=K[c];end;a=r;e=e+1;l=n[e];o[l[2]]=(l[3]~=0);e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];for l=l[2],l[3]do o[l]=nil;end;elseif c>7 then if(o[l[2]]<o[l[5]])then e=e+1;else e=e+l[3];end;else o[l[2]]=d[l[3]];end;elseif c<=10 then if c>9 then local A;local r;local c;local K;local t;o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];K={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;K[c]=o[l];end;A={o[t](f(K,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];else local c,c;local L;local r;local t;local A;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;A[t]=o[l];end;L={o[c](f(A,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=L[t];end;a=r;e=e+1;l=n[e];o[l[2]]=o[l[3]]+d[l[5]];e=e+1;l=n[e];c=l[2];A={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;A[t]=o[l];end;o[c](f(A,1,r-c));a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];o[l[2]]=(l[3]~=0);e=e+1;l=n[e];c=l[2];A={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;A[t]=o[l];end;o[c](f(A,1,r-c));a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;A[t]=o[l];end;L,r=h(o[c](f(A,1,r-c)));r=r+c-1;t=0;for l=c,r do t=t+1;o[l]=L[t];end;a=r;e=e+1;l=n[e];c=l[2];A={};t=0;r=a;for l=c+1,r do t=t+1;A[t]=o[l];end;o[c](f(A,1,r-c));a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;A[t]=o[l];end;o[c](f(A,1,r-c));a=c;e=e+1;l=n[e];e=e+l[3];end;elseif c>11 then o[l[2]]=o[l[3]][d[l[5]]];else if o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif c<=19 then if c<=15 then if c<=13 then local n=l[2];o[n]=o[n]-o[n+2];e=e+l[3];elseif c==14 then local n=l[2];local e=o[l[3]];o[n+1]=e;o[n]=e[d[l[5]]];else local n=l[2];local d={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;d[e]=o[l];end;local d,l=h(o[n](f(d,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=d[e];end;a=l;end;elseif c<=17 then if c==16 then local K;local r;local t;local i;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];c=l[2];i={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;i[t]=o[l];end;K={o[c](f(i,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=K[t];end;a=r;e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=#o[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];o[c]=o[c]-o[c+2];e=e+l[3];else local n=l[2];local e=o[l[3]];o[n+1]=e;o[n]=e[d[l[5]]];end;elseif c==18 then if not o[l[2]]then e=e+1;else e=e+l[3];end;else o[l[2]]=o[l[3]]+d[l[5]];end;elseif c<=22 then if c<=20 then local n=l[2];local d={};local e=0;local c=n+l[3]-1;for l=n+1,c do e=e+1;d[e]=o[l];end;local d={o[n](f(d,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=d[e];end;a=l;elseif c==21 then local A;local r;local c;local K;local t;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];K={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;K[c]=o[l];end;A={o[t](f(K,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];else local l=l[2];local d,e=h(o[l]());a=l-1;e=e+l-1;local n=0;for l=l,e do n=n+1;o[l]=d[n];end;a=e;end;elseif c<=24 then if c>23 then o[l[2]]=i[d[l[3]]];else o[l[2]]=o[l[3]];end;elseif c==25 then local f=D[l[3]];local a;local d={};a=H({},{__index=function(e,l)local l=d[l];return l[1][l[2]];end,__newindex=function(o,l,e)local l=d[l]l[1][l[2]]=e;end;});for c=1,l[5]do e=e+1;local l=n[e];if l[1]==23 then d[c-1]={o,l[3]};else d[c-1]={K,l[3]};end;C[#C+1]=d;end;o[l[2]]=T(f,a,i);else o[l[2]]=o[l[3]]/d[l[5]];end;elseif c<=40 then if c<=33 then if c<=29 then if c<=27 then local e=l[2];local d={};local n=0;local l=e+l[3]-1;for l=e+1,l do n=n+1;d[n]=o[l];end;o[e](f(d,1,l-e));a=e;elseif c==28 then o[l[2]]=d[l[3]];else o[l[2]]=K[l[3]];end;elseif c<=31 then if c==30 then o[l[2]]=T(D[l[3]],nil,i);else local n=l[2];local c={};local e=0;local d=a;for l=n+1,d do e=e+1;c[e]=o[l];end;local d={o[n](f(c,1,d-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=d[e];end;a=l;end;elseif c==32 then o[l[2]]=o[l[3]]-o[l[5]];else e=e+l[3];end;elseif c<=36 then if c<=34 then K[l[3]]=o[l[2]];elseif c==35 then o[l[2]]=o[l[3]]+o[l[5]];else o[l[2]]=o[l[3]][o[l[5]]];end;elseif c<=38 then if c==37 then o[l[2]]=(l[3]~=0);e=e+1;else o[l[2]]={unpack({},1,l[3])};end;elseif c>39 then local c;local A;local t;local c;local K,r;local c;o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];K,r={o[c]()};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=K[t];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;A[t]=o[l];end;K={o[c](f(A,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=K[t];end;a=r;e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];o[c]=o[c]-o[c+2];e=e+l[3];else o[l[2]]=T(D[l[3]],nil,i);end;elseif c<=47 then if c<=43 then if c<=41 then e=e+l[3];elseif c==42 then o[l[2]]=K[l[3]];else if(o[l[2]]==o[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=45 then if c==44 then o[l[2]]=o[l[3]]-d[l[5]];else o[l[2]]=o[l[3]]-o[l[5]];end;elseif c>46 then o[l[2]]();a=A;else local A,c;local r;local t;local i;local K;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];K=o[l[3]];o[c+1]=K;o[c]=K[d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];c=l[2];i={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;i[t]=o[l];end;A,r=h(o[c](f(i,1,r-c)));r=r+c-1;t=0;for l=c,r do t=t+1;o[l]=A[t];end;a=r;e=e+1;l=n[e];c=l[2];i={};t=0;r=a;for l=c+1,r do t=t+1;i[t]=o[l];end;o[c](f(i,1,r-c));a=c;end;elseif c<=50 then if c<=48 then local r;local t;local K;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];K={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;K[t]=o[l];end;o[c](f(K,1,r-c));a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];K={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;K[t]=o[l];end;o[c](f(K,1,r-c));a=c;elseif c>49 then local c;local K;local t;local c;local A,r;local c;o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];A,r={o[c]()};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=A[t];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=(l[3]~=0);e=e+1;l=n[e];c=l[2];K={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;K[t]=o[l];end;A={o[c](f(K,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=A[t];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];K={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;K[t]=o[l];end;A={o[c](f(K,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=A[t];end;a=r;e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=#o[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];o[c]=o[c]-o[c+2];e=e+l[3];else if not o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif c<=52 then if c==51 then local e=l[2];local d,l=h(o[e]());a=e-1;l=l+e-1;local n=0;for l=e,l do n=n+1;o[l]=d[n];end;a=l;else local n=l[2];local d={};local e=0;local c=n+l[3]-1;for l=n+1,c do e=e+1;d[e]=o[l];end;local d={o[n](f(d,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=d[e];end;a=l;end;elseif c==53 then o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]={unpack({},1,l[3])};e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];else local a=D[l[3]];local c;local d={};c=H({},{__index=function(e,l)local l=d[l];return l[1][l[2]];end,__newindex=function(o,l,e)local l=d[l]l[1][l[2]]=e;end;});for c=1,l[5]do e=e+1;local l=n[e];if l[1]==23 then d[c-1]={o,l[3]};else d[c-1]={K,l[3]};end;C[#C+1]=d;end;o[l[2]]=T(a,c,i);end;elseif c<=82 then if c<=68 then if c<=61 then if c<=57 then if c<=55 then o[l[2]]=(l[3]~=0);e=e+1;elseif c==56 then local l=l[2];local d={};local e=0;local n=a;for l=l+1,n do e=e+1;d[e]=o[l];end;o[l](f(d,1,n-l));a=l;else local A;local r;local c;local K;local t;o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];K={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;K[c]=o[l];end;A={o[t](f(K,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];t=l[2];K={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;K[c]=o[l];end;A={o[t](f(K,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];if(o[l[2]]==o[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=59 then if c>58 then o[l[2]]=i[d[l[3]]];else local e=l[2];local n={};local l=0;local d=a;for e=e+1,d do l=l+1;n[l]=o[e];end;local d,n=h(o[e](f(n,1,d-e)));n=n+e-1;l=0;for e=e,n do l=l+1;o[e]=d[l];end;a=n;end;elseif c==60 then o[l[2]]=o[l[3]][o[l[5]]];else local n=l[2];local c=o[n+2];local d=o[n]+c;o[n]=d;if c>0 then if d<=o[n+1]then e=e+l[3];o[n+3]=d;end;elseif d>=o[n+1]then e=e+l[3];o[n+3]=d;end;end;elseif c<=64 then if c<=62 then local A;local r;local c;local K;local t;o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];K={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;K[c]=o[l];end;A={o[t](f(K,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];elseif c>63 then if(o[l[2]]~=d[l[5]])then e=e+1;else e=e+l[3];end;else if(o[l[2]]==d[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=66 then if c==65 then for l=l[2],l[3]do o[l]=nil;end;else local l=l[2];local d={};local e=0;local n=a;for l=l+1,n do e=e+1;d[e]=o[l];end;o[l](f(d,1,n-l));a=l;end;elseif c==67 then local T;local c,c;local L;local r;local c;local A;local t;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];t=l[2];A={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;A[c]=o[l];end;L={o[t](f(A,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=L[c];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];A={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;A[c]=o[l];end;L,r=h(o[t](f(A,1,r-t)));r=r+t-1;c=0;for l=t,r do c=c+1;o[l]=L[c];end;a=r;e=e+1;l=n[e];t=l[2];A={};c=0;r=a;for l=t+1,r do c=c+1;A[c]=o[l];end;L={o[t](f(A,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=L[c];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];t=l[2];A={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;A[c]=o[l];end;L={o[t](f(A,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=L[c];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];A={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;A[c]=o[l];end;L={o[t](f(A,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=L[c];end;a=r;e=e+1;l=n[e];K[l[3]]=o[l[2]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];for l=l[2],l[3]do o[l]=nil;end;e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];T=o[l[3]];o[t+1]=T;o[t]=T[d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];t=l[2];A={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;A[c]=o[l];end;L,r=h(o[t](f(A,1,r-t)));r=r+t-1;c=0;for l=t,r do c=c+1;o[l]=L[c];end;a=r;e=e+1;l=n[e];t=l[2];A={};c=0;r=a;for l=t+1,r do c=c+1;A[c]=o[l];end;L={o[t](f(A,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=L[c];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];t=l[2];A={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;A[c]=o[l];end;L={o[t](f(A,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=L[c];end;a=r;e=e+1;l=n[e];if not o[l[2]]then e=e+1;else e=e+l[3];end;else o[l[2]]=(l[3]~=0);end;elseif c<=75 then if c<=71 then if c<=69 then o[l[2]]=(l[3]~=0);elseif c==70 then if(o[l[2]]~=d[l[5]])then e=e+1;else e=e+l[3];end;else local c;local K;local c;local t;local A,r;local t;o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];t=l[2];A,r={o[t]()};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];K={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;K[c]=o[l];end;A={o[t](f(K,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];K={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;K[c]=o[l];end;A={o[t](f(K,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];if(o[l[2]]==d[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=73 then if c>72 then if(o[l[2]]==d[l[5]])then e=e+1;else e=e+l[3];end;else local f;local c;local r,t;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];r,t={o[c]()};t=c+l[5]-2;f=0;for l=c,t do f=f+1;o[l]=r[f];end;a=t;e=e+1;l=n[e];o[l[2]]=o[l[3]]*o[l[5]];e=e+1;l=n[e];o[l[2]]=o[l[3]]+o[l[5]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];r,t={o[c]()};t=c+l[5]-2;f=0;for l=c,t do f=f+1;o[l]=r[f];end;a=t;e=e+1;l=n[e];o[l[2]]=o[l[3]]*o[l[5]];e=e+1;l=n[e];o[l[2]]=o[l[3]]+o[l[5]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];r,t={o[c]()};t=c+l[5]-2;f=0;for l=c,t do f=f+1;o[l]=r[f];end;a=t;e=e+1;l=n[e];o[l[2]]=o[l[3]]*o[l[5]];e=e+1;l=n[e];o[l[2]]=o[l[3]]+o[l[5]];end;elseif c>74 then local e=l[2];local d,n={o[e]()};local n=e+l[5]-2;local l=0;for e=e,n do l=l+1;o[e]=d[l];end;a=n;else if o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif c<=78 then if c<=76 then do return end;elseif c>77 then o[l[2]]=#o[l[3]];else o[l[2]]=o[l[3]]*o[l[5]];end;elseif c<=80 then if c>79 then o[l[2]]=o[l[3]][d[l[5]]];else local c,c;local A;local r;local c;local L;local t;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];L={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;L[c]=o[l];end;A={o[t](f(L,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];L={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;L[c]=o[l];end;A={o[t](f(L,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];t=l[2];A,r={o[t]()};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];t=l[2];A,r={o[t]()};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];if not o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif c==81 then o[l[2]]=o[l[3]]-d[l[5]];else local A;local t;local r;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];r={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;r[t]=o[l];end;o[c](f(r,1,A-c));a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];o[l[2]]=(l[3]~=0);e=e+1;l=n[e];c=l[2];r={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;r[t]=o[l];end;o[c](f(r,1,A-c));a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];r={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;r[t]=o[l];end;o[c](f(r,1,A-c));a=c;e=e+1;l=n[e];o[l[2]]=o[l[3]]+d[l[5]];e=e+1;l=n[e];K[l[3]]=o[l[2]];end;elseif c<=96 then if c<=89 then if c<=85 then if c<=83 then local e=l[2];local d,n={o[e]()};local n=e+l[5]-2;local l=0;for e=e,n do l=l+1;o[e]=d[l];end;a=n;elseif c==84 then local n=l[2];local c=o[n+2];local d=o[n]+c;o[n]=d;if c>0 then if d<=o[n+1]then e=e+l[3];o[n+3]=d;end;elseif d>=o[n+1]then e=e+l[3];o[n+3]=d;end;else local f;local c;local r,t;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];r,t={o[c]()};t=c+l[5]-2;f=0;for l=c,t do f=f+1;o[l]=r[f];end;a=t;e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];o[c]=o[c]-o[c+2];e=e+l[3];end;elseif c<=87 then if c>86 then local A;local r;local c;local K;local t;o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];K={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;K[c]=o[l];end;A={o[t](f(K,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];if(o[l[2]]~=d[l[5]])then e=e+1;else e=e+l[3];end;else if(o[l[2]]==o[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c==88 then o[l[2]]=o[l[3]]+o[l[5]];else if(o[l[2]]<o[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=92 then if c<=90 then local e=l[2];local n=o[e];local l=l[3];for l=1,l do n[l]=o[e+l]end;elseif c==91 then local A;local r;local c;local K;local t;t=l[2];K={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;K[c]=o[l];end;A={o[t](f(K,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];K={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;K[c]=o[l];end;A={o[t](f(K,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;else local f;local a;local c;o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];a=o[c];f=l[3];for l=1,f do a[l]=o[c+l]end;end;elseif c<=94 then if c>93 then local e=l[2];local d=e+l[3]-2;local n={};local l=0;for e=e,d do l=l+1;n[l]=o[e];end;do return f(n,1,l)end;else local f;local a;local c;o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];a=o[c];f=l[3];for l=1,f do a[l]=o[c+l]end;end;elseif c==95 then o[l[2]]=o[l[3]]+d[l[5]];else o[l[2]]=o[l[3]]*o[l[5]];end;elseif c<=103 then if c<=99 then if c<=97 then local n=l[2];o[n]=o[n]-o[n+2];e=e+l[3];elseif c==98 then o[l[2]]();a=A;else do return end;end;elseif c<=101 then if c==100 then o[l[2]]=o[l[3]];else o[l[2]]=o[l[3]]/d[l[5]];end;elseif c>102 then local L,c;local t;local c;local A;local r;o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];r=l[2];A={};c=0;t=r+l[3]-1;for l=r+1,t do c=c+1;A[c]=o[l];end;L,t=h(o[r](f(A,1,t-r)));t=t+r-1;c=0;for l=r,t do c=c+1;o[l]=L[c];end;a=t;e=e+1;l=n[e];r=l[2];A={};c=0;t=a;for l=r+1,t do c=c+1;A[c]=o[l];end;L,t=h(o[r](f(A,1,t-r)));t=t+r-1;c=0;for l=r,t do c=c+1;o[l]=L[c];end;a=t;e=e+1;l=n[e];r=l[2];A={};c=0;t=a;for l=r+1,t do c=c+1;A[c]=o[l];end;o[r](f(A,1,t-r));a=r;e=e+1;l=n[e];do return end;else local e=l[2];local d=e+l[3]-2;local n={};local l=0;for e=e,d do l=l+1;n[l]=o[e];end;do return f(n,1,l)end;end;elseif c<=106 then if c<=104 then local e=l[2];local n=o[e];local l=l[3];for l=1,l do n[l]=o[e+l]end;elseif c>105 then local n=l[2];local c={};local e=0;local d=a;for l=n+1,d do e=e+1;c[e]=o[l];end;local d={o[n](f(c,1,d-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=d[e];end;a=l;else local c;local L;local c;local t;local A,r;local t;t=l[2];A,r={o[t]()};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];t=l[2];A,r=h(o[t]());a=t-1;r=r+t-1;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];t=l[2];L={};c=0;r=a;for l=t+1,r do c=c+1;L[c]=o[l];end;A={o[t](f(L,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];t=l[2];L={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;L[c]=o[l];end;A={o[t](f(L,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=A[c];end;a=r;e=e+1;l=n[e];if not o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif c<=108 then if c==107 then for l=l[2],l[3]do o[l]=nil;end;else o[l[2]]=K[l[3]];e=e+1;l=n[e];o[l[2]]();a=A;e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];o[l[2]]();a=A;e=e+1;l=n[e];o[l[2]]=K[l[3]];e=e+1;l=n[e];o[l[2]]();a=A;e=e+1;l=n[e];do return end;end;elseif c==109 then local e=l[2];local n={};local l=0;local d=a;for e=e+1,d do l=l+1;n[l]=o[e];end;local d,n=h(o[e](f(n,1,d-e)));n=n+e-1;l=0;for e=e,n do l=l+1;o[e]=d[l];end;a=n;else K[l[3]]=o[l[2]];end;e=e+1;end;end;end;return T(s(),{},G())();
