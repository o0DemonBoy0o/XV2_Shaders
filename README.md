# DBXV2 Shader Decomp
XV2 Pixel Shaders that have been decompiled and re-written for readability and easier use.
I'm still learning HLSL, so it may not be the best, but I did the best I could to closely replicate the original math and such as best I could.
"TOON_Base.hlsl" has macros that can be used on compile to enable the various different shader types XV2 uses.

Macros are:
- USE_UNIF
- USE_DFD
- USE_ENV
- USE_ENV_ADD
- USE_HAIR
- USE_STN
- USE_STAIN1
- USE_STAIN2
- USE_STAIN3
- USE_MUT0
- USE_MUT1
- USE_MUT2
- USE_MUT3
- USE_ATH
- USE_MSK
- USE_D2
- USE_D3
- USE_XVM
- USE_MUD
- USE_OWR
- USE_NRP
- USE_0038
- DISABLE_LINEWORK_THRESHOLD
- DISABLE_COLORMASK_THRESHOLD
- DISABLE_VFX_LIGHTING

This isn't meant to compile into a perfect 1:1 copy of the original shaders, but to have something that still does exactly what the originals do.
at least as closely as I can manage with my experience.

--Compiling--
The shaders can be compiled using the batch script by dragging the HLSL onto it. Make sure you have a "Output_XPU" folder folder in the same directory as the script.
