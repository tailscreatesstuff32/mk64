glabel func_800ADF48
/* 0AEB48 800ADF48 3C0E800E */  lui   $t6, %hi(gIsGamePaused) # $t6, 0x800e
/* 0AEB4C 800ADF4C 95CEC5FC */  lhu   $t6, %lo(gIsGamePaused)($t6)
/* 0AEB50 800ADF50 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0AEB54 800ADF54 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AEB58 800ADF58 11C000AA */  beqz  $t6, .L800AE204
/* 0AEB5C 800ADF5C 00802825 */   move  $a1, $a0
/* 0AEB60 800ADF60 8C8F0004 */  lw    $t7, 4($a0)
/* 0AEB64 800ADF64 2DE1002D */  sltiu $at, $t7, 0x2d
/* 0AEB68 800ADF68 102000A7 */  beqz  $at, .L800AE208
/* 0AEB6C 800ADF6C 000F7880 */   sll   $t7, $t7, 2
/* 0AEB70 800ADF70 3C01800F */  lui   $at, %hi(jpt_800F287C)
/* 0AEB74 800ADF74 002F0821 */  addu  $at, $at, $t7
/* 0AEB78 800ADF78 8C2F287C */  lw    $t7, %lo(jpt_800F287C)($at)
/* 0AEB7C 800ADF7C 01E00008 */  jr    $t7
/* 0AEB80 800ADF80 00000000 */   nop   
glabel L800ADF84
/* 0AEB84 800ADF84 3C18800E */  lui   $t8, %hi(gModeSelection) # $t8, 0x800e
/* 0AEB88 800ADF88 8F18C53C */  lw    $t8, %lo(gModeSelection)($t8)
/* 0AEB8C 800ADF8C 3C19800F */  lui   $t9, %hi(D_800F0B50) # 0x800f
/* 0AEB90 800ADF90 0338C821 */  addu  $t9, $t9, $t8
/* 0AEB94 800ADF94 83390B50 */  lb    $t9, %lo(D_800F0B50)($t9) # 0xb50($t9)
/* 0AEB98 800ADF98 1000009B */  b     .L800AE208
/* 0AEB9C 800ADF9C ACB90004 */   sw    $t9, 4($a1)
glabel L800ADFA0
/* 0AEBA0 800ADFA0 0C02D148 */  jal   func_800B4520
/* 0AEBA4 800ADFA4 AFA50020 */   sw    $a1, 0x20($sp)
/* 0AEBA8 800ADFA8 14400097 */  bnez  $v0, .L800AE208
/* 0AEBAC 800ADFAC 8FA50020 */   lw    $a1, 0x20($sp)
/* 0AEBB0 800ADFB0 3C08800E */  lui   $t0, %hi(gIsGamePaused) # $t0, 0x800e
/* 0AEBB4 800ADFB4 9508C5FC */  lhu   $t0, %lo(gIsGamePaused)($t0)
/* 0AEBB8 800ADFB8 3C0B800F */  lui   $t3, %hi(gControllers) # $t3, 0x800f
/* 0AEBBC 800ADFBC 256B6910 */  addiu $t3, %lo(gControllers) # addiu $t3, $t3, 0x6910
/* 0AEBC0 800ADFC0 00084900 */  sll   $t1, $t0, 4
/* 0AEBC4 800ADFC4 252AFFF0 */  addiu $t2, $t1, -0x10
/* 0AEBC8 800ADFC8 014B3021 */  addu  $a2, $t2, $t3
/* 0AEBCC 800ADFCC 94C30006 */  lhu   $v1, 6($a2)
/* 0AEBD0 800ADFD0 94CC000C */  lhu   $t4, 0xc($a2)
/* 0AEBD4 800ADFD4 3C07800E */  lui   $a3, %hi(gModeSelection) # $a3, 0x800e
/* 0AEBD8 800ADFD8 24E7C53C */  addiu $a3, %lo(gModeSelection) # addiu $a3, $a3, -0x3ac4
/* 0AEBDC 800ADFDC 006C2025 */  or    $a0, $v1, $t4
/* 0AEBE0 800ADFE0 308D0800 */  andi  $t5, $a0, 0x800
/* 0AEBE4 800ADFE4 11A00026 */  beqz  $t5, .L800AE080
/* 0AEBE8 800ADFE8 00000000 */   nop   
/* 0AEBEC 800ADFEC 8CEE0000 */  lw    $t6, ($a3)
/* 0AEBF0 800ADFF0 3C0F800F */  lui   $t7, %hi(D_800F0B50) # 0x800f
/* 0AEBF4 800ADFF4 8CA20004 */  lw    $v0, 4($a1)
/* 0AEBF8 800ADFF8 01EE7821 */  addu  $t7, $t7, $t6
/* 0AEBFC 800ADFFC 81EF0B50 */  lb    $t7, %lo(D_800F0B50)($t7) # 0xb50($t7)
/* 0AEC00 800AE000 2458FFFF */  addiu $t8, $v0, -1
/* 0AEC04 800AE004 01E2082A */  slt   $at, $t7, $v0
/* 0AEC08 800AE008 1020001D */  beqz  $at, .L800AE080
/* 0AEC0C 800AE00C 00000000 */   nop   
/* 0AEC10 800AE010 ACB80004 */  sw    $t8, 4($a1)
/* 0AEC14 800AE014 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0AEC18 800AE018 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0AEC1C 800AE01C AFA60018 */  sw    $a2, 0x18($sp)
/* 0AEC20 800AE020 0C032384 */  jal   play_sound2
/* 0AEC24 800AE024 AFA50020 */   sw    $a1, 0x20($sp)
/* 0AEC28 800AE028 8FA50020 */  lw    $a1, 0x20($sp)
/* 0AEC2C 800AE02C 3C01800F */  lui   $at, %hi(D_800F2930)
/* 0AEC30 800AE030 D4262930 */  ldc1  $f6, %lo(D_800F2930)($at)
/* 0AEC34 800AE034 C4A40024 */  lwc1  $f4, 0x24($a1)
/* 0AEC38 800AE038 8FA60018 */  lw    $a2, 0x18($sp)
/* 0AEC3C 800AE03C 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AEC40 800AE040 46002021 */  cvt.d.s $f0, $f4
/* 0AEC44 800AE044 2419FFFF */  li    $t9, -1
/* 0AEC48 800AE048 4626003C */  c.lt.d $f0, $f6
/* 0AEC4C 800AE04C 00000000 */  nop   
/* 0AEC50 800AE050 45020008 */  bc1fl .L800AE074
/* 0AEC54 800AE054 ACB90008 */   sw    $t9, 8($a1)
/* 0AEC58 800AE058 44814800 */  mtc1  $at, $f9
/* 0AEC5C 800AE05C 44804000 */  mtc1  $zero, $f8
/* 0AEC60 800AE060 00000000 */  nop   
/* 0AEC64 800AE064 46280280 */  add.d $f10, $f0, $f8
/* 0AEC68 800AE068 46205420 */  cvt.s.d $f16, $f10
/* 0AEC6C 800AE06C E4B00024 */  swc1  $f16, 0x24($a1)
/* 0AEC70 800AE070 ACB90008 */  sw    $t9, 8($a1)
.L800AE074:
/* 0AEC74 800AE074 94C8000C */  lhu   $t0, 0xc($a2)
/* 0AEC78 800AE078 94C30006 */  lhu   $v1, 6($a2)
/* 0AEC7C 800AE07C 00682025 */  or    $a0, $v1, $t0
.L800AE080:
/* 0AEC80 800AE080 3C07800E */  lui   $a3, %hi(gModeSelection) # $a3, 0x800e
/* 0AEC84 800AE084 30890400 */  andi  $t1, $a0, 0x400
/* 0AEC88 800AE088 11200024 */  beqz  $t1, .L800AE11C
/* 0AEC8C 800AE08C 24E7C53C */   addiu $a3, %lo(gModeSelection) # addiu $a3, $a3, -0x3ac4
/* 0AEC90 800AE090 8CEA0000 */  lw    $t2, ($a3)
/* 0AEC94 800AE094 3C0B800F */  lui   $t3, %hi(D_800F0B54) # 0x800f
/* 0AEC98 800AE098 8CA20004 */  lw    $v0, 4($a1)
/* 0AEC9C 800AE09C 016A5821 */  addu  $t3, $t3, $t2
/* 0AECA0 800AE0A0 816B0B54 */  lb    $t3, %lo(D_800F0B54)($t3) # 0xb54($t3)
/* 0AECA4 800AE0A4 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0AECA8 800AE0A8 34848000 */  ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0AECAC 800AE0AC 004B082A */  slt   $at, $v0, $t3
/* 0AECB0 800AE0B0 1020001A */  beqz  $at, .L800AE11C
/* 0AECB4 800AE0B4 244C0001 */   addiu $t4, $v0, 1
/* 0AECB8 800AE0B8 ACAC0004 */  sw    $t4, 4($a1)
/* 0AECBC 800AE0BC AFA60018 */  sw    $a2, 0x18($sp)
/* 0AECC0 800AE0C0 0C032384 */  jal   play_sound2
/* 0AECC4 800AE0C4 AFA50020 */   sw    $a1, 0x20($sp)
/* 0AECC8 800AE0C8 8FA50020 */  lw    $a1, 0x20($sp)
/* 0AECCC 800AE0CC 3C01800F */  lui   $at, %hi(D_800F2938)
/* 0AECD0 800AE0D0 D4242938 */  ldc1  $f4, %lo(D_800F2938)($at)
/* 0AECD4 800AE0D4 C4B20024 */  lwc1  $f18, 0x24($a1)
/* 0AECD8 800AE0D8 3C07800E */  lui   $a3, %hi(gModeSelection) # $a3, 0x800e
/* 0AECDC 800AE0DC 8FA60018 */  lw    $a2, 0x18($sp)
/* 0AECE0 800AE0E0 46009021 */  cvt.d.s $f0, $f18
/* 0AECE4 800AE0E4 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AECE8 800AE0E8 4624003C */  c.lt.d $f0, $f4
/* 0AECEC 800AE0EC 24E7C53C */  addiu $a3, %lo(gModeSelection) # addiu $a3, $a3, -0x3ac4
/* 0AECF0 800AE0F0 240D0001 */  li    $t5, 1
/* 0AECF4 800AE0F4 45020008 */  bc1fl .L800AE118
/* 0AECF8 800AE0F8 ACAD0008 */   sw    $t5, 8($a1)
/* 0AECFC 800AE0FC 44813800 */  mtc1  $at, $f7
/* 0AED00 800AE100 44803000 */  mtc1  $zero, $f6
/* 0AED04 800AE104 00000000 */  nop   
/* 0AED08 800AE108 46260200 */  add.d $f8, $f0, $f6
/* 0AED0C 800AE10C 462042A0 */  cvt.s.d $f10, $f8
/* 0AED10 800AE110 E4AA0024 */  swc1  $f10, 0x24($a1)
/* 0AED14 800AE114 ACAD0008 */  sw    $t5, 8($a1)
.L800AE118:
/* 0AED18 800AE118 94C30006 */  lhu   $v1, 6($a2)
.L800AE11C:
/* 0AED1C 800AE11C 306E4000 */  andi  $t6, $v1, 0x4000
/* 0AED20 800AE120 11C0000E */  beqz  $t6, .L800AE15C
/* 0AED24 800AE124 30799000 */   andi  $t9, $v1, 0x9000
/* 0AED28 800AE128 8CEF0000 */  lw    $t7, ($a3)
/* 0AED2C 800AE12C 3C02800F */  lui   $v0, %hi(D_800F0B50) # 0x800f
/* 0AED30 800AE130 8CB80004 */  lw    $t8, 4($a1)
/* 0AED34 800AE134 004F1021 */  addu  $v0, $v0, $t7
/* 0AED38 800AE138 80420B50 */  lb    $v0, %lo(D_800F0B50)($v0) # 0xb50($v0)
/* 0AED3C 800AE13C 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0AED40 800AE140 34848002 */  ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0AED44 800AE144 13020005 */  beq   $t8, $v0, .L800AE15C
/* 0AED48 800AE148 00000000 */   nop   
/* 0AED4C 800AE14C 0C032384 */  jal   play_sound2
/* 0AED50 800AE150 ACA20004 */   sw    $v0, 4($a1)
/* 0AED54 800AE154 1000002D */  b     .L800AE20C
/* 0AED58 800AE158 8FBF0014 */   lw    $ra, 0x14($sp)
.L800AE15C:
/* 0AED5C 800AE15C 5320002B */  beql  $t9, $zero, .L800AE20C
/* 0AED60 800AE160 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AED64 800AE164 8CE90000 */  lw    $t1, ($a3)
/* 0AED68 800AE168 3C0A800F */  lui   $t2, %hi(D_800F0B50) # 0x800f
/* 0AED6C 800AE16C 8CA80004 */  lw    $t0, 4($a1)
/* 0AED70 800AE170 01495021 */  addu  $t2, $t2, $t1
/* 0AED74 800AE174 814A0B50 */  lb    $t2, %lo(D_800F0B50)($t2) # 0xb50($t2)
/* 0AED78 800AE178 3C01800E */  lui   $at, %hi(gIsGamePaused) # $at, 0x800e
/* 0AED7C 800AE17C 2404001E */  li    $a0, 30
/* 0AED80 800AE180 150A0008 */  bne   $t0, $t2, .L800AE1A4
/* 0AED84 800AE184 00000000 */   nop   
/* 0AED88 800AE188 ACA00004 */  sw    $zero, 4($a1)
/* 0AED8C 800AE18C 0C0A37CE */  jal   func_8028DF38
/* 0AED90 800AE190 A420C5FC */   sh    $zero, %lo(gIsGamePaused)($at)
/* 0AED94 800AE194 0C0327E4 */  jal   func_800C9F90
/* 0AED98 800AE198 00002025 */   move  $a0, $zero
/* 0AED9C 800AE19C 1000001B */  b     .L800AE20C
/* 0AEDA0 800AE1A0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800AE1A4:
/* 0AEDA4 800AE1A4 0C0277F8 */  jal   func_8009DFE0
/* 0AEDA8 800AE1A8 AFA50020 */   sw    $a1, 0x20($sp)
/* 0AEDAC 800AE1AC 3C044900 */  lui   $a0, (0x4900801B >> 16) # lui $a0, 0x4900
/* 0AEDB0 800AE1B0 0C032384 */  jal   play_sound2
/* 0AEDB4 800AE1B4 3484801B */   ori   $a0, (0x4900801B & 0xFFFF) # ori $a0, $a0, 0x801b
/* 0AEDB8 800AE1B8 0C0328CC */  jal   func_800CA330
/* 0AEDBC 800AE1BC 2404003C */   li    $a0, 60
/* 0AEDC0 800AE1C0 8FA50020 */  lw    $a1, 0x20($sp)
/* 0AEDC4 800AE1C4 3C01800F */  lui   $at, %hi(D_800F2940)
/* 0AEDC8 800AE1C8 D4322940 */  ldc1  $f18, %lo(D_800F2940)($at)
/* 0AEDCC 800AE1CC C4B00024 */  lwc1  $f16, 0x24($a1)
/* 0AEDD0 800AE1D0 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 0AEDD4 800AE1D4 46008021 */  cvt.d.s $f0, $f16
/* 0AEDD8 800AE1D8 4632003C */  c.lt.d $f0, $f18
/* 0AEDDC 800AE1DC 00000000 */  nop   
/* 0AEDE0 800AE1E0 4502000A */  bc1fl .L800AE20C
/* 0AEDE4 800AE1E4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AEDE8 800AE1E8 44812800 */  mtc1  $at, $f5
/* 0AEDEC 800AE1EC 44802000 */  mtc1  $zero, $f4
/* 0AEDF0 800AE1F0 00000000 */  nop   
/* 0AEDF4 800AE1F4 46240180 */  add.d $f6, $f0, $f4
/* 0AEDF8 800AE1F8 46203220 */  cvt.s.d $f8, $f6
/* 0AEDFC 800AE1FC 10000002 */  b     .L800AE208
/* 0AEE00 800AE200 E4A80024 */   swc1  $f8, 0x24($a1)
.L800AE204:
/* 0AEE04 800AE204 ACA00004 */  sw    $zero, 4($a1)
.L800AE208:
glabel L800AE208
/* 0AEE08 800AE208 8FBF0014 */  lw    $ra, 0x14($sp)
.L800AE20C:
/* 0AEE0C 800AE20C 27BD0020 */  addiu $sp, $sp, 0x20
/* 0AEE10 800AE210 03E00008 */  jr    $ra
/* 0AEE14 800AE214 00000000 */   nop   
