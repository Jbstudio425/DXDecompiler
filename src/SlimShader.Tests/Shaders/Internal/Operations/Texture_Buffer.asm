//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Note: shader requires additional functionality:
//       Tiled resources
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// tex                               texture  float4         buf             t0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   x           0     NONE     int   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed | skipOptimization
dcl_resource_buffer (float,float,float,float) t0
dcl_input_ps constant v0.x
dcl_output o0.xyzw
dcl_temps 3
itof r0.xyzw, l(0, 0, 0, 0)
mov r1.x, v0.x
mov r1.y, v0.x
bufinfo_indexable(buffer)(float,float,float,float) r1.z, t0.yzxw
mov r1.z, r1.z
utof r2.xyzw, r1.zzzz
add r0.xyzw, r0.xyzw, r2.xyzw
ld_indexable(buffer)(float,float,float,float) r2.xyzw, r1.xxxx, t0.xyzw
add r0.xyzw, r0.xyzw, r2.xyzw
ld_s_indexable(buffer)(float,float,float,float) r2.xyzw, r1.x, r1.xxxx, t0.xyzw
check_access_fully_mapped r1.x, r1.x
add r0.xyzw, r0.xyzw, r2.xyzw
and r2.xyzw, r1.xxxx, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
add r0.xyzw, r0.xyzw, r2.xyzw
ld_indexable(buffer)(float,float,float,float) r1.xyzw, r1.yyyy, t0.xyzw
add r0.xyzw, r0.xyzw, r1.xyzw
mov o0.xyzw, r0.xyzw
ret 
// Approximately 18 instruction slots used
