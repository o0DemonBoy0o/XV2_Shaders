// By DA (DemonBoy)

cbuffer ps_stage_cb : register(b0)
{
  float4 g_vShadowMap_PS : packoffset(c0);
  float4 g_vEdge_PS : packoffset(c1);
  float4 g_vGlare_PS : packoffset(c2);
  float4 g_vLerp_PS : packoffset(c3);
  float4 g_vOffset_PS : packoffset(c4);
  float4 g_vScale_PS : packoffset(c5);
  float4 g_vShadowColor_PS : packoffset(c6);
  float4 g_vTone_PS : packoffset(c7);
  float4 g_vFogMultiColor_PS : packoffset(c8);
  float4 g_vFogAddColor_PS : packoffset(c9);
  float4 g_vFadeMulti_PS : packoffset(c10);
  float4 g_vFadeRim_PS : packoffset(c11);
  float4 g_vFadeAdd_PS : packoffset(c12);
  float4 g_vAltFadeMulti_PS : packoffset(c13);
  float4 g_vAltFadeAdd_PS : packoffset(c14);
}

cbuffer ps_common_cb : register(b2)
{
  float4 g_vAmbUni_PS : packoffset(c0);
  float4 g_vRimColor_PS : packoffset(c1);
  float4 g_vHemiA_PS : packoffset(c2);
  float4 g_vHemiB_PS : packoffset(c3);
  float4 g_vHemiC_PS : packoffset(c4);
  float4 g_vLightVec0_PS : packoffset(c5);
  float4 g_vLightDif0_PS : packoffset(c6);
  float4 g_vLightSpc0_PS : packoffset(c7);
  float4 g_vLightVec1_PS : packoffset(c8);
  float4 g_vLightDif1_PS : packoffset(c9);
  float4 g_vLightSpc1_PS : packoffset(c10);
  float4 g_vLightVec2_PS : packoffset(c11);
  float4 g_vLightDif2_PS : packoffset(c12);
  float4 g_vLightSpc2_PS : packoffset(c13);
  float4 g_vLightVec3_PS : packoffset(c14);
  float4 g_vLightDif3_PS : packoffset(c15);
  float4 g_vLightSpc3_PS : packoffset(c16);
  float4 g_vEyePos_PS : packoffset(c17);
  float4 g_vSpecular_PS : packoffset(c18);
  float4 g_vRim_PS : packoffset(c19);
  float4 g_vSubSurface_PS : packoffset(c20);
  float4 g_TexScroll0_PS : packoffset(c21);
  float4 g_TexScroll1_PS : packoffset(c22);
  float4 g_TexScroll2_PS : packoffset(c23);
  float4 g_TexScroll3_PS : packoffset(c24);
  float4 g_MaterialCol0_PS : packoffset(c25);
  float4 g_MaterialCol1_PS : packoffset(c26);
  float4 g_MaterialCol2_PS : packoffset(c27);
  float4 g_MaterialCol3_PS : packoffset(c28);
  float4 g_MaterialCol4_PS : packoffset(c29);
  float4 g_MaterialCol5_PS : packoffset(c30);
  float4 g_MaterialCol6_PS : packoffset(c31);
  float4 g_MaterialCol7_PS : packoffset(c32);
  float4 g_MaterialScale0_PS : packoffset(c33);
  float4 g_MaterialScale1_PS : packoffset(c34);
  float4 g_MaterialOffset0_PS : packoffset(c35);
  float4 g_MaterialOffset1_PS : packoffset(c36);
  float4 g_AlphaFade_PS : packoffset(c37);
  float4 g_Incidence_PS : packoffset(c38);
  float4 g_Gradient_PS : packoffset(c39);
  float4 g_ElapsedTime_PS : packoffset(c40);
  float4 g_GlareCoeff_PS : packoffset(c41);
  float4 g_Reflection_PS : packoffset(c42);
  float4 g_Brush_PS : packoffset(c43);
  float4 g_EdgeColor_PS : packoffset(c44);
  float4 g_vLodViewport_PS : packoffset(c45);
}

cbuffer ps_versatile_cb : register(b4)
{
  float4 g_vColor0_PS : packoffset(c0);
  float4 g_vColor1_PS : packoffset(c1);
  float4 g_vColor2_PS : packoffset(c2);
  float4 g_vColor3_PS : packoffset(c3);
  float4 g_vColor4_PS : packoffset(c4);
  float4 g_vColor5_PS : packoffset(c5);
  float4 g_vColor6_PS : packoffset(c6);
  float4 g_vColor7_PS : packoffset(c7);
  float4 g_vColor8_PS : packoffset(c8);
  float4 g_vColor9_PS : packoffset(c9);
  float4 g_vColor10_PS : packoffset(c10);
  float4 g_vColor11_PS : packoffset(c11);
  float4 g_vColor12_PS : packoffset(c12);
  float4 g_vColor13_PS : packoffset(c13);
  float4 g_vColor14_PS : packoffset(c14);
  float4 g_vColor15_PS : packoffset(c15);
  float4 g_vParam0_PS : packoffset(c16);
  float4 g_vParam1_PS : packoffset(c17);
  float4 g_vParam2_PS : packoffset(c18);
  float4 g_vParam3_PS : packoffset(c19);
  float4 g_vParam4_PS : packoffset(c20);
  float4 g_vParam5_PS : packoffset(c21);
  float4 g_vParam6_PS : packoffset(c22);
  float4 g_vParam7_PS : packoffset(c23);
  float4 g_vParam8_PS : packoffset(c24);
  float4 g_vParam9_PS : packoffset(c25);
  float4 g_vParam10_PS : packoffset(c26);
  float4 g_vParam11_PS : packoffset(c27);
  float4 g_vParam12_PS : packoffset(c28);
  float4 g_vParam13_PS : packoffset(c29);
  float4 g_vParam14_PS : packoffset(c30);
  float4 g_vParam15_PS : packoffset(c31);
  float4 g_vThreshold0_PS : packoffset(c32);
  float4 g_vThreshold1_PS : packoffset(c33);
  float4 g_vThreshold2_PS : packoffset(c34);
  float4 g_vThreshold3_PS : packoffset(c35);
}

cbuffer cb_ps_bool : register(b8)
{
  bool ps_bool_padding0 : packoffset(c0);
  bool ps_bool_padding1 : packoffset(c0.y);
  bool g_bFog_PS : packoffset(c0.z);
  bool g_bOutputGlareMRT_PS : packoffset(c0.w);
  bool g_bOutputDepthMRT_PS : packoffset(c1);
  bool ps_bool_padding2 : packoffset(c1.y);
  bool ps_bool_padding3 : packoffset(c1.z);
  bool g_bDepthTex_PS : packoffset(c1.w);
  bool g_bShadowPCF1_PS : packoffset(c2);
  bool g_bShadowPCF4_PS : packoffset(c2.y);
  bool g_bShadowPCF8_PS : packoffset(c2.z);
  bool g_bShadowPCF16_PS : packoffset(c2.w);
  bool g_bShadowPCF24_PS : packoffset(c3);
}

//-------------------------
// Compiler Macros
//-------------------------
// Shader Modes

/* Description:
	Disables using a binary threshold on linework overlay.
*/
#ifndef DISABLE_LINEWORK_THRESHOLD
    #define DISABLE_LINEWORK_THRESHOLD 0
#endif

/* Description:
	Disables using a binary threshold on color mask (D2/XVM).
*/
#ifndef DISABLE_COLORMASK_THRESHOLD
    #define DISABLE_COLORMASK_THRESHOLD 0
#endif

/* Description:
	Disables calculating/applying lighting ramps (primarily for VFX).
*/
#ifndef DISABLE_VFX_LIGHTING
    #define DISABLE_VFX_LIGHTING 0
#endif

/* Description:
	Enables loading from a DYT for color ramps.
*/
#ifndef USE_UNIF
    #define USE_UNIF 0
#endif

/* Description:
	Enables Depth Fade calculation for use 
	with setting threshold for linework overlay
*/
#ifndef USE_DFD
    #define USE_DFD 0
#endif

/* Description:
	Enables light intensity modification with a second texture.
	R = Base Light | G = Rim Light | B = Shine Light
	Light mask texture uses Image Sampler 2.
*/
#ifndef USE_HAIR
    #define USE_HAIR 0
#endif

/* Description:
	Enables shine/glow(?) modification using MatOffset1X/Y/Z.
	Note: Not to be confused with STAIN.
*/
#ifndef USE_STN
    #define USE_STN 0
#endif

/* Description:
	Enables MatCol0R/G/B for 
	coloring linework overlay mask.
*/
#ifndef USE_STAIN1
    #define USE_STAIN1 0
#endif

/* Description:
	An extention of STAIN1 that adds scratch damage support.
	Uses MatCol1R/G/B for coloring scratch overlay mask.
*/
#ifndef USE_STAIN2
    #define USE_STAIN2 0
#endif

/* Description:
	An extention of STAIN2 that adds blood damage support.
	Uses MatCol2R/G/B for coloring scratch overlay mask.
*/
#ifndef USE_STAIN3
    #define USE_STAIN3 0
#endif

/* Description:
	Enbles MatCol0A for setting base threshold
	for linework overlay. (default 0.5)
*/
#ifndef USE_ATH
    #define USE_ATH 0
#endif

/* Description:
	Enables per-channel light masking with a second texture.
	R = Base Light | G = Rim Light | B = Shine Light
	Light mask texture uses Image Sampler 2.
*/
#ifndef USE_MSK
    #define USE_MSK 0
#endif

/* Description:
	Enables dual color ramp support.
	2nd color is overlayed using a mask 
	from linework overlay blue channel.
*/
#ifndef USE_D2
    #define USE_D2 0
#endif

/* Description:
	Enables dual color ramp support.
	2nd color is overlayed using a mask from a second texture.
	Mask texture uses Image Sampler 2.
*/
#ifndef USE_XVM
    #define USE_XVM 0
#endif

/* Description:
	Enables a decal texture to be applied as 
	an overlay using the 2nd UV channel.
	
	Decal is clamped to only appear inside 0-1 UV bounds.
	
	Decal texture uses Image Sampler 2. 
	If paied with USE_XVM or USE_MSK, 
	then it uses Image Samler 3.
*/
#ifndef USE_MUD
    #define USE_MUD 0
#endif

/* Description:
	Enables reading rimlight color from 
	character DYT instead of stage DYT.
	Uses 4th color ramp from DYT.
	CANNOT be used with USE_D2/USE_XVM.
*/
#ifndef USE_OWR
    #define USE_OWR 0
#endif

/* Description:
	Enables reading rimlight color from 
	character DYT instead of stage DYT.
	Uses 2nd color ramp from DYT.
	Uses ramp alpha as strength.
	Can ONLY be used with USE_D2/USE_XVM.
*/
#ifndef USE_NRP
    #define USE_NRP 0
#endif

// Compatability Checks
#if USE_MSK && USE_XVM
    #error "MSK and XVM cannot be enabled at the same time!"
#endif

#if USE_HAIR && (USE_MSK || USE_XVM)
    #error "HAIR and XVM/MSK cannot be enabled at the same time!"
#endif

#if USE_D2 && USE_XVM
    #error "D2 and XVM cannot be enabled at the same time!"
#endif

#if USE_OWR && (USE_XVM || USE_D2 || USE_NRP)
    #error "OWR and D2/XVM/NRP cannot be enabled at the same time!"
#endif

#if USE_NRP && (!USE_XVM && !USE_D2)
    #error "NRP can only be used with XVM/D2! Use OWR for other types."
#endif

// Other Helper Macros
#define rampStep g_vParam12_PS.w
//#define matIndex g_MaterialScale1_PS.x * 0.125
#define WHITE float3(1,1,1)

#if USE_STAIN2 || USE_STAIN3
    #define LINEWORK_STAIN2(expr) expr
#else
    #define LINEWORK_STAIN2(expr)
#endif

#if USE_STAIN3
    #define LINEWORK_STAIN3(expr) expr
#else
    #define LINEWORK_STAIN3(expr)
#endif

#if USE_ATH
    #define LINEWORK_ATH(expr) expr
#else
    #define LINEWORK_ATH(expr)
#endif

// Include the use of the 2nd UV map input when enabled
// Note: FASPC and DBL_ACS shaders use this too
#if USE_MUD
    #define PS_TEXCOORD11_INPUT float4 UV1 : TEXCOORD11,
#else
    #define PS_TEXCOORD11_INPUT
#endif

// Include the use of the lightDirOff input when enabled
#if USE_HAIR
    #define PS_TEXCOORD3_INPUT float4 lightDirOff : TEXCOORD3,
#else
    #define PS_TEXCOORD3_INPUT
#endif

// Exclude the use of the worldPos input when enabled
#if DISABLE_VFX_LIGHTING
    #define PS_TEXCOORD4_INPUT 
#else
    #define PS_TEXCOORD4_INPUT float4 worldPos : TEXCOORD4,
#endif


//linework emb
Texture2D<float4> Texture_LineworkOverlay : register(t1);
SamplerState State_LineworkOverlay_s : register(s1);

// Enable use of extra images for shaders that need it
#if USE_MSK || USE_XVM || USE_MUD || USE_HAIR
	Texture2D<float4> Texture_ImageSampler2 : register(t2);
	SamplerState State_ImageSampler2_s : register(s2);
#endif

#if USE_MUD && (USE_XVM || USE_MSK || USE_HAIR)
	Texture2D<float4> Texture_ImageSampler3 : register(t3);
	SamplerState State_ImageSampler3_s : register(s3);
#endif

//character color ramps
#if USE_UNIF
	Texture2D<float4> Texture_ToonColors : register(t4);
	SamplerState State_ToonColors_s : register(s4);
#else
	Texture2D<float4> Texture_ToonColors : register(t0);
	SamplerState State_ToonColors_s : register(s0);
#endif

//effect lighting dyt
#if !DISABLE_VFX_LIGHTING
	SamplerState State_ToonOtherLight_s : register(s14);
	Texture2D<float4> Texture_ToonOtherLight : register(t14);
#endif

//stage rimlight
#if !USE_OWR || !USE_NRP
	SamplerState State_ToonRimlight_s : register(s15);
	Texture2D<float4> Texture_ToonRimlight : register(t15);
#endif


float3 ComputeToonSteps(
    float3 color,
    float3 channelOffset,
    float maxVal,
    float range
)
{
    float3 steps = (maxVal - color.zxy) / range;
    steps = steps - steps.zxy + channelOffset;

    float3 mask = (color >= maxVal) ? 1.0.xxx : 0.0.xxx;
    return steps * mask;
}

float3 ApplyToonRamp(
    float step,
    float rampFactor,
    float maxVal,
    float3 baseColor
)
{
    float3 t = step.xxx * float3(6,6,6) + float3(-3,-2,-4);
    t = saturate(abs(t) * float3(1,-1,-1) + float3(-1,2,2)) - 1.0f;
    t = t * rampFactor + 1.0f;
    return t * maxVal - baseColor;
}

float3 BlendToonColor(
    float3 toonColor,
    float3 baseColor,
    float2 rimMask,
    float3 luminance,
    float3 mergeColor
)
{
    float3 c = rimMask.yyy * toonColor + baseColor;
    c = (c - mergeColor) * luminance + mergeColor;
    return (c - baseColor) * rimMask.xxx + baseColor;
}

float ComputeDepthFade(
    float clipDepth,
    float viewTerm
)
{
	float4 depthParams = g_vParam7_PS;
	float viewScale = g_MaterialScale1_PS.w;

    // smoothstep(start, end, depth)
    float fade = smoothstep(depthParams.x, depthParams.y, clipDepth);

    // scale and bias
    fade = fade * (depthParams.w - depthParams.z) + depthParams.z;

    // view-dependent modulation
    float v = saturate(viewTerm);
    float viewFade = viewScale * (1.0f - v);
    float viewBias = 0.03f * v;

    return fade * viewFade + viewBias;
}

float4 SampleToonRamp(
    Texture2D dytRamp,
    SamplerState dytSample,
    float2 uv,
    bool enableSmoothing
)
{
    // base ramp
    float4 color = dytRamp.Sample(dytSample, uv);

	//use smoothing if true (HC shading)
    if (enableSmoothing)
    {
        // Determine discrete ramp segment
        float segmentIndex = floor(uv.x / rampStep);
        float uStart = segmentIndex * rampStep;
        float uEnd   = uStart + rampStep;

        // Sample start and end colors of the segment
        float4 colorStart = dytRamp.Sample(dytSample, float2(uStart, uv.y));
        float4 colorEnd   = dytRamp.Sample(dytSample, float2(uEnd, uv.y));

        // Fraction within the segment
        float t = (uv.x - uStart) / rampStep;

        // Smooth blend between segment start and end
        color = lerp(colorStart, colorEnd, t);
    }

    return color;
}

float Luminance(float3 c)
{
    return dot(c, float3(0.2125, 0.7154, 0.0721)); //Rec. 709
}

float3 RGBtoHSV(float3 c)
{
    float4 K = float4(0.0, -1.0/3.0, 2.0/3.0, -1.0);
    float4 p = lerp(float4(c.bg, K.wz), float4(c.gb, K.xy), step(c.b, c.g));
    float4 q = lerp(float4(p.xyw, c.r), float4(c.r, p.yzx), step(p.x, c.r));

    float d = q.x - min(q.w, q.y);
    float e = 1e-5;

    return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}

float3 HSVtoRGB(float3 c)
{
    float4 K = float4(1.0, 2.0/3.0, 1.0/3.0, 3.0);
    float3 p = abs(frac(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * lerp(K.xxx, saturate(p - K.xxx), c.y);
}

float3 AsymmetricHueShift(float3 baseColor, float3 effectColor)
{
    // Averages
    float baseAvg   = dot(baseColor, 1.0/3.0);
    float effectAvg = dot(effectColor, 1.0/3.0);

    // Chroma axes
    float cx = dot(effectColor, float3(-1,-1,2)/3.0);
    float cy = dot(effectColor.yzx, float3(-1,-1,2)/3.0);

    // Bias
    float biasTemp = effectAvg - (0.5 - baseAvg);
    float biasBase = effectAvg * baseAvg + 0.1;
    float biasLerp = saturate(3.0 * effectAvg);
    float bias     = biasLerp * (biasTemp - biasBase) + biasBase;

    // Asymmetric reconstruction
    float3 outColor;
    float t = bias - cx;

    outColor.g = saturate(t - cy);
    outColor.r = saturate(bias + cy);
    outColor.b = saturate(bias + cx);

    return outColor;
}

float4 ApplyColorMod(float4 baseColor, float4 colorParam, int mode)
{
    float4 newColor = baseColor;
	float blendStrength = g_vColor7_PS.x;

    switch (mode)
    {
        case 0: //Asymmetric Hue-Shift Recolor
        {
			newColor.rgb = AsymmetricHueShift(baseColor.rgb, colorParam.rgb);
			newColor.a = saturate(colorParam.a * baseColor.a);
			break;
        }
        case 1: //Additive recolor
		{
            newColor = saturate(baseColor + colorParam);
            break;
		}
        case 2: //Luminance-shifted recolor
        {
			// Luminance
			float baseLum   = Luminance(baseColor.rgb);
			float targetLum = Luminance(colorParam.rgb);

			// Match luminance by shifting the recolor color
			float3 shifted = colorParam.rgb + (baseLum - targetLum);

			// Signed bias from recolor alpha
			float bias = colorParam.a * 2.0 - 1.0;

			newColor.rgb = saturate(shifted + bias);
			newColor.a   = saturate(baseColor.a);
            break;
        }
        case 3: //Luminance-matched recolor
        {
            float baseLum = Luminance(baseColor.rgb);
            float targetLum = Luminance(colorParam.rgb);

            newColor.rgb = saturate(colorParam.rgb * (baseLum / targetLum));
            newColor.a = saturate(colorParam.a * baseColor.a);		
            break;
        }
        case 4: //Luminance-matched recolor + Bias
        {
            float baseLum = Luminance(baseColor.rgb);
            float targetLum = Luminance(colorParam.rgb);
			
			float scale = baseLum / targetLum;
            float offset = colorParam.a * 2.0 - 1.0;

            newColor.rgb = saturate(colorParam.rgb * scale + offset);
            newColor.a = baseColor.a;
            break;
        }
        case 5: //Multiplicative recolor
		{
            newColor = baseColor * colorParam;
            break;
		}
        case 6: //Hue-Shift Recolor
        {
            float3 hsv = RGBtoHSV(baseColor.rgb);

            hsv.x = frac(hsv.x + colorParam.x); // Hue shift

            newColor.rgb = HSVtoRGB(hsv);
            newColor.a = colorParam.w * baseColor.a;
            break;
        }
        case 7: //Hue-Shift Recolor (Saturation/Value)
        {
            float3 hsv = RGBtoHSV(baseColor.rgb);

            hsv.x = frac(hsv.x + colorParam.x);	  // Hue
			hsv.y = saturate(hsv.y * colorParam.y); // Saturation
			hsv.z = saturate(hsv.z * colorParam.z); // Value (brightness)

            newColor.rgb = HSVtoRGB(hsv);
            newColor.a = saturate(baseColor.a * colorParam.a);
            break;
        }
        default:
            newColor =  float4(1,0,0,1);
			break;
    }

    // Final blend
    return lerp(baseColor, newColor, blendStrength);
}

float3 ApplyColorMod2(float3 baseColor, int mode)
{
    float3 newColor = baseColor;
    float4 ColorParam = g_vColor10_PS;
    float blendStrength = g_vColor7_PS.x;

    switch (mode)
    {
        case 0: //Asymmetric Hue-Shift Recolor
        {
			newColor = AsymmetricHueShift(baseColor, ColorParam.xyz);
            break;
        }
        case 1: //Additive recolor
        {
            newColor = saturate(baseColor + ColorParam.xyz);
            break;
        }
        case 2: //Luminance-shifted recolor
        {			
			// Luminance
			float baseLum   = Luminance(baseColor);
			float targetLum = Luminance(ColorParam.xyz);

			// Match luminance by shifting the recolor color
			float3 shifted = ColorParam.xyz + (baseLum - targetLum);

			// Signed bias from recolor alpha
			float bias = ColorParam.w * 2.0 - 1.0;

			newColor = saturate(shifted + bias);
            break;
        }
        case 3: //Luminance-matched recolor
        {
            float baseLum = Luminance(baseColor);
            float targetLum = Luminance(ColorParam.xyz);

            newColor = saturate(ColorParam.xyz * (baseLum / targetLum));
            break;
        }
        case 4: //Luminance-matched recolor + Bias
        {
            float baseLum = Luminance(baseColor);
            float targetLum = Luminance(ColorParam.xyz);

            float scale = baseLum / targetLum;
            float offset = g_vColor10_PS.w * 2 - 1;

            newColor = saturate(ColorParam.xyz * scale + offset);
            break;
        }
        case 5: //Multiplicative recolor
        {
            newColor = baseColor * ColorParam.xyz;
            break;
        }
        case 6: //Custom "pseudo-HSV" recolor
        {
            float maxComp = max(baseColor.y, baseColor.z);
            float maxAll = max(baseColor.x, maxComp);
            float minComp = min(baseColor.y, baseColor.z);
            float minAll = min(baseColor.x, minComp);
            float range = maxAll - minAll;

            bool validRange = (range != 0);
            float3 t = maxAll.xxx - baseColor.zxy;
            t = validRange ? t / range.xxx : 0;

            t = t + -t.zxy;
            t = float3(6,2,4) + t;
            float3 cmpMask = step(maxAll.xxx, baseColor);
            cmpMask = cmpMask ? float3(1,1,1) : 0;
            t *= cmpMask;

            float scale = 0.166666672;
            t = frac(scale * max(max(t.x, t.y), t.z));
            t = t * 6 - float3(3,2,4);
            t = saturate(abs(t) * float3(1,-1,-1) + float3(-1,2,2));
            newColor = t * (1 + -baseColor);
            break;
        }
        case 7: //Custom "pseudo-HSV" recolor (Saturation/Value)
        {
            float maxComp = max(baseColor.y, baseColor.z);
            float maxAll = max(baseColor.x, maxComp);
            float minComp = min(baseColor.y, baseColor.z);
            float minAll = min(baseColor.x, minComp);
            float range = maxAll - minAll;

            bool validRange = (range != 0);
            float tScale = validRange ? range / maxAll : 0;

            float fracHue = frac(g_vColor10_PS.x);
            float2 offset = g_vColor10_PS.yz * 2 + float2(tScale, tScale);
            offset = saturate(offset - 1);

            newColor = fracHue.xxx * float3(6,6,6) + float3(-3,-2,-4);
            newColor = saturate(abs(newColor) * float3(1,-1,-1) + float3(-1,2,2));
            newColor = newColor * offset.xxx + float3(1,1,1);
            newColor = newColor * offset.yyy + -baseColor;
            break;
        }
        default:
			newColor = float3(1,0,0);
			break;
    }

    // Final blend
    return lerp(baseColor, newColor, blendStrength);
}

//-----------------------------------------------------------------------------------------------

void main( 
  float4 v0 			: SV_POSITION0,
  float4 UV0 		    : TEXCOORD0,
  float4 worldNormal    : TEXCOORD1,
  float4 viewVectorWS   : TEXCOORD2,
  PS_TEXCOORD3_INPUT	//contains lighting warp variable from Hair shaders
  PS_TEXCOORD4_INPUT    //contains worldPos fr vfx lighting distance
  //TEXCOORD5 is something relating to ENV shaders
  float4 clipPosPS 		: TEXCOORD6,
  float4 screenParams 	: TEXCOORD7,
  //TEXCOORD8 is something relating to FASPC shaders
  float4 lightDirWS 	: TEXCOORD9,
  float4 rimDirWS 		: TEXCOORD10,
  PS_TEXCOORD11_INPUT	//contains UV1 in shaders that support it
  float4 featureFlags0  : TEXCOORD12,
  float4 featureFlags1  : TEXCOORD13,
  float4 featureFlags2  : TEXCOORD14,
  float4 materialMode   : TEXCOORD15,
  //TEXCOORD16 is something relating to DBL_ACS shaders
  //TEXCOORD17 is something relating to DBL_ACS shaders
  out float4 colorOut 	: SV_TARGET0,
  out float4 glareOut 	: SV_TARGET1)
{
  uint4 bitmask, uiDest;
  float4 fDest;


//-------------------------
// Feature Flags (Named)
//-------------------------
	bool ENABLE_COLOR_MOD = featureFlags0.x != 0;
	bool DISABLE_SUB_LIGHTING = featureFlags0.y != 0;
	bool ENABLE_GLOW_ALPHA = featureFlags0.z != 0;
	bool ENABLE_DISCARD_MASK = featureFlags0.w != 0;

	bool ENABLE_GLOW_COLOR = featureFlags1.x != 0;
	bool ENABLE_GLOW = featureFlags1.y != 0;
	bool ENABLE_STRIPE_MASK = featureFlags1.z != 0;
	bool DISABLE_LIGHTING_PASS = featureFlags1.w != 0;

	bool ENABLE_INK_SPEC = featureFlags2.x != 0;
	bool ENABLE_RAMP_SMOOTHING = featureFlags2.y != 0;
	bool ENABLE_SHINE_SPEC = featureFlags2.z != 0;
	bool ENABLE_LIGHTING_TONE_CURVE = featureFlags2.w != 0;


//-------------------------
// Screen pixel and discard logic
//-------------------------
	//Clip-space position to screen-space pixel coordinates
	float2 screenPos = clipPosPS.xy / clipPosPS.w;
	screenPos = screenPos * 0.5 + 0.5;
	screenPos = screenPos * screenParams.xy + 0.01;
	uint2 screenPixel = uint2(round(screenPos));

	// Tile dimensions and index
	uint2 tileDim = uint2(g_vParam9_PS.xy + g_vParam9_PS.zw); // tile width/height
	int2 tileIndex = screenPixel.yx / tileDim.yx;

	// Local pixel position within tile
	int2 localPos = screenPixel.yx - tileIndex * tileDim.yx;

	// Scaling parameters from g_vParam10_PS
	int2 scaledTilePixel = g_vParam10_PS.xy * tileIndex + screenPixel;

	// Local offset after applying tile coordinates
	tileIndex = (uint2)scaledTilePixel / (uint2)tileDim;
	int2 localOffset = (int2)-tileIndex * (int2)tileDim.xy + (int2)scaledTilePixel.xy;

	// Prepare discard mask
	int2 offsetMask = localOffset.xy - g_vParam9_PS.xy;
	offsetMask = (offsetMask.xy < float2(0,0)) ? -1 : 0;
	int discardMask = offsetMask.x | offsetMask.y;

	// Discard masked pixels
	discardMask = ENABLE_DISCARD_MASK ? discardMask : 0;
	
	if (discardMask != 0) 
		discard;

	// Loading color ramps from Sampler 0
	float matIndex = 0;
	float rampIndex[4] =
	{
		0.166666672, //main color
		0.5, 		 //rimlight intensity/color
		0.833333313, //shine
		1.16666663  //secondary color
	};

	// Loading color ramps from Sampler 4 (DYT)
	#if USE_UNIF
		matIndex = g_MaterialScale1_PS.x * 0.125;
		rampIndex[0] = 0.015625;
		rampIndex[1] = 0.046875;
		rampIndex[2] = 0.078125;
		rampIndex[3] = 0.109375;
	#endif

//-------------------------
//Light Calculation
//-------------------------
	// Shared normalizations
	float3 lightDirN = normalize(lightDirWS.xyz);
	float3 rimDirN   = normalize(rimDirWS.xyz);
	float3 normalN   = normalize(worldNormal.xyz);
	float3 rampBaseN = normalize(float3(UV0.zw, worldNormal.w));

	// Base lighting positions
	float lightRaw  = 1.0 - dot(rimDirN, rampBaseN);
	float baseLight = saturate(0.5 * (1.0 + dot(rampBaseN, lightDirN)));

	float3 rimLightDirN = rimDirN;
	#if USE_HAIR
		rimLightDirN = normalize(rimDirN  + lightDirOff.xyz);
	#endif
	float rimLight = saturate(1 - dot(rimLightDirN, rampBaseN)); 

	// Shine light type and positions
	float3 hcShine      = normalize(rimDirN + g_vParam12_PS.xyz);
	float3 normalShine  = normalize(lightDirN + rimDirN);
	float3 shineFacing  = ENABLE_SHINE_SPEC ? hcShine : normalShine;
	float shineLight    = saturate(dot(shineFacing, rampBaseN));
	
	// Vfx lighting positions
	#if !DISABLE_VFX_LIGHTING
		// Distance calculations for vfx/additional light sources
		float3 LightPos = g_vParam5_PS.xyz - worldPos.xyz;
		float dist      = length(LightPos);
		float distFade  = (dist - g_vParam4_PS.x) / (g_vParam4_PS.y - g_vParam4_PS.x);
		distFade        = saturate(1.0 - distFade);

		float3 viewDirN  = normalize(viewVectorWS.xyz);
		float3 LightPosN = normalize(LightPos);
		float vfxbasePos = saturate(0.5 * (1.0 + dot(normalN, LightPosN)));
		float vfxLight   = vfxbasePos * distFade;

		float3 vxfRimLightDir = viewDirN;
		#if USE_HAIR
			vxfRimLightDir = normalize(viewDirN + lightDirOff.xyz);
		#endif
		float vfxRimPos   = saturate(1 - dot(vxfRimLightDir, normalN));
		float vfxRimLight = vfxRimPos * distFade;

		// Vfx Shine position
		float3 hcVfxShine     = normalize(viewDirN + g_vParam12_PS.xyz);
		float3 normalVfxShine = normalize(viewDirN + LightPosN);
		float3 vfxShineFacing = ENABLE_SHINE_SPEC ? hcVfxShine : normalVfxShine;

		float vfxShinePos   = saturate(dot(vfxShineFacing, normalN));
		float vfxShineLight = vfxShinePos * distFade;
	#endif

	#if USE_MSK || USE_HAIR
		float3 lightTex = Texture_ImageSampler2.Sample(State_ImageSampler2_s, UV0.xy).xyz;

		baseLight     *= lightTex.r;
		rimLight      *= lightTex.g;
		shineLight    *= lightTex.b;

		#if !DISABLE_VFX_LIGHTING
			vfxLight      *= lightTex.r;
			vfxRimLight   *= lightTex.g;
			vfxShineLight *= lightTex.b;
		#endif

	#endif

	// Get depth fade for use with threshold calculations later 
	float depthFade = ComputeDepthFade(clipPosPS.w, viewVectorWS.w);


//-------------------------
//Base color
//-------------------------
	// Get base color ramp (character DYT)
	float4 baseColor = SampleToonRamp(
						Texture_ToonColors, 
						State_ToonColors_s, 
						float2(baseLight, matIndex + rampIndex[0]), 
						ENABLE_RAMP_SMOOTHING);

	// Modifies color if flag is set. Usually for colorable clothing/CaCs
	if (ENABLE_COLOR_MOD)
		baseColor = ApplyColorMod(baseColor, g_vColor8_PS, (int)materialMode.x);


//-------------------------
//Secondary Color Overlay
//-------------------------
	// Get and apply second color only when enabled
	#if USE_D2 || USE_XVM

		// Get color mask from main texture blue channel (Basic D2 shader method)
		float colorMask = Texture_LineworkOverlay.Sample(State_LineworkOverlay_s, UV0.xy).b;
		
		// Get color mask from secondary texture red channel (D2_XVM shader method)
		#if USE_XVM
			colorMask = Texture_ImageSampler2.Sample(State_ImageSampler2_s, UV0.xy).r;
		#endif
		
		#if !DISABLE_COLORMASK_THRESHOLD
			// Pixel visibility (either fully solid or invisible) based on threshold
			colorMask = (colorMask >= (0.5 + depthFade)) ? 1.0 : 0.0;
		#endif
		
		// Get secondary color ramp (character DYT)
		float4 subColor = SampleToonRamp(
							Texture_ToonColors, 
							State_ToonColors_s, 
							float2(baseLight, matIndex + rampIndex[3]), 
							//Note: This is actually always false for the vanilla shaders.
							//Due to the likeliness of it being a bug, 
							//we'll allow it it to be smoothed as well
							ENABLE_RAMP_SMOOTHING); 
	
		// Modifies color if flag is set. Usually for colorable clothing/CaCs
		if (ENABLE_COLOR_MOD)
			subColor = ApplyColorMod(subColor, g_vColor11_PS, (int)materialMode.x);
		
		// Overlay second color over base color using mask
		baseColor = lerp(baseColor, subColor, colorMask);

	#endif


//-------------------------
//Base luminance (Rec.601)
//-------------------------
	float baseLuminance = dot(baseColor.rgb, float3(0.299f, 0.587f, 0.114f));


//-------------------------
//Multi-UV Decal Overlay
//-------------------------
	// Get and use an texture to use as a decal when enabled.
	#if USE_MUD
		
		// Clamp UVs inside 0-1 range (No tileing)
		float2 clampedUV = saturate(UV1.xy + float2(0, 1));
		float4 decalOverlay = float4(1,0,0,1);

		// Get from correct sampler given the conditions
		#if USE_MUD && (USE_XVM || USE_MSK) 
			decalOverlay = Texture_ImageSampler3.Sample(State_ImageSampler3_s, clampedUV);
		#else
			decalOverlay = Texture_ImageSampler2.Sample(State_ImageSampler2_s, clampedUV);
		#endif

		// Masks
		bool uHigh = clampedUV.x >= 1;
		bool uLow  = clampedUV.x <= 0;
		bool vHigh = clampedUV.y >= 1;
		bool vLow  = clampedUV.y <= 0;

		// Inversion
		if (uHigh) decalOverlay = 1 -decalOverlay;
		if (uLow)  decalOverlay = 1 -decalOverlay;
		if (vHigh) decalOverlay = 1 -decalOverlay;
		if (vLow)  decalOverlay = 1 -decalOverlay;
		
		baseColor *= decalOverlay;
	
	#endif


//-------------------------
//Rimlight + effect lighting
//-------------------------
	// Get rimlight param ramp (Character DYT)
	// Not used as color, instead used as strength for each actual rimlight color ramp.
	#if !USE_NRP //NRP shaders don't use this
	float2 rimParam = SampleToonRamp(
						Texture_ToonColors, 
						State_ToonColors_s, 
						float2(rimLight, matIndex + rampIndex[1]), 
						false).rg;
	#endif

	// Rimlight colors using character DYT (w/ RimParam)
	#if USE_OWR 
		float3 rimRamp = SampleToonRamp(
							Texture_ToonColors, 
							State_ToonColors_s, 
							float2(rimLight, matIndex + rampIndex[3]), 
							false).rgb;

	// Rimlight colors using character DYT (w/o RimParam)
	#elif USE_NRP
		float4 rimRamp = SampleToonRamp(
							Texture_ToonColors, 
							State_ToonColors_s, 
							float2(rimLight, matIndex + rampIndex[1]), 
							false);

	// Get rimlight color ramps from stage lighting dyt
	#else
		float3 rimRamp1 = SampleToonRamp(
							Texture_ToonRimlight, 
							State_ToonRimlight_s, 
							float2(rampBaseN.y * 0.5 + 0.5, 0.25), 
							false).rgb;

		float3 rimRamp2 = SampleToonRamp(
							Texture_ToonRimlight, 
							State_ToonRimlight_s, 
							float2(rampBaseN.x * 0.5 + 0.5, 0.75), 
							false).rgb;
	#endif

	#if !DISABLE_VFX_LIGHTING
		// Get base color effect ramp (lighting/cmn DYT)
		float3 baseEffLighting = SampleToonRamp(
									Texture_ToonOtherLight, 
									State_ToonOtherLight_s, 
									float2(vfxLight, matIndex + rampIndex[0]), 
									ENABLE_RAMP_SMOOTHING).rgb;

		// Get secondary color effect ramp (lighting/cmn DYT)
		#if USE_D2 || USE_XVM || USE_NRP
		float3 baseEffLighting2 = SampleToonRamp(
									Texture_ToonOtherLight, 
									State_ToonOtherLight_s, 
									float2(vfxLight, matIndex + rampIndex[3]), 
									//Note: This is actually always false for the vanilla shaders.
									//Due to the likeliness of it being a bug, 
									//we'll allow it it to be smoothed as well
									ENABLE_RAMP_SMOOTHING).rgb;
		#endif

		// Get effect rimlight from lighting/cmn dyt
		// This is technically unused because the ramps for this in the cmn dyt are black.
		float3 rimEffLighting = SampleToonRamp(
									Texture_ToonOtherLight, 
									State_ToonOtherLight_s, 
									float2(vfxRimLight, matIndex + rampIndex[1]), 
									false).rgb;
	#endif

	// Skip applying effect light and rimlight if true
	if (!DISABLE_LIGHTING_PASS)
	{
		// Get ramp color
		float3 rimColor = float3(0,0,0);
		
		//need to combine multiple ramps if using stage lighting DYTs
		#if !USE_OWR && !USE_NRP
			rimColor = (rimRamp1 + rimRamp2) * rimParam.xxx;
			rimColor = saturate(rimColor * 0.5f);
		//else just read it directly from character DYT if OWR/NRP shader
		#else
			rimColor = rimRamp.rgb;
		#endif
	
		// Rim range
		float maxRim = max(rimColor.r, max(rimColor.g, rimColor.b));
		float minRim = min(rimColor.r, min(rimColor.g, rimColor.b));
		float rimRange = maxRim - minRim;
	
		// Toon steps
		float3 toonSteps = (rimRange != 0.0f)
			? ComputeToonSteps(rimColor, float3(6,2,4), maxRim, rimRange)
			: 0.0.xxx;
		float maxStep = 0.166666672f * max(toonSteps.x, max(toonSteps.y, toonSteps.z));
		float2 stepRange = (rimRange != 0.0f)
			? float2(frac(maxStep), rimRange / maxRim)
			: float2(0,0);
	
		// Base color influence
		float maxBase = max(baseColor.r, max(baseColor.g, baseColor.b));
		float combinedMax = max(maxBase, maxRim);
		
		#if !USE_OWR 
			float tri = max(0.0f, 0.200f - abs(stepRange.x - 0.333f));
			float rampFactor = saturate(stepRange.y - tri);           
		#else
			float rampFactor = stepRange.y;
		#endif

		// Merge rim with base
		float rimStr = 0;
		#if !USE_NRP
			rimStr = rimParam.y;
		#else
			rimStr = rimRamp.w;
		#endif
		
		float3 mergedRim = rimStr * rimColor + baseColor.rgb;
	
		// Apply toon ramp
		float3 toonColor = ApplyToonRamp(stepRange.x, rampFactor, combinedMax, baseColor.rgb);
	
		// Final blend
		float2 rimStr2 = float2(0,0);
		#if !USE_NRP
			rimStr2 = rimParam.xy;
		#else
			rimStr2 = float2(rimRamp.w,rimLight.x);
		#endif
		
		float3 finalColorA = BlendToonColor(toonColor, baseColor.rgb, rimStr2, baseLuminance, mergedRim);

		// Lighting modifiers
		#if !DISABLE_VFX_LIGHTING
			//combine both effect lighting ramps for dual color shaders
			#if USE_D2 || USE_XVM || USE_NRP
				baseEffLighting = lerp(baseEffLighting, baseEffLighting2, colorMask);
			#endif
			
			float3 lightMod1 = g_vColor0_PS.rgb * g_vColor0_PS.a;
			float3 lightMod2 = g_vColor1_PS.rgb * g_vColor1_PS.a;
			rimEffLighting *= lightMod2;
			
			float3 finalColorB = baseEffLighting * lightMod1 + rimEffLighting;
			finalColorB *= g_vParam3_PS.yyy;
			finalColorB = finalColorA * g_vParam3_PS.xxx + finalColorB;
			
			baseColor.rgb = DISABLE_SUB_LIGHTING ? finalColorA : finalColorB;
		#else
			baseColor.rgb = finalColorA;
		#endif
	}


//-------------------------
//Linework overlay
//-------------------------
	// Linework Overlay
	float4 overlay = Texture_LineworkOverlay.Sample(State_LineworkOverlay_s, UV0.xy);
	float inkMask = overlay.a;

	float thresholdStr = 0.5;
	#if !DISABLE_LINEWORK_THRESHOLD
		// Mask threshold
		#if USE_ATH //use g_MaterialCol0_PS.w as threshold if ATH enabled
			thresholdStr = g_MaterialCol0_PS.w;
		#endif

		// Modify using depth fade
		#if USE_DFD 
			thresholdStr = thresholdStr + depthFade;
		#endif

		// Pixel visibility (either fully solid or invisible) based on threshold
		inkMask = (inkMask >= thresholdStr) ? 1.0 : 0.0;
	#endif

	float3 finalLayer = overlay.rgb;
	// Combine and color layers based on EMM params if STAIN type
	#if USE_STAIN1 || USE_STAIN2 || USE_STAIN3
		float3 firstLayer;
		float scratchMask = 0.0;
		
		float3 secondLayer;
		float bloodMask   = 0.0;
		
		// Use masks for scratch/blood if enabled
		LINEWORK_STAIN2( scratchMask = overlay.r * g_MaterialCol3_PS.x; )
		LINEWORK_STAIN3( bloodMask   = overlay.g * g_MaterialCol3_PS.y; )

		// Three-stage overlay | Linework > scratch > blood
		firstLayer = lerp(WHITE, g_MaterialCol0_PS.rgb, inkMask);

		secondLayer = firstLayer;
		LINEWORK_STAIN2(secondLayer = lerp(firstLayer, g_MaterialCol1_PS.rgb, scratchMask));
	
		finalLayer = secondLayer;
		LINEWORK_STAIN3(finalLayer = lerp(secondLayer, g_MaterialCol2_PS.rgb, bloodMask));
	#endif

	// Apply to base color
	float3 lineColor = baseColor.rgb * finalLayer;
	
    // Faded look for HC Shading
	// g_vParam11_PS.y is a strength modifier and only has a valid value when in the HC.
    float contribution = lineColor.r + lineColor.g;
	contribution = (baseColor.b * finalLayer.b) + contribution;

    bool suppressInk = (contribution <= 0.1);
    float3 fadedInk = lerp(lineColor, thresholdStr * g_vParam11_PS.yyy, suppressInk);

    // Lighting mode selection
    baseColor.rgb =  ENABLE_INK_SPEC ? fadedInk : lineColor;
	
//-------------------------
//Shine ramp overlay
//-------------------------
	// Get base shine color ramp (Character DYT)
	float3 baseShine = SampleToonRamp(
						Texture_ToonColors, 
						State_ToonColors_s, 
						float2(shineLight, matIndex + rampIndex[2]), 
						false).rgb;

	// Modifies color if flag is set.
	if (ENABLE_COLOR_MOD)
		baseShine = ApplyColorMod2(baseShine, (int)materialMode.x);

	#if !DISABLE_VFX_LIGHTING
		float3 effShine = SampleToonRamp(
							Texture_ToonOtherLight, 
							State_ToonOtherLight_s, 
							float2(vfxShineLight, matIndex + rampIndex[2]), 
							false).rgb;

		// Get effect ramp (lighting/cmn DYT)
		// This is technically unused because the ramps for this in the cmn dyt are black.
		effShine = effShine * (g_vColor2_PS.xyz * g_vColor2_PS.w) * g_vParam3_PS.y;
		effShine += baseShine * g_vParam3_PS.x;

		// Choose between base shine or base shine + effect lighting
		float3 shineBaseColor = DISABLE_SUB_LIGHTING ? baseShine : effShine;
		shineBaseColor = baseColor.rgb + shineBaseColor;
	#else
		float3 shineBaseColor = baseColor.rgb + baseShine;
	#endif

	// Setup specular style shine (for HC shading)
	#if USE_MSK || USE_HAIR
		shineLight = saturate(shineLight);
	#endif
	
	float attenuation = min(1.0f, exp2(log2(shineLight) * g_vParam13_PS.x));
	float3 shineSpecColor = shineBaseColor + attenuation * g_vParam13_PS.y;

	// Choose beween specuar or normal shine
	float3 shineColor = ENABLE_SHINE_SPEC ? shineSpecColor : shineBaseColor;

	// Setup fade param
	float3 fadeRim   = g_vFadeRim_PS.xyz;
	float3 fadeMulti = g_vFadeMulti_PS.xyz;
	float3 fadeAdd   = g_vFadeAdd_PS.xyz;
	
	#if USE_STN
		fadeRim   *= g_MaterialOffset1_PS.y;
		fadeMulti *= g_MaterialOffset1_PS.x;
		fadeAdd   *= g_MaterialOffset1_PS.z;
	#else
		fadeRim *= lightRaw;
	#endif
	
	float3 fadeColor = fadeRim;
	fadeColor += shineColor * fadeMulti;
	fadeColor += fadeAdd;

	// Final blend
	baseColor.rgb = shineColor + g_vFadeMulti_PS.w * (fadeColor - shineColor);

//-------------------------
//Final color pass and output
//-------------------------
	// Setup glow effect overlay/color
	float glowAlpha = g_vColor4_PS.w * baseColor.a;
	float defaultAlpha = ENABLE_GLOW_ALPHA ? glowAlpha : baseColor.a;

	float baseLuma = dot(baseColor.rgb, float3(0.299f, 0.587f, 0.114f));
	float3 lumaRebalanced = lerp(baseColor.rgb, baseLuma.xxx, g_vParam8_PS.x);

	float4 glowColor;
	glowColor.rgb = g_vColor4_PS.rgb * lumaRebalanced;
	float3 defaultColor = ENABLE_GLOW_COLOR ? glowColor.rgb : baseColor.rgb;

	//skip distance calculation if STN shader
	#if !USE_STN
		float distanceFade = pow(rimLight, g_vParam8_PS.z);
		glowColor = g_vColor4_PS * distanceFade;
		glowColor = saturate(glowColor * g_vParam8_PS.y + float4(defaultColor, defaultAlpha));
	#else
		glowColor = saturate(float4(defaultColor, defaultAlpha));
	#endif

	float4 tempColor = ENABLE_GLOW ? glowColor : float4(defaultColor, defaultAlpha);

	//decide if we use this new color or not
	bool useComposite = (ENABLE_DISCARD_MASK || ENABLE_GLOW);
	tempColor = useComposite ? tempColor : float4(baseColor.rgb, defaultAlpha);

	// Stripe mask (vanish/hologram effects?)
	uint stripeSize   = (uint)(g_vParam10_PS.z * 2);
	uint stripeIndex  = (uint)screenPixel.y / stripeSize;
	uint stripeLocalY = (uint)((int)screenPixel.y - (int)stripeIndex * (int)stripeSize);
	float stripeMask  = (stripeLocalY < (uint)g_vParam10_PS.z) ? 1.0 : 0.0;
	float4 stripeDelta = tempColor * g_vParam10_PS.w - tempColor;
	float4 stripedColor = tempColor + stripeMask * stripeDelta;
	
	//final base color
	float4 finalColor = ENABLE_STRIPE_MASK ? stripedColor : tempColor;

	// max/min and range
	float rgbMax = max(finalColor.r, max(finalColor.g, finalColor.b));
	float rgbMin = min(finalColor.r, min(finalColor.g, finalColor.b));
	float range = rgbMax - rgbMin;
	bool validRange = (range != 0.0);
	
	// Normalize RGB channels for tone mapping
	float3 normRGB = (rgbMax - finalColor.rgb) / range;
	normRGB = normRGB.rgb - normRGB.brg;
	normRGB = float3(6,2,4) + normRGB.rgb;
	
	// Apply mask based on channel comparison
	float3 channelMask = step(rgbMax, finalColor.rgb);
	normRGB = channelMask * normRGB;
	
	// Weighted max, fractional extraction
	float maxNorm = max(normRGB.g, max(normRGB.b, normRGB.r)) / 6.0;
	float fracNorm = frac(maxNorm);
	float rangeNorm = range / rgbMax;
	float2 maskedNorm = validRange ? float2(fracNorm, rangeNorm) : float2(0,0);
	
	// Apply shader tone curve parameters
	maskedNorm.y = g_vParam11_PS.x * maskedNorm.y;
	maxNorm = g_vParam12_PS.w * maxNorm;
	float3 curve = maskedNorm.x * float3(6,6,6) + float3(-3,-2,-4);
	curve = saturate(abs(curve) * float3(1,-1,-1) + float3(-1,2,2));
	curve = (curve - 1) * maskedNorm.y + 1;
	curve = curve * maxNorm;
	curve = exp2(g_vParam11_PS.zzz * log2(abs(curve)));
	
	// Decide final color output
	colorOut.rgb = ENABLE_LIGHTING_TONE_CURVE ? curve : finalColor.rgb;
	
	// Glare output
	float3 glareColor = g_MaterialScale0_PS.xyz * g_MaterialScale0_PS.www + g_vColor12_PS.xyz;
	glareOut.rgb = g_bOutputGlareMRT_PS.xxx ? glareColor.rgb : float3(0,0,0);
	
	// Alpha out
	colorOut.a = finalColor.a;
	glareOut.a = finalColor.a;

	return;
}