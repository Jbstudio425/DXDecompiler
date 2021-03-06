//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Test
// {
//
//   float4 a[5];                       // Offset:    0 Size:    80
//
// }
//
// cbuffer Test
// {
//
//   float4 b[5];                       // Offset:    0 Size:    80
//
// }
//
// tbuffer Test
// {
//
//   float4 c[5];                       // Offset:    0 Size:    80
//
// }
//
// Resource bind info for TestBuffer
// {
//
//   struct Test
//   {
//       
//       float4 e[5];                   // Offset:    0
//
//   } $Element;                        // Offset:    0 Size:    80
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Test                              tbuffer      NA          NA             t0      1 
// TestBuffer                        texture  struct         r/o             t1      1 
// Test                              cbuffer      NA          NA            cb0      1 
// Test                              cbuffer      NA          NA            cb1      1 
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
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[1], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_resource_buffer (mixed,mixed,mixed,mixed) t0
dcl_resource_structured t1, 80
dcl_output o0.xyzw
dcl_temps 2
ld_indexable(buffer)(mixed,mixed,mixed,mixed) r0.xyzw, l(0, 0, 0, 0), t0.xyzw
add r1.xyzw, cb0[0].xyzw, cb1[0].xyzw
add r0.xyzw, r0.xyzw, r1.xyzw
ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r1.xyzw, l(0), l(0), t1.xyzw
add o0.xyzw, r0.xyzw, r1.xyzw
ret 
// Approximately 6 instruction slots used
