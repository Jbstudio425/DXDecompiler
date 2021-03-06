
//listing of all techniques and passes with embedded asm listings 

technique Color
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
            //   float4x4 g_mWorldViewProjection;
            //
            //
            // Registers:
            //
            //   Name                   Reg   Size
            //   ---------------------- ----- ----
            //   g_mWorldViewProjection c0       4
            //
            
                vs_2_0
                def c4, 1, 0, 0, 0
                dcl_position v0
                dcl_color v1
                mad r0, v0.xyzx, c4.xxxy, c4.yyyx
                dp4 oPos.x, r0, c0
                dp4 oPos.y, r0, c1
                dp4 oPos.z, r0, c2
                dp4 oPos.w, r0, c3
                mov oD0, v1
                mov oT0.xy, c4.y
            
            // approximately 7 instruction slots used
            };

        pixelshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
                ps_2_0
                dcl v0
                mov oC0, v0
            
            // approximately 1 instruction slot used
            };
    }
}

technique TexturePoint
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
            //   float4x4 g_mWorldViewProjection;
            //
            //
            // Registers:
            //
            //   Name                   Reg   Size
            //   ---------------------- ----- ----
            //   g_mWorldViewProjection c0       4
            //
            
                vs_2_0
                def c4, 1, 0, 0, 0
                dcl_position v0
                dcl_texcoord v1
                mad r0, v0.xyzx, c4.xxxy, c4.yyyx
                dp4 oPos.x, r0, c0
                dp4 oPos.y, r0, c1
                dp4 oPos.z, r0, c2
                dp4 oPos.w, r0, c3
                mov oD0, c4.y
                mov oT0.xy, v1
            
            // approximately 7 instruction slots used
            };

        pixelshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   sampler2D PointSampler;
            //
            //
            // Registers:
            //
            //   Name         Reg   Size
            //   ------------ ----- ----
            //   PointSampler s0       1
            //
            
                ps_2_0
                dcl t0.xy
                dcl_2d s0
                texld r0, t0, s0
                mov oC0, r0
            
            // approximately 2 instruction slots used (1 texture, 1 arithmetic)
            };
    }
}

technique TexturePointCentroid
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
            //   float4x4 g_mWorldViewProjection;
            //
            //
            // Registers:
            //
            //   Name                   Reg   Size
            //   ---------------------- ----- ----
            //   g_mWorldViewProjection c0       4
            //
            
                vs_2_0
                def c4, 1, 0, 0, 0
                dcl_position v0
                dcl_texcoord v1
                mad r0, v0.xyzx, c4.xxxy, c4.yyyx
                dp4 oPos.x, r0, c0
                dp4 oPos.y, r0, c1
                dp4 oPos.z, r0, c2
                dp4 oPos.w, r0, c3
                mov oD0, c4.y
                mov oT0.xy, v1
            
            // approximately 7 instruction slots used
            };

        pixelshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   sampler2D PointSampler;
            //
            //
            // Registers:
            //
            //   Name         Reg   Size
            //   ------------ ----- ----
            //   PointSampler s0       1
            //
            
                ps_2_0
                dcl_centroid t0.xy
                dcl_2d s0
                texld r0, t0, s0
                mov oC0, r0
            
            // approximately 2 instruction slots used (1 texture, 1 arithmetic)
            };
    }
}

technique TextureLinear
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
            //   float4x4 g_mWorldViewProjection;
            //
            //
            // Registers:
            //
            //   Name                   Reg   Size
            //   ---------------------- ----- ----
            //   g_mWorldViewProjection c0       4
            //
            
                vs_2_0
                def c4, 1, 0, 0, 0
                dcl_position v0
                dcl_texcoord v1
                mad r0, v0.xyzx, c4.xxxy, c4.yyyx
                dp4 oPos.x, r0, c0
                dp4 oPos.y, r0, c1
                dp4 oPos.z, r0, c2
                dp4 oPos.w, r0, c3
                mov oD0, c4.y
                mov oT0.xy, v1
            
            // approximately 7 instruction slots used
            };

        pixelshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   sampler2D LinearSampler;
            //
            //
            // Registers:
            //
            //   Name          Reg   Size
            //   ------------- ----- ----
            //   LinearSampler s0       1
            //
            
                ps_2_0
                dcl t0.xy
                dcl_2d s0
                texld r0, t0, s0
                mov oC0, r0
            
            // approximately 2 instruction slots used (1 texture, 1 arithmetic)
            };
    }
}

technique TextureLinearCentroid
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
            //   float4x4 g_mWorldViewProjection;
            //
            //
            // Registers:
            //
            //   Name                   Reg   Size
            //   ---------------------- ----- ----
            //   g_mWorldViewProjection c0       4
            //
            
                vs_2_0
                def c4, 1, 0, 0, 0
                dcl_position v0
                dcl_texcoord v1
                mad r0, v0.xyzx, c4.xxxy, c4.yyyx
                dp4 oPos.x, r0, c0
                dp4 oPos.y, r0, c1
                dp4 oPos.z, r0, c2
                dp4 oPos.w, r0, c3
                mov oD0, c4.y
                mov oT0.xy, v1
            
            // approximately 7 instruction slots used
            };

        pixelshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   sampler2D LinearSampler;
            //
            //
            // Registers:
            //
            //   Name          Reg   Size
            //   ------------- ----- ----
            //   LinearSampler s0       1
            //
            
                ps_2_0
                dcl_centroid t0.xy
                dcl_2d s0
                texld r0, t0, s0
                mov oC0, r0
            
            // approximately 2 instruction slots used (1 texture, 1 arithmetic)
            };
    }
}

technique TextureAnisotropic
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
            //   float4x4 g_mWorldViewProjection;
            //
            //
            // Registers:
            //
            //   Name                   Reg   Size
            //   ---------------------- ----- ----
            //   g_mWorldViewProjection c0       4
            //
            
                vs_2_0
                def c4, 1, 0, 0, 0
                dcl_position v0
                dcl_texcoord v1
                mad r0, v0.xyzx, c4.xxxy, c4.yyyx
                dp4 oPos.x, r0, c0
                dp4 oPos.y, r0, c1
                dp4 oPos.z, r0, c2
                dp4 oPos.w, r0, c3
                mov oD0, c4.y
                mov oT0.xy, v1
            
            // approximately 7 instruction slots used
            };

        pixelshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   sampler2D AnisotropicSampler;
            //
            //
            // Registers:
            //
            //   Name               Reg   Size
            //   ------------------ ----- ----
            //   AnisotropicSampler s0       1
            //
            
                ps_2_0
                dcl t0.xy
                dcl_2d s0
                texld r0, t0, s0
                mov oC0, r0
            
            // approximately 2 instruction slots used (1 texture, 1 arithmetic)
            };
    }
}

technique TextureAnisotropicCentroid
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
            //   float4x4 g_mWorldViewProjection;
            //
            //
            // Registers:
            //
            //   Name                   Reg   Size
            //   ---------------------- ----- ----
            //   g_mWorldViewProjection c0       4
            //
            
                vs_2_0
                def c4, 1, 0, 0, 0
                dcl_position v0
                dcl_texcoord v1
                mad r0, v0.xyzx, c4.xxxy, c4.yyyx
                dp4 oPos.x, r0, c0
                dp4 oPos.y, r0, c1
                dp4 oPos.z, r0, c2
                dp4 oPos.w, r0, c3
                mov oD0, c4.y
                mov oT0.xy, v1
            
            // approximately 7 instruction slots used
            };

        pixelshader = 
            asm {
            //
            // Generated by Microsoft (R) HLSL Shader Compiler 10.1
            //
            // Parameters:
            //
            //   sampler2D AnisotropicSampler;
            //
            //
            // Registers:
            //
            //   Name               Reg   Size
            //   ------------------ ----- ----
            //   AnisotropicSampler s0       1
            //
            
                ps_2_0
                dcl_centroid t0.xy
                dcl_2d s0
                texld r0, t0, s0
                mov oC0, r0
            
            // approximately 2 instruction slots used (1 texture, 1 arithmetic)
            };
    }
}

