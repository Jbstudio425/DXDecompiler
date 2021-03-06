vertexshader Test1VS = 
asm {
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
// Parameters:
//
//   float4 Diffuse;
//   float4x4 g_mProj;
//   float4x4 g_mView;
//   float4x4 g_mWorld;
//   float4 g_vLight;
//   float4 g_vLightColor;
//
//
// Registers:
//
//   Name          Reg   Size
//   ------------- ----- ----
//   g_mWorld      c0       4
//   g_mView       c4       4
//   g_mProj       c8       4
//   g_vLight      c12      1
//   g_vLightColor c13      1
//   Diffuse       c14      1
//

    vs_2_0
    def c15, 0, 1, 0, 0
    dcl_position v0
    dcl_normal v1
    dcl_texcoord v2
    dp4 r0.x, v0, c0
    dp4 r0.y, v0, c1
    dp4 r0.z, v0, c2
    dp4 r0.w, v0, c3
    dp4 r1.w, r0, c7
    dp4 r1.x, r0, c4
    dp4 r1.y, r0, c5
    dp4 r1.z, r0, c6
    dp4 oPos.x, r1, c8
    dp4 oPos.y, r1, c9
    dp4 oPos.z, r1, c10
    dp4 oPos.w, r1, c11
    add r0.xyz, -r1, c12
    nrm r1.xyz, r0
    dp3 r0.x, v1, c0
    dp3 r0.y, v1, c1
    dp3 r0.z, v1, c2
    dp3 r2.x, r0, c4
    dp3 r2.y, r0, c5
    dp3 r2.z, r0, c6
    nrm r0.xyz, r2
    dp3 r0.x, r0, r1
    max r0.x, r0.x, c15.x
    min r0.x, r0.x, c15.y
    mul r0, r0.x, c14
    mul oD0, r0, c13
    mov oT0.xy, v2

// approximately 31 instruction slots used
};

pixelshader Test2PS = 
asm {
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
// Parameters:
//
//   sampler2D g_samScene;
//
//
// Registers:
//
//   Name         Reg   Size
//   ------------ ----- ----
//   g_samScene   s0       1
//

    ps_2_0
    dcl v0
    dcl t0.xy
    dcl_2d s0
    texld r0, t0, s0
    mul r0, r0, v0
    mov oC0, r0

// approximately 3 instruction slots used (1 texture, 2 arithmetic)
};

vertexshader Test3VS = 
asm {
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
// Parameters:
//
//   float4 Diffuse;
//   float4x4 g_mProj;
//   float4x4 g_mView;
//   float4x4 g_mWorld;
//   float4 g_vLight;
//   float4 g_vLightColor;
//
//
// Registers:
//
//   Name          Reg   Size
//   ------------- ----- ----
//   g_mWorld      c0       4
//   g_mView       c4       4
//   g_mProj       c8       4
//   g_vLight      c12      1
//   g_vLightColor c13      1
//   Diffuse       c14      1
//

    vs_2_0
    def c15, 0, 1, 0, 0
    dcl_position v0
    dcl_normal v1
    dcl_texcoord v2
    dp4 r0.x, v0, c0
    dp4 r0.y, v0, c1
    dp4 r0.z, v0, c2
    dp4 r0.w, v0, c3
    dp4 r1.w, r0, c7
    dp4 r1.x, r0, c4
    dp4 r1.y, r0, c5
    dp4 r1.z, r0, c6
    dp4 oPos.x, r1, c8
    dp4 oPos.y, r1, c9
    dp4 oPos.z, r1, c10
    dp4 oPos.w, r1, c11
    add r0.xyz, -r1, c12
    nrm r1.xyz, r0
    dp3 r0.x, v1, c0
    dp3 r0.y, v1, c1
    dp3 r0.z, v1, c2
    dp3 r2.x, r0, c4
    dp3 r2.y, r0, c5
    dp3 r2.z, r0, c6
    nrm r0.xyz, r2
    dp3 r0.x, r0, r1
    max r0.x, r0.x, c15.x
    min r0.x, r0.x, c15.y
    mul r0, r0.x, c14
    mul oD0, r0, c13
    mov oT0.xy, v2

// approximately 31 instruction slots used
};

pixelshader Test4PS = 
asm {
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
// Parameters:
//
//   sampler2D g_samScene;
//
//
// Registers:
//
//   Name         Reg   Size
//   ------------ ----- ----
//   g_samScene   s0       1
//

    ps_2_0
    dcl v0
    dcl t0.xy
    dcl_2d s0
    texld r0, t0, s0
    mul r0, r0, v0
    mov oC0, r0

// approximately 3 instruction slots used (1 texture, 2 arithmetic)
};


//listing of all techniques and passes with embedded asm listings 

technique RenderScene
{
    pass P0
    {
        vertexshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   float4 Diffuse;
            //   float4x4 g_mProj;
            //   float4x4 g_mView;
            //   float4x4 g_mWorld;
            //   float4 g_vLight;
            //   float4 g_vLightColor;
            //
            //
            // Registers:
            //
            //   Name          Reg   Size
            //   ------------- ----- ----
            //   g_mWorld      c0       4
            //   g_mView       c4       4
            //   g_mProj       c8       4
            //   g_vLight      c12      1
            //   g_vLightColor c13      1
            //   Diffuse       c14      1
            //
            
                vs_2_0
                def c15, 0, 1, 0, 0
                dcl_position v0
                dcl_normal v1
                dcl_texcoord v2
                dp4 r0.x, v0, c0
                dp4 r0.y, v0, c1
                dp4 r0.z, v0, c2
                dp4 r0.w, v0, c3
                dp4 r1.w, r0, c7
                dp4 r1.x, r0, c4
                dp4 r1.y, r0, c5
                dp4 r1.z, r0, c6
                dp4 oPos.x, r1, c8
                dp4 oPos.y, r1, c9
                dp4 oPos.z, r1, c10
                dp4 oPos.w, r1, c11
                add r0.xyz, -r1, c12
                nrm r1.xyz, r0
                dp3 r0.x, v1, c0
                dp3 r0.y, v1, c1
                dp3 r0.z, v1, c2
                dp3 r2.x, r0, c4
                dp3 r2.y, r0, c5
                dp3 r2.z, r0, c6
                nrm r0.xyz, r2
                dp3 r0.x, r0, r1
                max r0.x, r0.x, c15.x
                min r0.x, r0.x, c15.y
                mul r0, r0.x, c14
                mul oD0, r0, c13
                mov oT0.xy, v2
            
            // approximately 31 instruction slots used
            };

        pixelshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   sampler2D g_samScene;
            //
            //
            // Registers:
            //
            //   Name         Reg   Size
            //   ------------ ----- ----
            //   g_samScene   s0       1
            //
            
                ps_2_0
                dcl v0
                dcl t0.xy
                dcl_2d s0
                texld r0, t0, s0
                mul r0, r0, v0
                mov oC0, r0
            
            // approximately 3 instruction slots used (1 texture, 2 arithmetic)
            };
    }
    pass P1
    {
        vertexshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   float4 Diffuse;
            //   float4x4 g_mProj;
            //   float4x4 g_mView;
            //   float4x4 g_mWorld;
            //   float4 g_vLight;
            //   float4 g_vLightColor;
            //
            //
            // Registers:
            //
            //   Name          Reg   Size
            //   ------------- ----- ----
            //   g_mWorld      c0       4
            //   g_mView       c4       4
            //   g_mProj       c8       4
            //   g_vLight      c12      1
            //   g_vLightColor c13      1
            //   Diffuse       c14      1
            //
            
                vs_2_0
                def c15, 0, 1, 0, 0
                dcl_position v0
                dcl_normal v1
                dcl_texcoord v2
                dp4 r0.x, v0, c0
                dp4 r0.y, v0, c1
                dp4 r0.z, v0, c2
                dp4 r0.w, v0, c3
                dp4 r1.w, r0, c7
                dp4 r1.x, r0, c4
                dp4 r1.y, r0, c5
                dp4 r1.z, r0, c6
                dp4 oPos.x, r1, c8
                dp4 oPos.y, r1, c9
                dp4 oPos.z, r1, c10
                dp4 oPos.w, r1, c11
                add r0.xyz, -r1, c12
                nrm r1.xyz, r0
                dp3 r0.x, v1, c0
                dp3 r0.y, v1, c1
                dp3 r0.z, v1, c2
                dp3 r2.x, r0, c4
                dp3 r2.y, r0, c5
                dp3 r2.z, r0, c6
                nrm r0.xyz, r2
                dp3 r0.x, r0, r1
                max r0.x, r0.x, c15.x
                min r0.x, r0.x, c15.y
                mul r0, r0.x, c14
                mul oD0, r0, c13
                mov oT0.xy, v2
            
            // approximately 31 instruction slots used
            };

        pixelshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   sampler2D g_samScene;
            //
            //
            // Registers:
            //
            //   Name         Reg   Size
            //   ------------ ----- ----
            //   g_samScene   s0       1
            //
            
                ps_2_0
                dcl v0
                dcl t0.xy
                dcl_2d s0
                texld r0, t0, s0
                mul r0, r0, v0
                mov oC0, r0
            
            // approximately 3 instruction slots used (1 texture, 2 arithmetic)
            };
    }
    pass P2
    {
        vertexshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   float4 Diffuse;
            //   float4x4 g_mProj;
            //   float4x4 g_mView;
            //   float4x4 g_mWorld;
            //   float4 g_vLight;
            //   float4 g_vLightColor;
            //
            //
            // Registers:
            //
            //   Name          Reg   Size
            //   ------------- ----- ----
            //   g_mWorld      c0       4
            //   g_mView       c4       4
            //   g_mProj       c8       4
            //   g_vLight      c12      1
            //   g_vLightColor c13      1
            //   Diffuse       c14      1
            //
            
                vs_2_0
                def c15, 0, 1, 0, 0
                dcl_position v0
                dcl_normal v1
                dcl_texcoord v2
                dp4 r0.x, v0, c0
                dp4 r0.y, v0, c1
                dp4 r0.z, v0, c2
                dp4 r0.w, v0, c3
                dp4 r1.w, r0, c7
                dp4 r1.x, r0, c4
                dp4 r1.y, r0, c5
                dp4 r1.z, r0, c6
                dp4 oPos.x, r1, c8
                dp4 oPos.y, r1, c9
                dp4 oPos.z, r1, c10
                dp4 oPos.w, r1, c11
                add r0.xyz, -r1, c12
                nrm r1.xyz, r0
                dp3 r0.x, v1, c0
                dp3 r0.y, v1, c1
                dp3 r0.z, v1, c2
                dp3 r2.x, r0, c4
                dp3 r2.y, r0, c5
                dp3 r2.z, r0, c6
                nrm r0.xyz, r2
                dp3 r0.x, r0, r1
                max r0.x, r0.x, c15.x
                min r0.x, r0.x, c15.y
                mul r0, r0.x, c14
                mul oD0, r0, c13
                mov oT0.xy, v2
            
            // approximately 31 instruction slots used
            };

        pixelshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   sampler2D g_samScene;
            //
            //
            // Registers:
            //
            //   Name         Reg   Size
            //   ------------ ----- ----
            //   g_samScene   s0       1
            //
            
                ps_2_0
                dcl v0
                dcl t0.xy
                dcl_2d s0
                texld r0, t0, s0
                mul r0, r0, v0
                mov oC0, r0
            
            // approximately 3 instruction slots used (1 texture, 2 arithmetic)
            };
    }
    pass P3
    {
        vertexshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   float4 Diffuse;
            //   float4x4 g_mProj;
            //   float4x4 g_mView;
            //   float4x4 g_mWorld;
            //   float4 g_vLight;
            //   float4 g_vLightColor;
            //
            //
            // Registers:
            //
            //   Name          Reg   Size
            //   ------------- ----- ----
            //   g_mWorld      c0       4
            //   g_mView       c4       4
            //   g_mProj       c8       4
            //   g_vLight      c12      1
            //   g_vLightColor c13      1
            //   Diffuse       c14      1
            //
            
                vs_2_0
                def c15, 0, 1, 0, 0
                dcl_position v0
                dcl_normal v1
                dcl_texcoord v2
                dp4 r0.x, v0, c0
                dp4 r0.y, v0, c1
                dp4 r0.z, v0, c2
                dp4 r0.w, v0, c3
                dp4 r1.w, r0, c7
                dp4 r1.x, r0, c4
                dp4 r1.y, r0, c5
                dp4 r1.z, r0, c6
                dp4 oPos.x, r1, c8
                dp4 oPos.y, r1, c9
                dp4 oPos.z, r1, c10
                dp4 oPos.w, r1, c11
                add r0.xyz, -r1, c12
                nrm r1.xyz, r0
                dp3 r0.x, v1, c0
                dp3 r0.y, v1, c1
                dp3 r0.z, v1, c2
                dp3 r2.x, r0, c4
                dp3 r2.y, r0, c5
                dp3 r2.z, r0, c6
                nrm r0.xyz, r2
                dp3 r0.x, r0, r1
                max r0.x, r0.x, c15.x
                min r0.x, r0.x, c15.y
                mul r0, r0.x, c14
                mul oD0, r0, c13
                mov oT0.xy, v2
            
            // approximately 31 instruction slots used
            };

        pixelshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   sampler2D g_samScene;
            //
            //
            // Registers:
            //
            //   Name         Reg   Size
            //   ------------ ----- ----
            //   g_samScene   s0       1
            //
            
                ps_2_0
                dcl v0
                dcl t0.xy
                dcl_2d s0
                texld r0, t0, s0
                mul r0, r0, v0
                mov oC0, r0
            
            // approximately 3 instruction slots used (1 texture, 2 arithmetic)
            };
    }
}

