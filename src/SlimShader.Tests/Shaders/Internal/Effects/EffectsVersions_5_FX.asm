//
// FX Version: fx_5_0
//
// 1 local buffer(s)
//
cbuffer $Globals
{
    float4  g_MaterialAmbientColor;     // Offset:    0, size:   16
    float4  g_MaterialDiffuseColor;     // Offset:   16, size:   16
    int     g_nNumLights;               // Offset:   32, size:    4
    float3  g_LightDir[3];              // Offset:   48, size:   44
    float4  g_LightDiffuse[3];          // Offset:   96, size:   48
    float4  g_LightAmbient;             // Offset:  144, size:   16
    float   g_fTime;                    // Offset:  160, size:    4
    float4x4 g_mWorld;                  // Offset:  176, size:   64
    float4x4 g_mWorldViewProjection;    // Offset:  240, size:   64
}

//
// 3 local object(s)
//
Texture2D g_MeshTexture;
DepthStencilState EnableDepth
{
    DepthEnable = bool(TRUE /* 1 */);
    DepthWriteMask = uint(ALL /* 1 */);
    DepthFunc = uint(LESS_EQUAL /* 4 */);
};
SamplerState MeshTextureSampler
{
    Filter   = uint(MIN_MAG_MIP_LINEAR /* 21 */);
    AddressU = uint(WRAP /* 1 */);
    AddressV = uint(WRAP /* 1 */);
};

//
// 1 groups(s)
//
fxgroup
{
    //
    // 4 technique(s)
    //
    technique11 RenderScene_Level_9_1
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
                // cbuffer $Globals
                // {
                //
                //   float4 g_MaterialAmbientColor;     // Offset:    0 Size:    16
                //   float4 g_MaterialDiffuseColor;     // Offset:   16 Size:    16
                //   int g_nNumLights;                  // Offset:   32 Size:     4 [unused]
                //   float3 g_LightDir[3];              // Offset:   48 Size:    44
                //   float4 g_LightDiffuse[3];          // Offset:   96 Size:    48
                //   float4 g_LightAmbient;             // Offset:  144 Size:    16
                //   float g_fTime;                     // Offset:  160 Size:     4
                //   float4x4 g_mWorld;                 // Offset:  176 Size:    64
                //   float4x4 g_mWorldViewProjection;   // Offset:  240 Size:    64
                //
                // }
                //
                //
                // Resource Bindings:
                //
                // Name                                 Type  Format         Dim      HLSL Bind  Count
                // ------------------------------ ---------- ------- ----------- -------------- ------
                // $Globals                          cbuffer      NA          NA            cb0      1 
                //
                //
                //
                // Input signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // POSITION                 0   xyzw        0     NONE   float   xyzw
                // NORMAL                   0   xyz         1     NONE   float   xyz 
                // TEXCOORD                 0   xy          2     NONE   float   xy  
                //
                //
                // Output signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_POSITION              0   xyzw        0      POS   float   xyzw
                // COLOR                    0   xyzw        1     NONE   float   xyzw
                // TEXCOORD                 0   xy          2     NONE   float   xy  
                //
                //
                // Constant buffer to DX9 shader constant mappings:
                //
                // Target Reg Buffer  Start Reg # of Regs        Data Conversion
                // ---------- ------- --------- --------- ----------------------
                // c1         cb0             0         2  ( FLT, FLT, FLT, FLT)
                // c3         cb0             3         1  ( FLT, FLT, FLT, FLT)
                // c4         cb0             6         1  ( FLT, FLT, FLT, FLT)
                // c5         cb0             9         5  ( FLT, FLT, FLT, FLT)
                // c10        cb0            15         4  ( FLT, FLT, FLT, FLT)
                //
                //
                // Runtime generated constant mappings:
                //
                // Target Reg                               Constant Description
                // ---------- --------------------------------------------------
                // c0                              Vertex Shader position offset
                //
                //
                // Level9 shader bytecode:
                //
                    vs_2_0
                    def c14, 5.5, 0.159154937, 0.5, 5
                    def c15, 6.28318548, -3.14159274, 0, 0
                    def c16, -1.55009923e-006, -2.17013894e-005, 0.00260416674, 0.00026041668
                    def c17, -0.020833334, -0.125, 1, 0.5
                    dcl_texcoord v0
                    dcl_texcoord1 v1
                    dcl_texcoord2 v2
                    mov r0.x, c14.x
                    add r0.x, r0.x, c6.x
                    mad r0.x, r0.x, c14.y, c14.z
                    frc r0.x, r0.x
                    mad r0.x, r0.x, c15.x, c15.y
                    sincos r1.y, r0.x, c16, c17
                    add r0.x, r1.y, c14.z
                    mul r0.xyz, r0.x, v1
                    mul r0.xyz, r0, c14.w
                    mov r0.w, c15.z
                    add r0, r0, v0
                    dp4 oPos.z, r0, c12
                    dp3 r1.x, v1, c7
                    dp3 r1.y, v1, c8
                    dp3 r1.z, v1, c9
                    nrm r2.xyz, r1
                    dp3 r1.x, r2, c3
                    max r1.x, r1.x, c15.z
                    mul r1.xyz, r1.x, c4
                    mov r2.xyz, c1
                    mul r2.xyz, r2, c5
                    mad oT0.xyz, c2, r1, r2
                    dp4 r1.x, r0, c10
                    dp4 r1.y, r0, c11
                    dp4 r0.x, r0, c13
                    mad oPos.xy, r0.x, c0, r1
                    mov oPos.w, r0.x
                    mov oT0.w, c2.w
                    mov oT1.xy, v2
                
                // approximately 38 instruction slots used
                vs_4_0
                dcl_constantbuffer CB0[19], immediateIndexed
                dcl_input v0.xyzw
                dcl_input v1.xyz
                dcl_input v2.xy
                dcl_output_siv o0.xyzw, position
                dcl_output o1.xyzw
                dcl_output o2.xy
                dcl_temps 2
                add r0.x, cb0[10].x, l(5.500000)
                sincos r0.x, null, r0.x
                add r0.x, r0.x, l(0.500000)
                mul r0.xyz, r0.xxxx, v1.xyzx
                mul r0.xyz, r0.xyzx, l(5.000000, 5.000000, 5.000000, 0.000000)
                mov r0.w, l(0)
                add r0.xyzw, r0.xyzw, v0.xyzw
                dp4 o0.x, r0.xyzw, cb0[15].xyzw
                dp4 o0.y, r0.xyzw, cb0[16].xyzw
                dp4 o0.z, r0.xyzw, cb0[17].xyzw
                dp4 o0.w, r0.xyzw, cb0[18].xyzw
                dp3 r0.x, v1.xyzx, cb0[11].xyzx
                dp3 r0.y, v1.xyzx, cb0[12].xyzx
                dp3 r0.z, v1.xyzx, cb0[13].xyzx
                dp3 r0.w, r0.xyzx, r0.xyzx
                rsq r0.w, r0.w
                mul r0.xyz, r0.wwww, r0.xyzx
                dp3 r0.x, r0.xyzx, cb0[3].xyzx
                max r0.x, r0.x, l(0.000000)
                mul r0.xyz, r0.xxxx, cb0[6].xyzx
                mul r1.xyz, cb0[0].xyzx, cb0[9].xyzx
                mad o1.xyz, cb0[1].xyzx, r0.xyzx, r1.xyzx
                mov o1.w, cb0[1].w
                mov o2.xy, v2.xyxx
                ret 
                // Approximately 25 instruction slots used
                            
            };
            GeometryShader = NULL;
            PixelShader = asm {
                //
                // Generated by Microsoft (R) HLSL Shader Compiler 10.1
                //
                //
                // Resource Bindings:
                //
                // Name                                 Type  Format         Dim      HLSL Bind  Count
                // ------------------------------ ---------- ------- ----------- -------------- ------
                // MeshTextureSampler                sampler      NA          NA             s0      1 
                // g_MeshTexture                     texture  float4          2d             t0      1 
                //
                //
                //
                // Input signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_POSITION              0   xyzw        0      POS   float       
                // COLOR                    0   xyzw        1     NONE   float   xyzw
                // TEXCOORD                 0   xy          2     NONE   float   xy  
                //
                //
                // Output signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_Target                0   xyzw        0   TARGET   float   xyzw
                //
                //
                // Sampler/Resource to DX9 shader sampler mappings:
                //
                // Target Sampler Source Sampler  Source Resource
                // -------------- --------------- ----------------
                // s0             s0              t0               
                //
                //
                // Level9 shader bytecode:
                //
                    ps_2_0
                    dcl t0
                    dcl t1.xy
                    dcl_2d s0
                    texld r0, t1, s0
                    mul r0, r0, t0
                    mov oC0, r0
                
                // approximately 3 instruction slots used (1 texture, 2 arithmetic)
                ps_4_0
                dcl_sampler s0, mode_default
                dcl_resource_texture2d (float,float,float,float) t0
                dcl_input_ps linear v1.xyzw
                dcl_input_ps linear v2.xy
                dcl_output o0.xyzw
                dcl_temps 1
                sample r0.xyzw, v2.xyxx, t0.xyzw, s0
                mul o0.xyzw, r0.xyzw, v1.xyzw
                ret 
                // Approximately 3 instruction slots used
                            
            };
            DS_StencilRef = uint(0);
            DepthStencilState = EnableDepth;
        }

    }

    technique11 RenderScene_4_10
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
                // cbuffer $Globals
                // {
                //
                //   float4 g_MaterialAmbientColor;     // Offset:    0 Size:    16
                //   float4 g_MaterialDiffuseColor;     // Offset:   16 Size:    16
                //   int g_nNumLights;                  // Offset:   32 Size:     4 [unused]
                //   float3 g_LightDir[3];              // Offset:   48 Size:    44
                //   float4 g_LightDiffuse[3];          // Offset:   96 Size:    48
                //   float4 g_LightAmbient;             // Offset:  144 Size:    16
                //   float g_fTime;                     // Offset:  160 Size:     4
                //   float4x4 g_mWorld;                 // Offset:  176 Size:    64
                //   float4x4 g_mWorldViewProjection;   // Offset:  240 Size:    64
                //
                // }
                //
                //
                // Resource Bindings:
                //
                // Name                                 Type  Format         Dim      HLSL Bind  Count
                // ------------------------------ ---------- ------- ----------- -------------- ------
                // $Globals                          cbuffer      NA          NA            cb0      1 
                //
                //
                //
                // Input signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // POSITION                 0   xyzw        0     NONE   float   xyzw
                // NORMAL                   0   xyz         1     NONE   float   xyz 
                // TEXCOORD                 0   xy          2     NONE   float   xy  
                //
                //
                // Output signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_POSITION              0   xyzw        0      POS   float   xyzw
                // COLOR                    0   xyzw        1     NONE   float   xyzw
                // TEXCOORD                 0   xy          2     NONE   float   xy  
                //
                vs_4_0
                dcl_constantbuffer CB0[19], immediateIndexed
                dcl_input v0.xyzw
                dcl_input v1.xyz
                dcl_input v2.xy
                dcl_output_siv o0.xyzw, position
                dcl_output o1.xyzw
                dcl_output o2.xy
                dcl_temps 2
                add r0.x, cb0[10].x, l(5.500000)
                sincos r0.x, null, r0.x
                add r0.x, r0.x, l(0.500000)
                mul r0.xyz, r0.xxxx, v1.xyzx
                mul r0.xyz, r0.xyzx, l(5.000000, 5.000000, 5.000000, 0.000000)
                mov r0.w, l(0)
                add r0.xyzw, r0.xyzw, v0.xyzw
                dp4 o0.x, r0.xyzw, cb0[15].xyzw
                dp4 o0.y, r0.xyzw, cb0[16].xyzw
                dp4 o0.z, r0.xyzw, cb0[17].xyzw
                dp4 o0.w, r0.xyzw, cb0[18].xyzw
                dp3 r0.x, v1.xyzx, cb0[11].xyzx
                dp3 r0.y, v1.xyzx, cb0[12].xyzx
                dp3 r0.z, v1.xyzx, cb0[13].xyzx
                dp3 r0.w, r0.xyzx, r0.xyzx
                rsq r0.w, r0.w
                mul r0.xyz, r0.wwww, r0.xyzx
                dp3 r0.x, r0.xyzx, cb0[3].xyzx
                max r0.x, r0.x, l(0.000000)
                mul r0.xyz, r0.xxxx, cb0[6].xyzx
                mul r1.xyz, cb0[0].xyzx, cb0[9].xyzx
                mad o1.xyz, cb0[1].xyzx, r0.xyzx, r1.xyzx
                mov o1.w, cb0[1].w
                mov o2.xy, v2.xyxx
                ret 
                // Approximately 25 instruction slots used
                            
            };
            GeometryShader = NULL;
            PixelShader = asm {
                //
                // Generated by Microsoft (R) HLSL Shader Compiler 10.1
                //
                //
                // Resource Bindings:
                //
                // Name                                 Type  Format         Dim      HLSL Bind  Count
                // ------------------------------ ---------- ------- ----------- -------------- ------
                // MeshTextureSampler                sampler      NA          NA             s0      1 
                // g_MeshTexture                     texture  float4          2d             t0      1 
                //
                //
                //
                // Input signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_POSITION              0   xyzw        0      POS   float       
                // COLOR                    0   xyzw        1     NONE   float   xyzw
                // TEXCOORD                 0   xy          2     NONE   float   xy  
                //
                //
                // Output signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_Target                0   xyzw        0   TARGET   float   xyzw
                //
                ps_4_0
                dcl_sampler s0, mode_default
                dcl_resource_texture2d (float,float,float,float) t0
                dcl_input_ps linear v1.xyzw
                dcl_input_ps linear v2.xy
                dcl_output o0.xyzw
                dcl_temps 1
                sample r0.xyzw, v2.xyxx, t0.xyzw, s0
                mul o0.xyzw, r0.xyzw, v1.xyzw
                ret 
                // Approximately 3 instruction slots used
                            
            };
            DS_StencilRef = uint(0);
            DepthStencilState = EnableDepth;
        }

    }

    technique11 RenderScene_4_11
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
                // cbuffer $Globals
                // {
                //
                //   float4 g_MaterialAmbientColor;     // Offset:    0 Size:    16
                //   float4 g_MaterialDiffuseColor;     // Offset:   16 Size:    16
                //   int g_nNumLights;                  // Offset:   32 Size:     4 [unused]
                //   float3 g_LightDir[3];              // Offset:   48 Size:    44
                //   float4 g_LightDiffuse[3];          // Offset:   96 Size:    48
                //   float4 g_LightAmbient;             // Offset:  144 Size:    16
                //   float g_fTime;                     // Offset:  160 Size:     4
                //   float4x4 g_mWorld;                 // Offset:  176 Size:    64
                //   float4x4 g_mWorldViewProjection;   // Offset:  240 Size:    64
                //
                // }
                //
                //
                // Resource Bindings:
                //
                // Name                                 Type  Format         Dim      HLSL Bind  Count
                // ------------------------------ ---------- ------- ----------- -------------- ------
                // $Globals                          cbuffer      NA          NA            cb0      1 
                //
                //
                //
                // Input signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // POSITION                 0   xyzw        0     NONE   float   xyzw
                // NORMAL                   0   xyz         1     NONE   float   xyz 
                // TEXCOORD                 0   xy          2     NONE   float   xy  
                //
                //
                // Output signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_POSITION              0   xyzw        0      POS   float   xyzw
                // COLOR                    0   xyzw        1     NONE   float   xyzw
                // TEXCOORD                 0   xy          2     NONE   float   xy  
                //
                vs_4_0
                dcl_constantbuffer CB0[19], immediateIndexed
                dcl_input v0.xyzw
                dcl_input v1.xyz
                dcl_input v2.xy
                dcl_output_siv o0.xyzw, position
                dcl_output o1.xyzw
                dcl_output o2.xy
                dcl_temps 2
                add r0.x, cb0[10].x, l(5.500000)
                sincos r0.x, null, r0.x
                add r0.x, r0.x, l(0.500000)
                mul r0.xyz, r0.xxxx, v1.xyzx
                mul r0.xyz, r0.xyzx, l(5.000000, 5.000000, 5.000000, 0.000000)
                mov r0.w, l(0)
                add r0.xyzw, r0.xyzw, v0.xyzw
                dp4 o0.x, r0.xyzw, cb0[15].xyzw
                dp4 o0.y, r0.xyzw, cb0[16].xyzw
                dp4 o0.z, r0.xyzw, cb0[17].xyzw
                dp4 o0.w, r0.xyzw, cb0[18].xyzw
                dp3 r0.x, v1.xyzx, cb0[11].xyzx
                dp3 r0.y, v1.xyzx, cb0[12].xyzx
                dp3 r0.z, v1.xyzx, cb0[13].xyzx
                dp3 r0.w, r0.xyzx, r0.xyzx
                rsq r0.w, r0.w
                mul r0.xyz, r0.wwww, r0.xyzx
                dp3 r0.x, r0.xyzx, cb0[3].xyzx
                max r0.x, r0.x, l(0.000000)
                mul r0.xyz, r0.xxxx, cb0[6].xyzx
                mul r1.xyz, cb0[0].xyzx, cb0[9].xyzx
                mad o1.xyz, cb0[1].xyzx, r0.xyzx, r1.xyzx
                mov o1.w, cb0[1].w
                mov o2.xy, v2.xyxx
                ret 
                // Approximately 25 instruction slots used
                            
            };
            GeometryShader = NULL;
            PixelShader = asm {
                //
                // Generated by Microsoft (R) HLSL Shader Compiler 10.1
                //
                //
                // Resource Bindings:
                //
                // Name                                 Type  Format         Dim      HLSL Bind  Count
                // ------------------------------ ---------- ------- ----------- -------------- ------
                // MeshTextureSampler                sampler      NA          NA             s0      1 
                // g_MeshTexture                     texture  float4          2d             t0      1 
                //
                //
                //
                // Input signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_POSITION              0   xyzw        0      POS   float       
                // COLOR                    0   xyzw        1     NONE   float   xyzw
                // TEXCOORD                 0   xy          2     NONE   float   xy  
                //
                //
                // Output signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_Target                0   xyzw        0   TARGET   float   xyzw
                //
                ps_4_0
                dcl_sampler s0, mode_default
                dcl_resource_texture2d (float,float,float,float) t0
                dcl_input_ps linear v1.xyzw
                dcl_input_ps linear v2.xy
                dcl_output o0.xyzw
                dcl_temps 1
                sample r0.xyzw, v2.xyxx, t0.xyzw, s0
                mul o0.xyzw, r0.xyzw, v1.xyzw
                ret 
                // Approximately 3 instruction slots used
                            
            };
            DS_StencilRef = uint(0);
            DepthStencilState = EnableDepth;
        }

    }

    technique11 RenderScene_5
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
                // cbuffer $Globals
                // {
                //
                //   float4 g_MaterialAmbientColor;     // Offset:    0 Size:    16
                //   float4 g_MaterialDiffuseColor;     // Offset:   16 Size:    16
                //   int g_nNumLights;                  // Offset:   32 Size:     4 [unused]
                //   float3 g_LightDir[3];              // Offset:   48 Size:    44
                //   float4 g_LightDiffuse[3];          // Offset:   96 Size:    48
                //   float4 g_LightAmbient;             // Offset:  144 Size:    16
                //   float g_fTime;                     // Offset:  160 Size:     4
                //   float4x4 g_mWorld;                 // Offset:  176 Size:    64
                //   float4x4 g_mWorldViewProjection;   // Offset:  240 Size:    64
                //
                // }
                //
                //
                // Resource Bindings:
                //
                // Name                                 Type  Format         Dim      HLSL Bind  Count
                // ------------------------------ ---------- ------- ----------- -------------- ------
                // $Globals                          cbuffer      NA          NA            cb0      1 
                //
                //
                //
                // Input signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // POSITION                 0   xyzw        0     NONE   float   xyzw
                // NORMAL                   0   xyz         1     NONE   float   xyz 
                // TEXCOORD                 0   xy          2     NONE   float   xy  
                //
                //
                // Output signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_POSITION              0   xyzw        0      POS   float   xyzw
                // COLOR                    0   xyzw        1     NONE   float   xyzw
                // TEXCOORD                 0   xy          2     NONE   float   xy  
                //
                vs_5_0
                dcl_globalFlags refactoringAllowed
                dcl_constantbuffer CB0[19], immediateIndexed
                dcl_input v0.xyzw
                dcl_input v1.xyz
                dcl_input v2.xy
                dcl_output_siv o0.xyzw, position
                dcl_output o1.xyzw
                dcl_output o2.xy
                dcl_temps 2
                add r0.x, cb0[10].x, l(5.500000)
                sincos r0.x, null, r0.x
                add r0.x, r0.x, l(0.500000)
                mul r0.xyz, r0.xxxx, v1.xyzx
                mul r0.xyz, r0.xyzx, l(5.000000, 5.000000, 5.000000, 0.000000)
                mov r0.w, l(0)
                add r0.xyzw, r0.xyzw, v0.xyzw
                dp4 o0.x, r0.xyzw, cb0[15].xyzw
                dp4 o0.y, r0.xyzw, cb0[16].xyzw
                dp4 o0.z, r0.xyzw, cb0[17].xyzw
                dp4 o0.w, r0.xyzw, cb0[18].xyzw
                dp3 r0.x, v1.xyzx, cb0[11].xyzx
                dp3 r0.y, v1.xyzx, cb0[12].xyzx
                dp3 r0.z, v1.xyzx, cb0[13].xyzx
                dp3 r0.w, r0.xyzx, r0.xyzx
                rsq r0.w, r0.w
                mul r0.xyz, r0.wwww, r0.xyzx
                dp3 r0.x, r0.xyzx, cb0[3].xyzx
                max r0.x, r0.x, l(0.000000)
                mul r0.xyz, r0.xxxx, cb0[6].xyzx
                mul r1.xyz, cb0[0].xyzx, cb0[9].xyzx
                mad o1.xyz, cb0[1].xyzx, r0.xyzx, r1.xyzx
                mov o1.w, cb0[1].w
                mov o2.xy, v2.xyxx
                ret 
                // Approximately 25 instruction slots used
                            
            };
            GeometryShader = NULL;
            PixelShader = asm {
                //
                // Generated by Microsoft (R) HLSL Shader Compiler 10.1
                //
                //
                // Resource Bindings:
                //
                // Name                                 Type  Format         Dim      HLSL Bind  Count
                // ------------------------------ ---------- ------- ----------- -------------- ------
                // MeshTextureSampler                sampler      NA          NA             s0      1 
                // g_MeshTexture                     texture  float4          2d             t0      1 
                //
                //
                //
                // Input signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_POSITION              0   xyzw        0      POS   float       
                // COLOR                    0   xyzw        1     NONE   float   xyzw
                // TEXCOORD                 0   xy          2     NONE   float   xy  
                //
                //
                // Output signature:
                //
                // Name                 Index   Mask Register SysValue  Format   Used
                // -------------------- ----- ------ -------- -------- ------- ------
                // SV_Target                0   xyzw        0   TARGET   float   xyzw
                //
                ps_5_0
                dcl_globalFlags refactoringAllowed
                dcl_sampler s0, mode_default
                dcl_resource_texture2d (float,float,float,float) t0
                dcl_input_ps linear v1.xyzw
                dcl_input_ps linear v2.xy
                dcl_output o0.xyzw
                dcl_temps 1
                sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v2.xyxx, t0.xyzw, s0
                mul o0.xyzw, r0.xyzw, v1.xyzw
                ret 
                // Approximately 3 instruction slots used
                            
            };
            DS_StencilRef = uint(0);
            DepthStencilState = EnableDepth;
        }

    }

}

