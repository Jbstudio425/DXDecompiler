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
//   uint g_nPassSize;                  // Offset:    8 Size:     4 [unused]
//   uint g_nReserved;                  // Offset:   12 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// fragmentCount                     texture    uint          2d             t0      1 
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
dcl_resource_texture2d (uint,uint,uint,uint) t0
dcl_uav_typed_buffer (uint,uint,uint,uint) u3
dcl_input vThreadGroupID.xy
dcl_temps 3
dcl_thread_group 1, 1, 1
imad r0.x, vThreadGroupID.y, cb0[0].x, vThreadGroupID.x
imax r0.z, r0.x, -r0.x
and r0.yz, r0.xxzx, l(0, 0x80000000, 1, 0)
ineg r0.w, r0.z
movc r0.y, r0.y, r0.w, r0.z
if_z r0.y
  mov r1.xy, vThreadGroupID.xyxx
  mov r1.zw, l(0,0,0,0)
  ld_indexable(texture2d)(uint,uint,uint,uint) r0.y, r1.xyzw, t0.yxzw
  store_uav_typed u3.xyzw, r0.xxxx, r0.yyyy
  iadd r0.z, r0.x, l(1)
  imul null, r0.w, cb0[0].y, cb0[0].x
  ult r0.w, r0.z, r0.w
  if_nz r0.w
    udiv r1.x, r2.x, r0.z, cb0[0].x
    mov r2.y, r1.x
    mov r2.zw, l(0,0,0,0)
    ld_indexable(texture2d)(uint,uint,uint,uint) r0.w, r2.xyzw, t0.yzwx
    iadd r0.y, r0.w, r0.y
    store_uav_typed u3.xyzw, r0.zzzz, r0.yyyy
  endif 
endif 
ret 
// Approximately 23 instruction slots used