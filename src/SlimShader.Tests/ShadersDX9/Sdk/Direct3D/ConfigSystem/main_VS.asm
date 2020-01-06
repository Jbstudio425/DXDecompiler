//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
// Parameters:
//
//   float4x4 g_mView;
//   float4x4 g_mWorldView;
//   float4x4 g_mWorldViewProj;
//   float4 g_vLightPos[4];
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   g_mWorldViewProj c0       4
//   g_vLightPos      c4       4
//   g_mView          c8       3
//   g_mWorldView     c11      3
//

    vs_3_0
    dcl_position v0
    dcl_normal v1
    dcl_texcoord v2
    dcl_position o0
    dcl_texcoord o1.xy
    dcl_texcoord1 o2.xyz
    dcl_texcoord2 o3.xyz
    dcl_texcoord3 o4.xyz
    dcl_texcoord4 o5.xyz
    dcl_texcoord5 o6.xyz
    dcl_texcoord6 o7.xyz
    dp4 o0.x, v0, c0
    dp4 o0.y, v0, c1
    dp4 o0.z, v0, c2
    dp4 o0.w, v0, c3
    dp3 r0.x, v1, c11
    dp3 r0.y, v1, c12
    dp3 r0.z, v1, c13
    dp3 r0.w, r0, r0
    rsq r0.w, r0.w
    mul o3.xyz, r0.w, r0
    mov r0, c8
    dp4 r1.x, c4, r0
    mov r2, c9
    dp4 r1.y, c4, r2
    mov r3, c10
    dp4 r1.z, c4, r3
    dp4 r4.x, v0, c11
    dp4 r4.y, v0, c12
    dp4 r4.z, v0, c13
    add r1.xyz, r1, -r4
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    mul o4.xyz, r1.w, r1
    dp4 r1.x, c5, r0
    dp4 r1.y, c5, r2
    dp4 r1.z, c5, r3
    add r1.xyz, -r4, r1
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    mul o5.xyz, r1.w, r1
    dp4 r1.x, c6, r0
    dp4 r1.y, c6, r2
    dp4 r1.z, c6, r3
    add r1.xyz, -r4, r1
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    mul o6.xyz, r1.w, r1
    dp4 r0.x, c7, r0
    dp4 r0.y, c7, r2
    dp4 r0.z, c7, r3
    add r0.xyz, -r4, r0
    mov o2.xyz, -r4
    dp3 r0.w, r0, r0
    rsq r0.w, r0.w
    mul o7.xyz, r0.w, r0
    mov o1.xy, v2

// approximately 46 instruction slots used