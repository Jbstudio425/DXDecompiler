//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer cbPerObject
// {
//
//   float4x4 g_mWorld;                 // Offset:    0 Size:    64
//
// }
//
// cbuffer cbPerScene
// {
//
//   float4x4 g_mViewProj;              // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// cbPerObject                       cbuffer      NA          NA            cb0      1 
// cbPerScene                        cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
// TEXCOORD                 0   xy          2     NONE   float   xy  
// TANGENT                  0   xyz         3     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// NORMAL                   0   xyz         0     NONE   float   xyz 
// TANGENT                  0   xyz         1     NONE   float   xyz 
// TEXCOORD                 0   xy          2     NONE   float   xy  
// TEXCOORD                 1   xyzw        3     NONE   float   xyzw
// SV_POSITION              0   xyzw        4      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[4], immediateIndexed
dcl_constantbuffer CB1[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xy
dcl_input v3.xyz
dcl_output o0.xyz
dcl_output o1.xyz
dcl_output o2.xy
dcl_output o3.xyzw
dcl_output_siv o4.xyzw, position
dcl_temps 3
add r0.xyz, v1.xyzx, v1.xyzx
ge r1.xyz, v1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
mad r2.xyz, v1.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-2.000000, -2.000000, -2.000000, 0.000000)
movc r0.xyz, r1.xyzx, r2.xyzx, r0.xyzx
dp3 o0.x, r0.xyzx, cb0[0].xyzx
dp3 o0.y, r0.xyzx, cb0[1].xyzx
dp3 o0.z, r0.xyzx, cb0[2].xyzx
add r0.xyz, v3.xyzx, v3.xyzx
ge r1.xyz, v3.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
mad r2.xyz, v3.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-2.000000, -2.000000, -2.000000, 0.000000)
movc r0.xyz, r1.xyzx, r2.xyzx, r0.xyzx
dp3 o1.x, r0.xyzx, cb0[0].xyzx
dp3 o1.y, r0.xyzx, cb0[1].xyzx
dp3 o1.z, r0.xyzx, cb0[2].xyzx
mov o2.xy, v2.xyxx
dp4 r0.x, v0.xyzw, cb0[0].xyzw
dp4 r0.y, v0.xyzw, cb0[1].xyzw
dp4 r0.z, v0.xyzw, cb0[2].xyzw
dp4 r0.w, v0.xyzw, cb0[3].xyzw
mov o3.xyzw, r0.xyzw
dp4 o4.x, r0.xyzw, cb1[0].xyzw
dp4 o4.y, r0.xyzw, cb1[1].xyzw
dp4 o4.z, r0.xyzw, cb1[2].xyzw
dp4 o4.w, r0.xyzw, cb1[3].xyzw
ret 
// Approximately 25 instruction slots used
