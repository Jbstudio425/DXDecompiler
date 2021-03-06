//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer cbMain
// {
//
//   float4x4 g_mWorld;                 // Offset:    0 Size:    64 [unused]
//   float4x4 g_mView;                  // Offset:   64 Size:    64 [unused]
//   float4x4 g_mProjection;            // Offset:  128 Size:    64 [unused]
//   float4x4 g_mWorldViewProjection;   // Offset:  192 Size:    64 [unused]
//   float4x4 g_mViewProjection;        // Offset:  256 Size:    64
//   float4x4 g_mInvView;               // Offset:  320 Size:    64
//   float4 g_vScreenResolution;        // Offset:  384 Size:    16 [unused]
//   float4 g_vMeshColor;               // Offset:  400 Size:    16 [unused]
//   float4 g_vTessellationFactor;      // Offset:  416 Size:    16 [unused]
//   float4 g_vDetailTessellationHeightScale;// Offset:  432 Size:    16 [unused]
//   float4 g_vGridSize;                // Offset:  448 Size:    16 [unused]
//   float4 g_vDebugColorMultiply;      // Offset:  464 Size:    16 [unused]
//   float4 g_vDebugColorAdd;           // Offset:  480 Size:    16 [unused]
//   float4 g_vFrustumPlaneEquation[4]; // Offset:  496 Size:    64 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// cbMain                            cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
gs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[23], immediateIndexed
dcl_input v[1][0].xyzw
dcl_temps 2
dcl_inputprimitive point 
dcl_stream m0
dcl_outputtopology trianglestrip 
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
dcl_maxout 4
dp2 r0.x, l(-5.000000, 5.000000, 0.000000, 0.000000), cb0[20].xyxx
dp2 r0.y, l(-5.000000, 5.000000, 0.000000, 0.000000), cb0[21].xyxx
dp2 r0.z, l(-5.000000, 5.000000, 0.000000, 0.000000), cb0[22].xyxx
add r0.xyz, r0.xyzx, v[0][0].xyzx
mov r0.w, l(1.000000)
dp4 r1.x, r0.xyzw, cb0[16].xyzw
mov o0.x, r1.x
dp4 r1.x, r0.xyzw, cb0[17].xyzw
mov o0.y, r1.x
dp4 r1.x, r0.xyzw, cb0[18].xyzw
dp4 r0.x, r0.xyzw, cb0[19].xyzw
mov o0.z, r1.x
mov o0.w, r0.x
mov o1.xy, l(0,1.000000,0,0)
emit_stream m0
dp2 r0.x, l(5.000000, 5.000000, 0.000000, 0.000000), cb0[20].xyxx
dp2 r0.y, l(5.000000, 5.000000, 0.000000, 0.000000), cb0[21].xyxx
dp2 r0.z, l(5.000000, 5.000000, 0.000000, 0.000000), cb0[22].xyxx
add r0.xyz, r0.xyzx, v[0][0].xyzx
mov r0.w, l(1.000000)
dp4 r1.x, r0.xyzw, cb0[16].xyzw
mov o0.x, r1.x
dp4 r1.x, r0.xyzw, cb0[17].xyzw
mov o0.y, r1.x
dp4 r1.x, r0.xyzw, cb0[18].xyzw
dp4 r0.x, r0.xyzw, cb0[19].xyzw
mov o0.z, r1.x
mov o0.w, r0.x
mov o1.xy, l(1.000000,1.000000,0,0)
emit_stream m0
dp2 r0.x, l(-5.000000, -5.000000, 0.000000, 0.000000), cb0[20].xyxx
dp2 r0.y, l(-5.000000, -5.000000, 0.000000, 0.000000), cb0[21].xyxx
dp2 r0.z, l(-5.000000, -5.000000, 0.000000, 0.000000), cb0[22].xyxx
add r0.xyz, r0.xyzx, v[0][0].xyzx
mov r0.w, l(1.000000)
dp4 r1.x, r0.xyzw, cb0[16].xyzw
mov o0.x, r1.x
dp4 r1.x, r0.xyzw, cb0[17].xyzw
mov o0.y, r1.x
dp4 r1.x, r0.xyzw, cb0[18].xyzw
dp4 r0.x, r0.xyzw, cb0[19].xyzw
mov o0.z, r1.x
mov o0.w, r0.x
mov o1.xy, l(0,0,0,0)
emit_stream m0
dp2 r0.x, l(5.000000, -5.000000, 0.000000, 0.000000), cb0[20].xyxx
dp2 r0.y, l(5.000000, -5.000000, 0.000000, 0.000000), cb0[21].xyxx
dp2 r0.z, l(5.000000, -5.000000, 0.000000, 0.000000), cb0[22].xyxx
add r0.xyz, r0.xyzx, v[0][0].xyzx
mov r0.w, l(1.000000)
dp4 r1.x, r0.xyzw, cb0[16].xyzw
mov o0.x, r1.x
dp4 r1.x, r0.xyzw, cb0[17].xyzw
mov o0.y, r1.x
dp4 r1.x, r0.xyzw, cb0[18].xyzw
dp4 r0.x, r0.xyzw, cb0[19].xyzw
mov o0.z, r1.x
mov o0.w, r0.x
mov o1.xy, l(1.000000,0,0,0)
emit_stream m0
cut_stream m0
ret 
// Approximately 62 instruction slots used
