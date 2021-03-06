//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer CB
// {
//
//   uint g_nFrameWidth;                // Offset:    0 Size:     4
//   uint g_nFrameHeight;               // Offset:    4 Size:     4
//   uint g_nPassSize;                  // Offset:    8 Size:     4
//   uint g_nReserved;                  // Offset:   12 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// prefixSum                             UAV    uint         buf             u3      1 
// CB                                cbuffer      NA          NA            cb0      1 
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
cs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[1], immediateIndexed
dcl_uav_typed_buffer (uint,uint,uint,uint) u3
dcl_input vThreadGroupID.x
dcl_temps 2
dcl_thread_group 1, 1, 1
ushr r0.x, cb0[0].z, l(1)
imad r0.x, vThreadGroupID.x, cb0[0].z, r0.x
iadd r0.y, r0.x, l(-1)
ld_uav_typed_indexable(buffer)(uint,uint,uint,uint) r0.y, r0.yyyy, u3.yxzw
imad r0.z, vThreadGroupID.x, cb0[0].z, cb0[0].z
imul null, r0.w, cb0[0].y, cb0[0].x
mov r1.x, r0.x
loop 
  ult r1.yz, r1.xxxx, r0.zzwz
  and r1.y, r1.z, r1.y
  breakc_z r1.y
  ld_uav_typed_indexable(buffer)(uint,uint,uint,uint) r1.y, r1.xxxx, u3.yxzw
  iadd r1.y, r0.y, r1.y
  store_uav_typed u3.xyzw, r1.xxxx, r1.yyyy
  iadd r1.x, r1.x, l(1)
endloop 
ret 
// Approximately 17 instruction slots used
