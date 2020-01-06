//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer cbCS
// {
//
//   uint g_tex_width;                  // Offset:    0 Size:     4
//   uint g_num_block_x;                // Offset:    4 Size:     4
//   uint g_format;                     // Offset:    8 Size:     4
//   uint g_tex_size;                   // Offset:   12 Size:     4
//   uint g_start_block_id;             // Offset:   16 Size:     4
//
// }
//
// Resource bind info for g_InBuff
// {
//
//   uint4 $Element;                    // Offset:    0 Size:    16
//
// }
//
// Resource bind info for g_OutBuff
// {
//
//   uint4 $Element;                    // Offset:    0 Size:    16
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// g_InBuff                          texture  struct         r/o             t0      1 
// g_OutBuff                             UAV  struct         r/w             u0      1 
// cbCS                              cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_4_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { 10, 5, 5, 5},
                              { 7, 6, 6, 6},
                              { 11, 5, 4, 4},
                              { 11, 4, 5, 4},
                              { 11, 4, 4, 5},
                              { 9, 5, 5, 5},
                              { 8, 6, 5, 5},
                              { 8, 5, 6, 5},
                              { 8, 5, 5, 6},
                              { 6, 6, 6, 6},
                              { 10, 10, 10, 10},
                              { 11, 9, 9, 9},
                              { 12, 8, 8, 8},
                              { 16, 4, 4, 4},
                              { 0, 0x0000cccc, 15, 0},
                              { 4, 0x00008888, 15, 9},
                              { 9, 0x0000eeee, 15, 18},
                              { 13, 0x0000ecc8, 15, 27},
                              { 17, 0x0000c880, 15, 37},
                              { 21, 0x0000feec, 15, 46},
                              { 26, 0x0000fec8, 15, 55},
                              { 30, 0x0000ec80, 15, 64},
                              { 34, 0x0000c800, 15, 0},
                              { 38, 0x0000ffec, 15, 0},
                              { 43, 0x0000fe80, 15, 0},
                              { 47, 0x0000e800, 15, 0},
                              { 51, 0x0000ffe8, 15, 0},
                              { 55, 0x0000ff00, 15, 0},
                              { 60, 0x0000fff0, 15, 0},
                              { 64, 0x0000f000, 15, 0},
                              { 0, 0x0000f710, 15, 0},
                              { 0, 142, 2, 0},
                              { 0, 0x00007100, 8, 0},
                              { 0, 2254, 2, 0},
                              { 0, 140, 2, 0},
                              { 0, 0x00007310, 8, 0},
                              { 0, 0x00003100, 8, 0},
                              { 0, 0x00008cce, 15, 0},
                              { 0, 2188, 2, 0},
                              { 0, 0x00003110, 8, 0},
                              { 0, 0x00006666, 2, 0},
                              { 0, 0x0000366c, 2, 0},
                              { 0, 6120, 8, 0},
                              { 0, 4080, 8, 0},
                              { 0, 0x0000718e, 2, 0},
                              { 0, 0x0000399c, 2, 0} }
dcl_constantbuffer CB0[2], immediateIndexed
dcl_resource_structured t0, 16
dcl_uav_structured u0, 16
dcl_input vThreadIDInGroupFlattened
dcl_input vThreadGroupID.x
dcl_temps 10
dcl_tgsm_structured g0, 16, 64
dcl_thread_group 64, 1, 1
ushr r0.x, vThreadIDInGroupFlattened.x, l(4)
ishl r0.y, vThreadGroupID.x, l(2)
iadd r0.y, r0.y, cb0[1].x
iadd r0.x, r0.x, r0.y
and r0.y, vThreadIDInGroupFlattened.x, l(48)
iadd r0.z, -r0.y, vThreadIDInGroupFlattened.x
ieq r0.w, r0.z, l(4)
if_nz r0.w
  ld_structured r1.xyzw, r0.x, l(0), t0.xyzw
  store_structured g0.xyzw, vThreadIDInGroupFlattened.x, l(0), r1.xyzw
endif 
iadd r0.w, r0.y, l(4)
ld_structured r1.xyzw, r0.w, l(0), g0.xyzw
and r0.w, r1.x, l(3)
if_z r0.w
  mov r2.x, l(0)
else 
  ieq r0.w, r0.w, l(1)
  if_nz r0.w
    mov r2.x, l(1)
  else 
    and r0.w, r1.x, l(31)
    ieq r2.y, r0.w, l(2)
    if_nz r2.y
      mov r2.x, l(2)
    else 
      ieq r2.y, r0.w, l(6)
      if_nz r2.y
        mov r2.x, l(3)
      else 
        ieq r2.y, r0.w, l(10)
        if_nz r2.y
          mov r2.x, l(4)
        else 
          ieq r2.y, r0.w, l(14)
          if_nz r2.y
            mov r2.x, l(5)
          else 
            ieq r2.y, r0.w, l(18)
            if_nz r2.y
              mov r2.x, l(6)
            else 
              ieq r3.xyzw, r0.wwww, l(22, 26, 30, 3)
              ieq r2.yz, r0.wwww, l(0, 7, 11, 0)
              movc r0.w, r2.z, l(12), l(13)
              movc r0.w, r2.y, l(11), r0.w
              movc r0.w, r3.w, l(10), r0.w
              movc r0.w, r3.z, l(9), r0.w
              movc r0.w, r3.y, l(8), r0.w
              movc r2.x, r3.x, l(7), r0.w
            endif 
          endif 
        endif 
      endif 
    endif 
  endif 
endif 
iadd r0.w, r2.x, l(1)
if_z r0.z
  ult r2.y, l(10), r0.w
  if_nz r2.y
    ieq r2.y, r0.w, l(11)
    if_nz r2.y
      ushr r3.x, r1.x, l(5)
      ushr r3.y, r1.x, l(15)
      ushr r3.z, r1.x, l(25)
      and r3.xyw, r3.xyxz, l(1023, 1023, 0, 127)
      ishl r2.y, r1.y, l(7)
      and r2.y, r2.y, l(896)
      iadd r3.z, r2.y, r3.w
    else 
      ushr r4.x, r1.x, l(5)
      ushr r4.y, r1.x, l(15)
      ushr r4.z, r1.x, l(25)
      and r4.xyz, r4.xyzx, l(1023, 1023, 127, 0)
      ushr r5.x, r1.y, l(2)
      ushr r5.y, r1.y, l(12)
      ushr r5.z, r1.y, l(7)
      ushr r5.w, r1.y, l(17)
      and r5.xyzw, r5.xyzw, l(1024, 1024, 0x0000fc00, 0x00007c00)
      iadd r6.xy, r4.xyxx, r5.xyxx
      ishl r7.x, r1.z, l(10)
      ishl r7.yw, r1.yyyy, l(7)
      ishl r7.z, r1.y, l(3)
      and r7.xyzw, r7.xyzw, l(1024, 896, 0x0000fc00, 896)
      iadd r2.y, r7.y, r7.x
      iadd r6.z, r2.y, r4.z
      ieq r2.zw, r0.wwww, l(0, 0, 12, 13)
      and r8.xyz, r1.yyyy, l(2048, 0x00200000, 0x80000000, 0)
      ushr r8.y, r8.y, l(10)
      ushr r8.z, r8.z, l(20)
      iadd r8.xyz, r4.xyzx, r8.xyzx
      iadd r9.xy, r5.xyxx, r8.xyxx
      iadd r9.z, r2.y, r8.z
      iadd r4.xw, r4.xxxz, r7.zzzw
      iadd r5.xy, r4.ywyy, r5.zwzz
      ishl r2.y, r1.z, l(15)
      and r2.y, r2.y, l(0x00008000)
      iadd r4.y, r2.y, r5.y
      mov r4.z, r5.x
      movc r4.xyz, r2.wwww, r9.xyzx, r4.xzyx
      movc r3.xyz, r2.zzzz, r6.xyzx, r4.xyzx
    endif 
  else 
    ieq r2.y, r0.w, l(1)
    if_nz r2.y
      ushr r4.x, r1.x, l(5)
      ushr r4.y, r1.x, l(15)
      ushr r4.z, r1.x, l(25)
      and r3.xyw, r4.xyxz, l(1023, 1023, 0, 127)
      ishl r2.y, r1.y, l(7)
      and r2.y, r2.y, l(896)
      iadd r3.z, r2.y, r3.w
    else 
      ieq r2.y, r0.w, l(2)
      if_nz r2.y
        ushr r4.x, r1.x, l(5)
        ushr r4.y, r1.x, l(15)
        ushr r4.z, r1.x, l(25)
        and r3.xyz, r4.xyzx, l(127, 127, 127, 0)
      else 
        ieq r2.y, r0.w, l(3)
        if_nz r2.y
          ushr r4.x, r1.x, l(5)
          ushr r4.y, r1.x, l(15)
          ushr r4.z, r1.x, l(25)
          and r3.xyz, r4.xyzx, l(1023, 1023, 127, 0)
          ishl r4.x, r1.y, l(1)
          ishl r4.y, r1.y, l(7)
          and r2.yz, r4.xxyx, l(0, 512, 896, 0)
          or r3.xw, r2.yyyz, r3.xxxz
          ushr r2.z, r1.y, l(8)
          ushr r2.w, r1.y, l(18)
          and r2.yz, r2.zzwz, l(0, 512, 512, 0)
          or r3.yz, r2.yyzy, r3.yywy
        else 
          ieq r2.y, r0.w, l(4)
          if_nz r2.y
            ushr r4.x, r1.x, l(5)
            ushr r4.y, r1.x, l(15)
            ushr r4.z, r1.x, l(25)
            and r3.xyz, r4.xyzx, l(1023, 1023, 127, 0)
            ishl r4.x, r1.y, l(2)
            ishl r4.y, r1.y, l(7)
            and r2.yz, r4.xxyx, l(0, 512, 896, 0)
            or r3.xw, r2.yyyz, r3.xxxz
            ushr r2.z, r1.y, l(9)
            ushr r2.w, r1.y, l(18)
            and r2.yz, r2.zzwz, l(0, 512, 512, 0)
            or r3.yz, r2.yyzy, r3.yywy
          else 
            ieq r2.y, r0.w, l(5)
            if_nz r2.y
              ushr r4.x, r1.x, l(5)
              ushr r4.y, r1.x, l(15)
              ushr r4.z, r1.x, l(25)
              and r3.xyz, r4.xyzx, l(1023, 1023, 127, 0)
              ishl r4.x, r1.y, l(2)
              ishl r4.y, r1.y, l(7)
              and r2.yz, r4.xxyx, l(0, 512, 896, 0)
              or r3.xw, r2.yyyz, r3.xxxz
              ushr r2.z, r1.y, l(8)
              ushr r2.w, r1.y, l(19)
              and r2.yz, r2.zzwz, l(0, 512, 512, 0)
              or r3.yz, r2.yyzy, r3.yywy
            else 
              ieq r2.y, r0.w, l(6)
              if_nz r2.y
                ushr r4.x, r1.x, l(5)
                ushr r4.y, r1.x, l(15)
                ushr r4.z, r1.x, l(25)
                and r3.xyw, r4.xyxz, l(511, 511, 0, 127)
                ishl r2.y, r1.y, l(7)
                and r2.y, r2.y, l(384)
                iadd r3.z, r2.y, r3.w
              else 
                ushr r4.x, r1.x, l(5)
                ushr r4.y, r1.x, l(15)
                ushr r4.z, r1.x, l(25)
                and r5.xyz, r4.xyzx, l(255, 255, 127, 0)
                ishl r2.y, r1.y, l(7)
                and r2.y, r2.y, l(128)
                iadd r5.w, r2.y, r5.z
                ieq r2.yzw, r0.wwww, l(0, 7, 8, 9)
                and r4.xyz, r4.xyzx, l(63, 63, 63, 0)
                or r2.z, r2.z, r2.w
                or r2.y, r2.y, r2.z
                movc r3.xyz, r2.yyyy, r5.xywx, r4.xyzx
              endif 
            endif 
          endif 
        endif 
      endif 
    endif 
  endif 
  ieq r2.y, cb0[0].z, l(96)
  iadd r2.z, l(-1), icb[r2.x + 0].x
  ishl r2.z, l(1), r2.z
  and r4.xyz, r2.zzzz, r3.xyzx
  iadd r2.w, r2.z, l(-1)
  and r5.xyz, r2.wwww, r3.xyzx
  iadd r5.xyz, -r2.zzzz, r5.xyzx
  movc r4.xyz, r4.xyzx, r5.xyzx, r3.xyzx
  movc r3.xyz, r2.yyyy, r4.xyzx, r3.xyzx
  store_structured g0.xyz, vThreadIDInGroupFlattened.x, l(0), r3.xyzx
else 
  ult r2.y, r0.z, l(4)
  if_nz r2.y
    ieq r2.y, r0.z, l(1)
    if_nz r2.y
      ult r2.y, l(10), r0.w
      if_nz r2.y
        ushr r4.x, r1.y, l(3)
        ushr r4.y, r1.y, l(13)
        ushr r4.z, r1.y, l(23)
        and r5.xyz, r4.xyzx, l(1023, 1023, 511, 0)
        ishl r2.y, r1.z, l(9)
        and r2.y, r2.y, l(512)
        iadd r5.w, r2.y, r5.z
        and r2.yzw, r4.xxyz, l(0, 511, 511, 511)
        ieq r6.xyz, r0.wwww, l(11, 12, 13, 0)
        and r7.xyz, r4.xyzx, l(255, 255, 255, 0)
        and r4.xyz, r4.xyzx, l(15, 15, 15, 0)
        movc r4.xyz, r6.zzzz, r7.xyzx, r4.xyzx
        movc r2.yzw, r6.yyyy, r2.yyzw, r4.xxyz
        movc r3.xyz, r6.xxxx, r5.xywx, r2.yzwy
      else 
        ieq r2.y, r0.w, l(1)
        if_nz r2.y
          mov r2.yzw, l(0,248,0x0003e000,0.000000)
        else 
          ieq r4.x, r0.w, l(2)
          if_nz r4.x
            mov r2.yzw, l(0,504,0x0007e000,0.000000)
          else 
            ieq r4.x, r0.w, l(3)
            if_nz r4.x
              mov r2.yzw, l(0,248,0x0001e000,0.000000)
            else 
              ieq r4.xyzw, r0.wwww, l(4, 5, 6, 7)
              ieq r5.xy, r0.wwww, l(8, 9, 0, 0)
              movc r5.yzw, r5.yyyy, l(0,248,0x0003e000,0.000000), l(0,504,0x0007e000,0.000000)
              movc r5.xyz, r5.xxxx, l(248,0x0007e000,0.000000,0), r5.yzwy
              movc r5.xyz, r4.wwww, l(504,0x0003e000,0.000000,0), r5.xyzx
              movc r5.xyz, r4.zzzz, l(248,0x0003e000,0.000000,0), r5.xyzx
              movc r4.yzw, r4.yyyy, l(0,120,0x0001e000,0.000000), r5.xxyz
              movc r2.yzw, r4.xxxx, l(0,120,0x0003e000,0.000000), r4.yyzw
            endif 
          endif 
        endif 
        and r2.yzw, r1.yyyy, r2.yyzw
        ushr r3.x, r2.y, l(3)
        ushr r3.y, r2.z, l(13)
        ushr r3.z, r2.w, l(23)
      endif 
    else 
      uge r2.y, l(10), r0.w
      if_nz r2.y
        ieq r2.y, r0.z, l(2)
        if_nz r2.y
          ieq r2.y, r0.w, l(1)
          if_nz r2.y
            ushr r4.x, r1.z, l(1)
            ushr r4.y, r1.y, l(9)
            ushr r4.z, r1.y, l(29)
            and r3.xyw, r4.xyxz, l(31, 15, 0, 7)
            ishl r4.x, r1.x, l(2)
            ishl r4.y, r1.x, l(1)
            ishl r4.z, r1.z, l(3)
            and r2.yzw, r4.xxyz, l(0, 16, 16, 8)
            iadd r3.yw, r2.yyyz, r3.yyyw
            iadd r3.z, r2.w, r3.w
          else 
            ieq r2.y, r0.w, l(2)
            if_nz r2.y
              ushr r4.x, r1.z, l(1)
              ushr r4.y, r1.y, l(9)
              ushr r4.z, r1.y, l(29)
              ushr r4.w, r1.x, l(17)
              and r3.xyzw, r4.xywz, l(63, 15, 32, 7)
              ushr r4.x, r1.x, l(20)
              ushr r4.y, r1.x, l(10)
              and r2.yz, r4.xxyx, l(0, 16, 16, 0)
              ishl r4.xy, r1.xzxx, l(3)
              and r4.xy, r4.xyxx, l(32, 8, 0, 0)
              iadd r2.yz, r2.yyzy, r4.xxyx
              iadd r3.yw, r2.yyyz, r3.yyyw
              iadd r3.z, r3.z, r3.w
            else 
              ieq r2.y, r0.w, l(3)
              if_nz r2.y
                ushr r4.x, r1.z, l(1)
                ushr r4.y, r1.y, l(9)
                ushr r4.z, r1.y, l(29)
                and r3.xyw, r4.xyxz, l(31, 15, 0, 7)
                ishl r2.y, r1.z, l(3)
                and r2.y, r2.y, l(8)
                iadd r3.z, r2.y, r3.w
              else 
                ieq r2.y, r0.w, l(4)
                if_nz r2.y
                  ushr r4.x, r1.z, l(1)
                  ushr r4.y, r1.z, l(7)
                  ushr r4.z, r1.y, l(29)
                  ushr r4.w, r1.y, l(9)
                  and r3.xyzw, r4.xyzw, l(15, 16, 7, 15)
                  iadd r3.y, r3.w, r3.y
                  ishl r2.y, r1.z, l(3)
                  and r2.y, r2.y, l(8)
                  iadd r3.z, r2.y, r3.z
                else 
                  ieq r2.y, r0.w, l(5)
                  if_nz r2.y
                    ushr r4.x, r1.z, l(1)
                    ushr r4.y, r1.y, l(9)
                    ushr r4.z, r1.y, l(29)
                    ushr r4.w, r1.y, l(4)
                    and r3.xyzw, r4.xyzw, l(15, 15, 7, 16)
                    ishl r2.y, r1.z, l(3)
                    and r2.y, r2.y, l(8)
                    iadd r2.y, r2.y, r3.w
                    iadd r3.z, r2.y, r3.z
                  else 
                    ieq r2.y, r0.w, l(6)
                    if_nz r2.y
                      ushr r4.x, r1.z, l(1)
                      ushr r4.y, r1.y, l(9)
                      ushr r4.z, r1.y, l(29)
                      and r3.xyw, r4.xyxz, l(31, 15, 0, 7)
                      ushr r4.x, r1.x, l(20)
                      ushr r4.y, r1.x, l(10)
                      and r2.yz, r4.xxyx, l(0, 16, 16, 0)
                      iadd r3.yw, r2.yyyz, r3.yyyw
                      ishl r2.y, r1.z, l(3)
                      and r2.y, r2.y, l(8)
                      iadd r3.z, r2.y, r3.w
                    else 
                      ieq r2.y, r0.w, l(7)
                      if_nz r2.y
                        ushr r4.x, r1.z, l(1)
                        ushr r4.y, r1.y, l(9)
                        ushr r4.z, r1.y, l(29)
                        and r3.xyw, r4.xyxz, l(63, 15, 0, 7)
                        ushr r4.x, r1.x, l(20)
                        ushr r4.y, r1.x, l(10)
                        and r2.yz, r4.xxyx, l(0, 16, 16, 0)
                        iadd r3.yw, r2.yyyz, r3.yyyw
                        ishl r2.y, r1.z, l(3)
                        and r2.y, r2.y, l(8)
                        iadd r3.z, r2.y, r3.w
                      else 
                        ushr r4.x, r1.z, l(1)
                        ushr r4.y, r1.y, l(9)
                        ushr r4.z, r1.y, l(29)
                        ushr r4.w, r1.x, l(18)
                        and r5.xyzw, r4.yzwx, l(15, 7, 32, 31)
                        ushr r6.x, r1.x, l(20)
                        ushr r6.y, r1.x, l(10)
                        ushr r6.z, r1.x, l(16)
                        ushr r6.w, r1.x, l(17)
                        and r6.xyzw, r6.xyzw, l(16, 16, 32, 32)
                        iadd r5.xy, r5.xyxx, r6.xyxx
                        iadd r7.y, r5.z, r5.x
                        ishl r2.y, r1.z, l(3)
                        and r2.y, r2.y, l(8)
                        iadd r7.z, r2.y, r5.y
                        ieq r2.zw, r0.wwww, l(0, 0, 8, 9)
                        iadd r4.w, r2.y, r5.z
                        iadd r5.z, r4.w, r5.y
                        and r4.xyw, r4.yzyx, l(15, 7, 0, 63)
                        iadd r6.xy, r6.zwzz, r6.xyxx
                        iadd r4.xy, r4.xyxx, r6.xyxx
                        iadd r4.z, r2.y, r4.y
                        movc r4.xyz, r2.wwww, r5.wxzw, r4.wxzw
                        mov r7.x, r5.w
                        movc r3.xyz, r2.zzzz, r7.xyzx, r4.xyzx
                      endif 
                    endif 
                  endif 
                endif 
              endif 
            endif 
          endif 
        else 
          ieq r2.y, r0.w, l(1)
          if_nz r2.y
            ushr r4.x, r1.z, l(7)
            ushr r4.y, r1.y, l(19)
            ushr r4.z, r1.z, l(9)
            ushr r4.w, r1.y, l(27)
            and r3.xyzw, r4.xywz, l(31, 15, 2, 8)
            ushr r4.xz, r1.yyzy, l(4)
            ushr r4.y, r1.y, l(18)
            and r2.yzw, r4.xxyz, l(0, 16, 1, 4)
            iadd r3.yw, r2.yyyz, r3.yyyw
            and r2.y, r1.x, l(16)
            iadd r2.y, r3.z, r2.y
            iadd r2.y, r2.w, r2.y
            iadd r3.z, r2.y, r3.w
          else 
            ieq r2.y, r0.w, l(2)
            if_nz r2.y
              ushr r4.x, r1.z, l(7)
              ushr r4.y, r1.y, l(19)
              ushr r4.z, r1.x, l(21)
              ushr r4.w, r1.x, l(12)
              and r3.xyzw, r4.xywz, l(63, 15, 3, 4)
              ishl r4.x, r1.x, l(1)
              ishl r4.y, r1.y, l(4)
              ishl r4.z, r1.y, l(2)
              ishl r4.w, r1.y, l(3)
              and r4.xyzw, r4.xyzw, l(48, 32, 16, 8)
              iadd r3.yw, r3.yyyw, r4.xxxy
              iadd r2.y, r4.w, r4.z
              iadd r2.y, r3.z, r2.y
              iadd r3.z, r2.y, r3.w
            else 
              ieq r2.y, r0.w, l(3)
              if_nz r2.y
                ushr r4.x, r1.z, l(7)
                ushr r4.y, r1.y, l(19)
                ushr r4.z, r1.z, l(9)
                ushr r4.w, r1.y, l(18)
                and r3.xyzw, r4.xyzw, l(31, 15, 8, 1)
                ushr r4.x, r1.z, l(4)
                ushr r4.y, r1.y, l(27)
                and r2.yz, r4.xxyx, l(0, 4, 2, 0)
                iadd r2.y, r2.y, r3.w
                iadd r2.y, r2.z, r2.y
                iadd r3.z, r2.y, r3.z
              else 
                ieq r2.y, r0.w, l(4)
                if_nz r2.y
                  ushr r4.x, r1.z, l(7)
                  ushr r4.y, r1.y, l(19)
                  ushr r4.z, r1.z, l(9)
                  ushr r4.w, r1.z, l(5)
                  and r4.xyzw, r4.xyzw, l(15, 15, 8, 1)
                  ushr r5.xy, r1.yzyy, l(4)
                  ushr r5.z, r1.y, l(27)
                  and r2.yzw, r5.xxyz, l(0, 16, 4, 2)
                  iadd r3.xyz, r2.zywz, r4.zywz
                  iadd r3.z, r3.z, r3.x
                  mov r3.x, r4.x
                else 
                  ieq r2.y, r0.w, l(5)
                  if_nz r2.y
                    ushr r4.x, r1.z, l(7)
                    ushr r4.y, r1.y, l(19)
                    ushr r4.z, r1.z, l(9)
                    ushr r2.y, r1.y, l(18)
                    and r2.y, r2.y, l(1)
                    and r3.xyzw, r4.xyzx, l(15, 15, 8, 16)
                    iadd r2.y, r2.y, r3.w
                    ushr r2.z, r1.z, l(4)
                    and r2.z, r2.z, l(6)
                    iadd r2.y, r2.z, r2.y
                    iadd r3.z, r2.y, r3.z
                  else 
                    ieq r2.y, r0.w, l(6)
                    if_nz r2.y
                      ushr r4.x, r1.z, l(7)
                      ushr r4.y, r1.y, l(19)
                      ushr r4.z, r1.z, l(9)
                      ushr r4.w, r1.y, l(18)
                      and r3.xyzw, r4.xywz, l(31, 15, 1, 8)
                      ushr r4.xz, r1.yyzy, l(4)
                      ushr r4.y, r1.y, l(27)
                      and r2.yzw, r4.xxyz, l(0, 16, 2, 4)
                      iadd r3.yw, r2.yyyz, r3.yyyw
                      ishl r2.y, r1.y, l(2)
                      and r2.y, r2.y, l(16)
                      iadd r2.y, r2.y, r3.z
                      iadd r2.y, r2.w, r2.y
                      iadd r3.z, r2.y, r3.w
                    else 
                      ieq r2.y, r0.w, l(7)
                      if_nz r2.y
                        ushr r4.x, r1.z, l(7)
                        ushr r4.y, r1.y, l(19)
                        ushr r4.z, r1.x, l(21)
                        ushr r4.w, r1.y, l(27)
                        and r3.xyzw, r4.xywz, l(63, 15, 2, 4)
                        ushr r4.x, r1.x, l(9)
                        ushr r4.y, r1.y, l(18)
                        and r2.yz, r4.xxyx, l(0, 16, 1, 0)
                        iadd r3.yw, r2.yyyz, r3.yyyw
                        ishl r2.y, r1.y, l(2)
                        and r2.y, r2.y, l(24)
                        iadd r2.y, r2.y, r3.z
                        iadd r3.z, r2.y, r3.w
                      else 
                        ieq r2.y, r0.w, l(8)
                        if_nz r2.y
                          ushr r4.x, r1.z, l(7)
                          ushr r4.y, r1.y, l(19)
                          ushr r4.z, r1.z, l(9)
                          ushr r4.w, r1.y, l(27)
                          and r3.xyzw, r4.xywz, l(31, 15, 2, 8)
                          ishl r4.x, r1.y, l(4)
                          ishl r4.y, r1.y, l(2)
                          and r2.yz, r4.xxyx, l(0, 32, 16, 0)
                          ushr r4.xy, r1.yzyy, l(4)
                          ushr r4.z, r1.x, l(13)
                          and r4.xyz, r4.xyzx, l(16, 4, 1, 0)
                          iadd r2.yz, r2.yyzy, r4.xxyx
                          iadd r3.yw, r2.yyyz, r3.yyyw
                          iadd r2.y, r3.z, r4.z
                          iadd r3.z, r2.y, r3.w
                        else 
                          ieq r2.y, r0.w, l(9)
                          ushr r4.x, r1.z, l(7)
                          ushr r4.y, r1.y, l(19)
                          ushr r4.z, r1.z, l(9)
                          ushr r4.w, r1.z, l(4)
                          and r4.xyzw, r4.yzwx, l(15, 8, 4, 31)
                          ushr r5.x, r1.y, l(4)
                          ushr r5.y, r1.y, l(18)
                          ushr r5.z, r1.x, l(12)
                          ushr r5.w, r1.x, l(26)
                          and r5.xyzw, r5.xyzw, l(16, 1, 2, 32)
                          iadd r4.xy, r4.xyxx, r5.xyxx
                          ishl r6.x, r1.y, l(4)
                          ishl r6.y, r1.y, l(2)
                          ishl r6.z, r1.y, l(3)
                          and r6.xyz, r6.xyzx, l(32, 16, 8, 0)
                          iadd r2.z, r4.z, r6.x
                          iadd r2.z, r6.y, r2.z
                          iadd r2.z, r5.z, r2.z
                          iadd r4.z, r2.z, r4.y
                          ushr r5.x, r1.z, l(7)
                          ushr r5.y, r1.y, l(19)
                          ushr r5.z, r1.x, l(21)
                          and r5.xyz, r5.xyzx, l(63, 15, 4, 0)
                          ushr r7.x, r1.x, l(7)
                          ushr r7.y, r1.x, l(12)
                          and r1.xy, r7.xyxx, l(16, 3, 0, 0)
                          iadd r1.xy, r1.xyxx, r5.yzyy
                          iadd r5.y, r5.w, r1.x
                          iadd r1.x, r6.y, r6.x
                          iadd r1.x, r6.z, r1.x
                          iadd r5.z, r1.x, r1.y
                          movc r3.xyz, r2.yyyy, r4.wxzw, r5.xyzx
                        endif 
                      endif 
                    endif 
                  endif 
                endif 
              endif 
            endif 
          endif 
        endif 
      else 
        mov r3.xyz, l(0,0,0,0)
      endif 
    endif 
  else 
    mov r3.xyz, l(0,0,0,0)
  endif 
endif 
ult r1.x, r0.z, l(4)
if_nz r1.x
  ieq r1.x, r0.z, l(1)
  ult r1.y, l(1), r0.z
  uge r2.y, l(10), r0.w
  and r1.y, r1.y, r2.y
  or r1.x, r1.y, r1.x
  if_nz r1.x
    ieq r1.xy, r2.xxxx, l(9, 10, 0, 0)
    or r1.x, r1.y, r1.x
    ieq r1.y, r1.x, l(0)
    ieq r2.y, cb0[0].z, l(96)
    or r1.y, r1.y, r2.y
    iadd r2.yzw, l(0, -1, -1, -1), icb[r2.x + 0].yyzw
    ishl r4.x, l(1), r2.y
    ishl r4.y, l(1), r2.z
    ishl r4.z, l(1), r2.w
    and r2.yzw, r3.xxyz, r4.xxyz
    iadd r5.xyz, r4.xyzx, l(-1, -1, -1, 0)
    and r5.xyz, r3.xyzx, r5.xyzx
    iadd r4.xyz, -r4.xyzx, r5.xyzx
    movc r2.yzw, r2.yyzw, r4.xxyz, r3.xxyz
    movc r3.xyz, r1.yyyy, r2.yzwy, r3.xyzx
    if_z r1.x
      ld_structured r4.xyz, r0.y, l(0), g0.xyzx
      iadd r3.xyz, r3.xyzx, r4.xyzx
    endif 
  endif 
  ieq r1.x, cb0[0].z, l(95)
  ult r2.yz, icb[r2.x + 0].xxxx, l(0, 15, 16, 0)
  ishl r1.y, l(1), icb[r2.x + 0].x
  iadd r1.y, r1.y, l(-1)
  ieq r4.xyz, r1.yyyy, r3.xyzx
  ishl r5.xyz, r3.xyzx, l(16)
  iadd r5.xyz, r5.xyzx, l(0x00008000, 0x00008000, 0x00008000, 0)
  ushr r5.xyz, r5.xyzx, icb[r2.x + 0].x
  movc r4.xyz, r4.xyzx, l(0x0000ffff,0x0000ffff,0x0000ffff,0), r5.xyzx
  movc r4.xyz, r3.xyzx, r4.xyzx, l(0,0,0,0)
  movc r4.xyz, r2.yyyy, r4.xyzx, r3.xyzx
  ige r5.xyz, r3.xyzx, l(0, 0, 0, 0)
  imax r6.xyz, -r3.xyzx, r3.xyzx
  iadd r1.y, l(-1), icb[r2.x + 0].x
  ishl r2.x, l(1), r1.y
  iadd r2.x, r2.x, l(-1)
  ige r2.xyw, r6.xyxz, r2.xxxx
  ishl r7.xyz, r6.xyzx, l(15)
  iadd r7.xyz, r7.xyzx, l(0x00004000, 0x00004000, 0x00004000, 0)
  ushr r7.xyz, r7.xyzx, r1.y
  movc r2.xyw, r2.xyxw, l(0x00007fff,0x00007fff,0,0x00007fff), r7.xyxz
  movc r2.xyw, r6.xyxz, r2.xyxw, l(0,0,0,0)
  ineg r6.xyz, r2.xywx
  movc r2.xyw, r5.xyxz, r2.xyxw, r6.xyxz
  movc r2.xyz, r2.zzzz, r2.xywx, r3.xyzx
  movc r2.xyz, r1.xxxx, r4.xyzx, r2.xyzx
  store_structured g0.xyz, vThreadIDInGroupFlattened.x, l(0), r2.xyzx
endif 
ushr r1.x, r0.z, l(2)
and r1.y, r0.z, l(-4)
iadd r1.y, r0.z, -r1.y
udiv r2.x, null, r0.x, cb0[0].y
imad r0.x, -r2.x, cb0[0].y, r0.x
ishl r2.x, r2.x, l(2)
iadd r2.x, r1.x, r2.x
ishl r0.x, r0.x, l(2)
imad r0.x, r2.x, cb0[0].x, r0.x
iadd r0.x, r1.y, r0.x
ult r2.x, r0.x, cb0[0].w
if_nz r2.x
  ult r0.w, l(10), r0.w
  if_nz r0.w
    ieq r0.w, r1.y, l(0)
    ieq r2.x, r1.x, l(0)
    and r0.w, r0.w, r2.x
    ushr r2.x, r1.z, l(1)
    ult r2.y, r1.x, l(2)
    ishl r2.z, r1.x, l(4)
    ishl r2.w, r1.y, l(2)
    iadd r2.z, r2.w, r2.z
    ushr r2.w, r1.z, r2.z
    iadd r2.z, r2.z, l(-32)
    ushr r2.z, r1.w, r2.z
    and r2.xzw, r2.xxzw, l(7, 0, 15, 15)
    movc r2.y, r2.y, r2.w, r2.z
    movc r0.w, r0.w, r2.x, r2.y
    mov r0.w, icb[r0.w + 14].x
  else 
    ushr r2.x, r1.z, l(13)
    and r2.x, r2.x, l(31)
    ushr r2.y, icb[r2.x + 14].y, r0.z
    ishl r2.y, r2.y, l(1)
    and r2.y, r2.y, l(2)
    iadd r0.y, r0.y, r2.y
    ieq r1.xy, r1.xyxx, l(0, 0, 0, 0)
    and r1.x, r1.x, r1.y
    if_z r1.x
      ult r1.x, r0.z, l(5)
      imad r2.yz, r0.zzzz, l(0, 3, 3, 0), l(0, 17, -15, 0)
      ushr r3.x, r1.z, r2.y
      ushr r3.y, r1.w, r2.z
      uge r1.y, r0.z, icb[r2.x + 14].z
      if_nz r1.y
        ieq r1.y, r0.z, icb[r2.x + 14].z
        and r2.xy, r3.xyxx, l(3, 3, 0, 0)
        movc r2.x, r1.x, r2.x, r2.y
        imad r2.yz, r0.zzzz, l(0, 3, 3, 0), l(0, 16, -16, 0)
        ushr r4.x, r1.z, r2.y
        ushr r4.y, r1.w, r2.z
        ult r0.z, l(5), r0.z
        and r2.yz, r4.xxyx, l(0, 7, 7, 0)
        ushr r2.w, r1.z, l(31)
        ishl r1.w, r1.w, l(1)
        and r1.w, r1.w, l(6)
        iadd r1.w, r1.w, r2.w
        movc r0.z, r0.z, r2.z, r1.w
        movc r0.z, r1.x, r2.y, r0.z
        movc r0.z, r1.y, r2.x, r0.z
      else 
        and r1.yw, r3.xxxy, l(0, 7, 0, 7)
        movc r0.z, r1.x, r1.y, r1.w
      endif 
    else 
      ushr r1.x, r1.z, l(18)
      and r0.z, r1.x, l(3)
    endif 
    mov r0.w, icb[r0.z + 14].w
  endif 
  ld_structured r1.xyz, r0.y, l(0), g0.xyzx
  iadd r0.y, r0.y, l(1)
  ld_structured r2.xyz, r0.y, l(0), g0.xyzx
  ishl r3.xyz, r1.xyzx, l(6)
  iadd r1.xyz, -r1.xyzx, r2.xyzx
  imad r0.yzw, r1.xxyz, r0.wwww, r3.xxyz
  iadd r0.yzw, r0.yyzw, l(0, 32, 32, 32)
  ishr r0.yzw, r0.yyzw, l(6)
  ieq r1.x, cb0[0].z, l(95)
  imul null, r1.yzw, r0.yyzw, l(0, 31, 31, 31)
  ishr r2.xyz, r1.yzwy, l(6)
  ilt r3.xyz, r0.yzwy, l(0, 0, 0, 0)
  imul null, r0.yzw, r0.yyzw, l(0, -31, -31, -31)
  ishr r0.yzw, r0.yyzw, l(5)
  ineg r0.yzw, r0.yyzw
  ishr r1.yzw, r1.yyzw, l(5)
  movc r0.yzw, r3.xxyz, r0.yyzw, r1.yyzw
  ilt r1.yzw, r0.yyzw, l(0, 0, 0, 0)
  ineg r3.xyz, r0.yzwy
  or r3.xyz, r3.xyzx, l(0x00008000, 0x00008000, 0x00008000, 0)
  movc r0.yzw, r1.yyzw, r3.xxyz, r0.yyzw
  movc r1.xyz, r1.xxxx, r2.xyzx, r0.yzwy
  mov r1.w, l(0x00003c00)
  store_structured u0.xyzw, r0.x, l(0), r1.xyzw
endif 
ret 
// Approximately 712 instruction slots used