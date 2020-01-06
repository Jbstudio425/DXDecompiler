//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
// Parameters:
//
//   float4 g_BoxInstance_Color;
//   float4 g_BoxInstance_Position;
//   float4x4 g_mProj;
//   float4x4 g_mView;
//   float4x4 g_mWorld;
//
//
// Registers:
//
//   Name                   Reg   Size
//   ---------------------- ----- ----
//   g_mWorld               c0       4
//   g_mView                c4       4
//   g_mProj                c8       4
//   g_BoxInstance_Position c13      1
//   g_BoxInstance_Color    c14      1
//

    vs_2_0
    def c12, 0.999970496, 0.5, 6.28318548, -3.14159274
    def c15, 32, -16, 0, 0
    def c16, -1.55009923e-006, -2.17013894e-005, 0.00260416674, 0.00026041668
    def c17, -0.020833334, -0.125, 1, 0.5
    dcl_position v0
    dcl_texcoord v1
    mov r0, c13
    mad r0.w, r0.w, c12.x, c12.y
    frc r0.w, r0.w
    mad r0.w, r0.w, c12.z, c12.w
    sincos r1.xy, r0.w, c16, c17
    mul r1.yzw, r1.xxyy, v0.xxzx
    mad r2.z, v0.z, r1.x, -r1.w
    add r2.x, r1.z, r1.y
    mov r2.y, v0.y
    mad r0.xyz, r0, c15.x, r2
    mov r0.w, v0.w
    add r0, r0, c15.yyyz
    dp4 r1.x, r0, c0
    dp4 r1.y, r0, c1
    dp4 r1.z, r0, c2
    dp4 r1.w, r0, c3
    dp4 r0.x, r1, c4
    dp4 r0.y, r1, c5
    dp4 r0.z, r1, c6
    dp4 r0.w, r1, c7
    dp4 oPos.x, r0, c8
    dp4 oPos.y, r0, c9
    dp4 oPos.z, r0, c10
    dp4 oPos.w, r0, c11
    mov oD0, c14
    mov oT0.xy, v1

// approximately 33 instruction slots used