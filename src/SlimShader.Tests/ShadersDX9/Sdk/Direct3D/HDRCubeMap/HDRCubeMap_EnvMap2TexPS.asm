//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
// Parameters:
//
//   float g_fReflectivity;
//   samplerCUBE g_samCubeMap;
//   samplerCUBE g_samCubeMap2;
//
//
// Registers:
//
//   Name            Reg   Size
//   --------------- ----- ----
//   g_fReflectivity c0       1
//   g_samCubeMap    s0       1
//   g_samCubeMap2   s1       1
//

    ps_2_0
    dcl t0.xyz
    dcl_cube s0
    dcl_cube s1
    texld r0, t0, s0
    texld r1, t0, s1
    mov r0.z, r1.x
    mov r0.w, r1.y
    mul r0, r0, c0.x
    mov oC0, r0

// approximately 6 instruction slots used (2 texture, 4 arithmetic)
