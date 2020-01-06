//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
// Parameters:
//
//   sampler2D sampler0;
//   sampler2D sampler1;
//
//
// Registers:
//
//   Name         Reg   Size
//   ------------ ----- ----
//   sampler0     s0       1
//   sampler1     s1       1
//

    ps_3_0
    def c0, 2, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_2d s0
    dcl_2d s1
    texld r0, v0.yxzw, s1
    mad r0.xy, r0, c0.x, v0.yxzw
    texld r0, r0, s0
    mov oC0, r0.wzyx

// approximately 4 instruction slots used (2 texture, 2 arithmetic)