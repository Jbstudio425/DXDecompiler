//
// FX Version: fx_5_0
//
// 3 local buffer(s)
//
cbuffer cbConstant
{
    float3  vLightDir = { -0.577000022, 0.577000022, -0.577000022 };// Offset:    0, size:   12
}

cbuffer cbChangesEveryFrame
{
    float4x4 World;                     // Offset:    0, size:   64
    float4x4 View;                      // Offset:   64, size:   64
    float4x4 Projection;                // Offset:  128, size:   64
    float   Time;                       // Offset:  192, size:    4
}

cbuffer cbUserChanges
{
    float   Explode;                    // Offset:    0, size:    4
}

//
// 6 local object(s)
//
Texture2D g_txDiffuse;
SamplerState samLinear
{
    Filter   = uint(MIN_MAG_MIP_LINEAR /* 21 */);
    AddressU = uint(WRAP /* 1 */);
    AddressV = uint(WRAP /* 1 */);
};
TextureCube g_txEnvMap;
SamplerState samLinearClamp
{
    Filter   = uint(MIN_MAG_MIP_LINEAR /* 21 */);
    AddressU = uint(CLAMP /* 3 */);
    AddressV = uint(CLAMP /* 3 */);
};
DepthStencilState EnableDepth
{
    DepthEnable = bool(TRUE /* 1 */);
    DepthWriteMask = uint(ALL /* 1 */);
    DepthFunc = uint(LESS_EQUAL /* 4 */);
};
BlendState NoBlending
{
    AlphaToCoverageEnable = bool(FALSE /* 0 */);
    BlendEnable[0] = bool(FALSE /* 0 */);
};

//
// 1 groups(s)
//
fxgroup
{
    //
    // 1 technique(s)
    //
    technique11 Render
    {
        pass P0
        {
            VertexShader = asm {
                //
                // Generated by Microsoft (R) HLSL Shader Compiler 10.1
                //
                //
                // Buffer Definitions: 
                //
                // cbuffer cbChangesEveryFrame
                // {
                //
                //   float4x4 World;                    // Offset:    0 Size:    64
                //   float4x4 View;                     // Offset:   64 Size:    64 [unused]
                //   float4x4 Projection;               // Offset:  128 Size:    64 [unused]
                //   float Time;                        // Offset:  192 Size:     4 [unused]
                //
                // }
                //
                //
                // Resource Bindings:
                //
                // Name                                 Type  Format         Dim      HLSL Bind  Count
                // ------------------------------ ---------- ------- ----------- -------------- ------
                // cbChangesEveryFrame               cbuffer      NA          NA            cb0      1 
                //
                //
                //
                // Input signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // POSITION                 0   xyz         0     NONE   float   xyz 
                // NORMAL                   0   xyz         1     NONE   float   xyz 
                // TEXCOORD                 0   xy          2     NONE   float   xy  
                //
                //
                // Output signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_POSITION              0   xyzw        0      POS   float   xyzw
                // TEXCOORD                 0   xyz         1     NONE   float   xyz 
                // TEXCOORD                 1   xy          2     NONE   float   xy  
                //
                vs_4_0
                dcl_constantbuffer CB0[4], immediateIndexed
                dcl_input v0.xyz
                dcl_input v1.xyz
                dcl_input v2.xy
                dcl_output_siv o0.xyzw, position
                dcl_output o1.xyz
                dcl_output o2.xy
                dcl_temps 1
                mov r0.xyz, v0.xyzx
                mov r0.w, l(1.000000)
                dp4 o0.x, r0.xyzw, cb0[0].xyzw
                dp4 o0.y, r0.xyzw, cb0[1].xyzw
                dp4 o0.z, r0.xyzw, cb0[2].xyzw
                dp4 o0.w, r0.xyzw, cb0[3].xyzw
                dp3 o1.x, v1.xyzx, cb0[0].xyzx
                dp3 o1.y, v1.xyzx, cb0[1].xyzx
                dp3 o1.z, v1.xyzx, cb0[2].xyzx
                mov o2.xy, v2.xyxx
                ret 
                // Approximately 11 instruction slots used
                            
            };
            GeometryShader = asm {
                //
                // Generated by Microsoft (R) HLSL Shader Compiler 10.1
                //
                //
                // Buffer Definitions: 
                //
                // cbuffer cbChangesEveryFrame
                // {
                //
                //   float4x4 World;                    // Offset:    0 Size:    64 [unused]
                //   float4x4 View;                     // Offset:   64 Size:    64
                //   float4x4 Projection;               // Offset:  128 Size:    64
                //   float Time;                        // Offset:  192 Size:     4 [unused]
                //
                // }
                //
                // cbuffer cbUserChanges
                // {
                //
                //   float Explode;                     // Offset:    0 Size:     4
                //
                // }
                //
                //
                // Resource Bindings:
                //
                // Name                                 Type  Format         Dim      HLSL Bind  Count
                // ------------------------------ ---------- ------- ----------- -------------- ------
                // cbChangesEveryFrame               cbuffer      NA          NA            cb0      1 
                // cbUserChanges                     cbuffer      NA          NA            cb1      1 
                //
                //
                //
                // Input signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_POSITION              0   xyzw        0      POS   float   xyzw
                // TEXCOORD                 0   xyz         1     NONE   float   xyz 
                // TEXCOORD                 1   xy          2     NONE   float   xy  
                //
                //
                // Output signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_POSITION              0   xyzw        0      POS   float   xyzw
                // TEXCOORD                 0   xyz         1     NONE   float   xyz 
                // TEXCOORD                 1   xy          2     NONE   float   xy  
                //
                gs_4_0
                dcl_constantbuffer CB0[12], immediateIndexed
                dcl_constantbuffer CB1[1], immediateIndexed
                dcl_input_siv v[3][0].xyzw, position
                dcl_input v[3][1].xyz
                dcl_input v[3][2].xy
                dcl_temps 6
                dcl_inputprimitive triangle 
                dcl_outputtopology trianglestrip 
                dcl_output_siv o0.xyzw, position
                dcl_output o1.xyz
                dcl_output o2.xy
                dcl_maxout 12
                add r0.xyz, -v[0][0].zxyz, v[1][0].zxyz
                add r1.xyz, -v[0][0].yzxy, v[2][0].yzxy
                mul r2.xyz, r0.xyzx, r1.xyzx
                mad r0.xyz, r0.zxyz, r1.yzxy, -r2.xyzx
                dp3 r0.w, r0.xyzx, r0.xyzx
                rsq r0.w, r0.w
                mul r0.xyz, r0.wwww, r0.xyzx
                mul r1.xyz, r0.xyzx, cb1[0].xxxx
                add r2.xyz, v[1][0].xyzx, v[0][0].xyzx
                add r2.xyz, r2.xyzx, v[2][0].xyzx
                add r3.xy, v[1][2].xyxx, v[0][2].xyxx
                add r3.xy, r3.xyxx, v[2][2].xyxx
                mul r3.xy, r3.xyxx, l(0.333333, 0.333333, 0.000000, 0.000000)
                add r4.xyz, r1.xyzx, r1.xyzx
                mad r2.xyz, r2.xyzx, l(0.333333, 0.333333, 0.333333, 0.000000), r4.xyzx
                mov r2.w, l(1.000000)
                dp4 r4.x, r2.xyzw, cb0[4].xyzw
                dp4 r4.y, r2.xyzw, cb0[5].xyzw
                dp4 r4.z, r2.xyzw, cb0[6].xyzw
                dp4 r4.w, r2.xyzw, cb0[7].xyzw
                dp4 r0.w, r4.xyzw, cb0[8].xyzw
                dp4 r2.x, r4.xyzw, cb0[9].xyzw
                dp4 r2.y, r4.xyzw, cb0[10].xyzw
                dp4 r2.z, r4.xyzw, cb0[11].xyzw
                mov r1.w, l(0)
                mov r2.w, l(0)
                loop 
                  ige r3.z, r2.w, l(3)
                  breakc_nz r3.z
                  add r4.xyzw, r1.xyzw, v[r2.w + 0][0].xyzw
                  dp4 r5.x, r4.xyzw, cb0[4].xyzw
                  dp4 r5.y, r4.xyzw, cb0[5].xyzw
                  dp4 r5.z, r4.xyzw, cb0[6].xyzw
                  dp4 r5.w, r4.xyzw, cb0[7].xyzw
                  dp4 r3.z, r5.xyzw, cb0[8].xyzw
                  dp4 r3.w, r5.xyzw, cb0[9].xyzw
                  dp4 r4.x, r5.xyzw, cb0[10].xyzw
                  dp4 r4.y, r5.xyzw, cb0[11].xyzw
                  mov o0.x, r3.z
                  mov o0.y, r3.w
                  mov o0.z, r4.x
                  mov o0.w, r4.y
                  mov o1.xyz, v[r2.w + 0][1].xyzx
                  mov o2.xy, v[r2.w + 0][2].xyxx
                  emit 
                  iadd r2.w, r2.w, l(1)
                  udiv null, r3.z, r2.w, l(3)
                  add r4.xyzw, r1.xyzw, v[r3.z + 0][0].xyzw
                  dp4 r5.x, r4.xyzw, cb0[4].xyzw
                  dp4 r5.y, r4.xyzw, cb0[5].xyzw
                  dp4 r5.z, r4.xyzw, cb0[6].xyzw
                  dp4 r5.w, r4.xyzw, cb0[7].xyzw
                  dp4 r3.w, r5.xyzw, cb0[8].xyzw
                  dp4 r4.x, r5.xyzw, cb0[9].xyzw
                  dp4 r4.y, r5.xyzw, cb0[10].xyzw
                  dp4 r4.z, r5.xyzw, cb0[11].xyzw
                  mov o0.x, r3.w
                  mov o0.y, r4.x
                  mov o0.z, r4.y
                  mov o0.w, r4.z
                  mov o1.xyz, v[r3.z + 0][1].xyzx
                  mov o2.xy, v[r3.z + 0][2].xyxx
                  emit 
                  mov o0.x, r0.w
                  mov o0.y, r2.x
                  mov o0.z, r2.y
                  mov o0.w, r2.z
                  mov o1.xyz, r0.xyzx
                  mov o2.xy, r3.xyxx
                  emit 
                  cut 
                endloop 
                mov r1.w, l(0)
                mov r0.x, l(2)
                loop 
                  ilt r0.y, r0.x, l(0)
                  breakc_nz r0.y
                  add r2.xyzw, r1.xyzw, v[r0.x + 0][0].xyzw
                  dp4 r3.x, r2.xyzw, cb0[4].xyzw
                  dp4 r3.y, r2.xyzw, cb0[5].xyzw
                  dp4 r3.z, r2.xyzw, cb0[6].xyzw
                  dp4 r3.w, r2.xyzw, cb0[7].xyzw
                  dp4 r0.y, r3.xyzw, cb0[8].xyzw
                  dp4 r0.z, r3.xyzw, cb0[9].xyzw
                  dp4 r0.w, r3.xyzw, cb0[10].xyzw
                  dp4 r2.x, r3.xyzw, cb0[11].xyzw
                  mov o0.x, r0.y
                  mov o0.y, r0.z
                  mov o0.z, r0.w
                  mov o0.w, r2.x
                  mov o1.xyz, -v[r0.x + 0][1].xyzx
                  mov o2.xy, v[r0.x + 0][2].xyxx
                  emit 
                  iadd r0.x, r0.x, l(-1)
                endloop 
                cut 
                ret 
                // Approximately 97 instruction slots used
                            
            };
            PixelShader = asm {
                //
                // Generated by Microsoft (R) HLSL Shader Compiler 10.1
                //
                //
                // Buffer Definitions: 
                //
                // cbuffer cbConstant
                // {
                //
                //   float3 vLightDir;                  // Offset:    0 Size:    12
                //      = 0xbf13b646 0x3f13b646 0xbf13b646 
                //
                // }
                //
                //
                // Resource Bindings:
                //
                // Name                                 Type  Format         Dim      HLSL Bind  Count
                // ------------------------------ ---------- ------- ----------- -------------- ------
                // samLinear                         sampler      NA          NA             s0      1 
                // g_txDiffuse                       texture  float4          2d             t0      1 
                // cbConstant                        cbuffer      NA          NA            cb0      1 
                //
                //
                //
                // Input signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_POSITION              0   xyzw        0      POS   float       
                // TEXCOORD                 0   xyz         1     NONE   float   xyz 
                // TEXCOORD                 1   xy          2     NONE   float   xy  
                //
                //
                // Output signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_Target                0   xyzw        0   TARGET   float   xyzw
                //
                ps_4_0
                dcl_constantbuffer CB0[1], immediateIndexed
                dcl_sampler s0, mode_default
                dcl_resource_texture2d (float,float,float,float) t0
                dcl_input_ps linear v1.xyz
                dcl_input_ps linear v2.xy
                dcl_output o0.xyzw
                dcl_temps 2
                dp3_sat r0.x, v1.xyzx, cb0[0].xyzx
                sample r1.xyzw, v2.xyxx, t0.xyzw, s0
                mul o0.xyz, r0.xxxx, r1.xyzx
                mov o0.w, l(1.000000)
                ret 
                // Approximately 5 instruction slots used
                            
            };
            AB_BlendFactor = float4(0, 0, 0, 0);
            AB_SampleMask = uint(0xffffffff);
            BlendState = NoBlending;
            DS_StencilRef = uint(0);
            DepthStencilState = EnableDepth;
        }

    }

}

