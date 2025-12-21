del "compile.log"
del "error.log"

:: -------------
:: Basic Shaders
:: -------------

:: TOON
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_STAIN1_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STAIN1_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_STAIN1_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STAIN1_DFDaa_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_STAIN1_MSK_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STAIN1_MSK_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MSK=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_STAIN1_DFD_STN
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STAIN1_DFD_STN_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_STN=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_STAIN1d2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STN1d2_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_D2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_STAIN1d2_XVM_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STN1d2_XVM_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_XVM=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TOON_STN1_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN1_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_STN1_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN1_DFDaa_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_STN1_MSK_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN1_MSK_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MSK=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_STN1_DFD_STN_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN1_DFD_STN_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_STN=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_STN1d2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN1d2_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_D2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_STN1d2_XVM_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN1d2_XVM_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_XVM=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_STAIN2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STAIN2_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_STAIN2_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STAIN2_DFDaa_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_STAIN2_MSK_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STAIN2_MSK_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MSK=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_STAIN2d2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STN2d2_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_D2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_STAIN2d2_XVM_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STN2d2_XVM_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_XVM=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TOON_STN2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN2_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_STN2_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN2_DFDaa_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_STN2_MSK_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN2_MSK_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MSK=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_STN2d2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN2d2_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_D2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_STN2d2_XVM_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN2d2_XVM_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_XVM=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_STAIN3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STAIN3_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_STAIN3_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STAIN3_DFDaa_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_STAIN3_MSK_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STAIN3_MSK_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MSK=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_STAIN3d2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STN3d2_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_D2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_STAIN3d2_XVM_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_STN3d2_XVM_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_XVM=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TOON_STN3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN3_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_STN3_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN3_DFDaa_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_STN3_MSK_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN3_MSK_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MSK=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_STN3d2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN3d2_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_D2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_STN3d2_XVM_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_STN3d2_XVM_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_XVM=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_HAIR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_HAIR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_HAIR_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_HAIR_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_HAIR_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_HAIR_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_HAIR_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_HAIR_DFDaa_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TOON_HAIR_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_HAIR_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_HAIR_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_HAIR_DFDaa_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_EYE
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_EYE_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_STAIN1 /DDISABLE_LINEWORK_THRESHOLD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_EYE_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_EYE_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_STAIN1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TOON_EYE_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_EYE_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_STAIN1 /DDISABLE_LINEWORK_THRESHOLD=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_EYE_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_EYE_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_STAIN1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_EYE_MUT0_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_EYE_MUT0_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_MUT0=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_EYE_MUT1_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_EYE_MUT1_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_MUT1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_EYE_MUT2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_EYE_MUT2_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_MUT2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_EYE_MUT3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_EYE_MUT3_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_MUT3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_EYE_MUT0d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_EYE_MUT0d3_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_EYE_MUT1d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_EYE_MUT1d3_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_EYE_MUT2d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_EYE_MUT2d3_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TOON_EYE_MUT0_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_EYE_MUT0_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_MUT0=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_EYE_MUT1_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_EYE_MUT1_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_EYE_MUT2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_EYE_MUT2_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_EYE_MUT3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_EYE_MUT3_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_EYE_MUT0d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_EYE_MUT0d3_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_EYE_MUT1d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_EYE_MUT1d3_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_EYE_MUT2d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_EYE_MUT2d3_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_ENV
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_ENV_PS.xpu" /DUSE_ENV /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON_ENV_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TN_ENV_MUD_PS.xpu" /DUSE_ENV /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log


:: -------------
:: UNIF Shaders
:: -------------

:: TOON_UNIF
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_PS.xpu" /DUSE_UNIF=1 /DDISABLE_LINEWORK_THRESHOLD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_DFD_PS.xpu" /DUSE_UNIF=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_STAIN1_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STAIN1_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN1_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STAIN1_DFDaa_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN1_DFDAth
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STAIN1_DFDAth_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_ATH=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN1_MSK_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STAIN1_MSK_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MSK=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN1d2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STN1d2_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_D2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN1d2_XVM_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STN1d2_XVM_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_XVM=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF_STN1_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN1_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN1_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN1_DFDaa_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN1_DFDAth_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN1_DFDAth_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_ATH=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN1_MSK_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN1_MSK_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MSK=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN1d2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN1d2_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_D2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN1d2_XVM_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN1d2_XVM_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_XVM=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_STAIN1_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_STN1_DFD_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN1_DFDaa_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_STN1_DFDaa_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN1_DFDAth_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_STN1_DFDAth_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_ATH=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN1_MSK_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_STN1_MSK_DFD_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MSK=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STN1d2_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU_STN1d2_DFD_NRP_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_D2=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STN1d2_XVM_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU_STN1d2_XVM_DFD_NRP_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_XVM=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_STAIN2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STAIN2_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN2_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STAIN2_DFDaa_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN2_DFDAth
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STAIN2_DFDAth_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_ATH=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN2_MSK_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STAIN2_MSK_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MSK=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN2d2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STN2d2_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_D2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN2d2_XVM_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STN2d2_XVM_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_XVM=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF_STN2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN2_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN2_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN2_DFDaa_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN2_DFDAth_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN2_DFDAth_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_ATH=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN2_MSK_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN2_MSK_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MSK=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN2d2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN2d2_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_D2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN2d2_XVM_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN2d2_XVM_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_XVM=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_STAIN2_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_STN2_DFD_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN2_DFDaa_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_STN2_DFDaa_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN2_DFDAth_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_STN2_DFDAth_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_ATH=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN2_MSK_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_STN2_MSK_DFD_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MSK=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STN2d2_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU_STN2d2_DFD_NRP_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_D2=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STN2d2_XVM_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU_STN2d2_XVM_DFD_NRP_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_XVM=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_STAIN3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STAIN3_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN3_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STAIN3_DFDaa_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN3_DFDAth
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STAIN3_DFDAth_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_ATH=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN3_MSK_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STAIN3_MSK_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MSK=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN3d2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STN3d2_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_D2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN3d2_XVM_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_STN3d2_XVM_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_XVM=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF_STN3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN3_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN3_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN3_DFDaa_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN3_DFDAth_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN3_DFDAth_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_ATH=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN3_MSK_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN3_MSK_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MSK=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN3d2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN3d2_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_D2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_STN3d2_XVM_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_STN3d2_XVM_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_XVM=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_STAIN3_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_STN3_DFD_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN3_DFDaa_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_STN3_DFDaa_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN3_DFDAth_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_STN3_DFDAth_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_ATH=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STAIN3_MSK_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_STN3_MSK_DFD_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MSK=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STN3d2_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU_STN3d2_DFD_NRP_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_D2=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_STN3d2_XVM_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU_STN3d2_XVM_DFD_NRP_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_XVM=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_HAIR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_HAIR_PS.xpu" /DUSE_UNIF=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_HAIR_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_HAIR_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_HAIR_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_HAIR_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_HAIR_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_HAIR_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_HAIR_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_HAIR_DFDaa_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_HAIR_DFDAth
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_HAIR_DFDAth_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_ATH=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_HAIR_DFD_STN
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_HAIR_DFD_STN_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_STN=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF_HAIR_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_HAIR_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_HAIR_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_HAIR_DFDaa_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_HAIR_DFDAth_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_HAIR_DFDAth_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_ATH=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_HAIR_DFD_STN_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_HAIR_DFD_STN_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_STN=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_HAIR_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_HAIR_DFD_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_HAIR_DFDaa_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_HAIR_DFDaa_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_HAIR_DFDAth_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_HAIR_DFDAth_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_ATH=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_EYE
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_EYE_PS.xpu" /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_EYE_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_EYE_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF_EYE_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_EYE_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_EYE_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_EYE_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_EYE_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_EYE_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_EYE_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_EYE_DFD_OWR_PS.xpu" /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_EYE_MUT0_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_EYE_MUT0_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_EYE_MUT1_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_EYE_MUT1_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_EYE_MUT2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_EYE_MUT2_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_EYE_MUT3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_EYE_MUT3_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_EYE_MUT0d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_EYE_MUT0d3_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_EYE_MUT1d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_EYE_MUT1d3_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_EYE_MUT2d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_EYE_MUT2d3_DFD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF_EYE_MUT0_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_EYE_MUT0_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_EYE_MUT1_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_EYE_MUT1_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_EYE_MUT2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_EYE_MUT2_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_EYE_MUT3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_EYE_MUT3_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_EYE_MUT0d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_EYE_MUT0d3_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_EYE_MUT1d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_EYE_MUT1d3_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_EYE_MUT2d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_EYE_MUT2d3_DFD_MUD_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_EYE_MUT0_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU_EYE_MUT0_DFD_NRP_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_EYE_MUT1_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU_EYE_MUT1_DFD_NRP_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_EYE_MUT2_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU_EYE_MUT2_DFD_NRP_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_EYE_MUT3_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU_EYE_MUT3_DFD_NRP_PS.xpu" /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_ENV
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_ENV_PS.xpu" /DUSE_ENV /DUSE_UNIF /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_ENV_ADD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON_UNIF_ENV_ADD_PS.xpu" /DUSE_ENV_ADD /DUSE_UNIF /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF_ENV_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_ENV_MUD_PS.xpu" /DUSE_ENV /DUSE_UNIF /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF_ENV_ADD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/T2_TU_ENV_ADD_MUD_PS.xpu" /DUSE_ENV_ADD /DUSE_UNIF /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON_UNIF_ENV_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_ENV_OWR_PS.xpu" /DUSE_ENV /DUSE_UNIF /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON_UNIF_ENV_ADD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN_UNIF_ENV_ADD_OWR_PS.xpu" /DUSE_ENV_ADD /DUSE_UNIF /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log


:: -------------
:: 0038 Shaders
:: -------------

:: TOON0038_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON0038_DFD_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON0038_STAIN1_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON0038_STAIN1_DFD_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_STAIN1_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON0038_STAIN1_DFDaa_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_STAIN1_DFD_STN
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON0038_STAIN1_DFD_STN_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_STN=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TOON0038_STN1_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_STN1_DFD_MUD_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON0038_STN1_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_STN1_DFDaa_MUD_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON0038_STAIN2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON0038_STAIN2_DFD_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TOON0038_STN2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_STN2_DFD_MUD_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON0038_UNIF
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_PS.xpu" /DUSE_0038=1 /DUSE_STAIN1 /DUSE_UNIF=1 /DDISABLE_LINEWORK_THRESHOLD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_DFD_PS.xpu" /DUSE_0038=1 /DUSE_STAIN1 /DUSE_UNIF=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON0038_UNIF_STAIN1_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STAIN1_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN1_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STAIN1_DFDaa_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN1_DFDAth
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STAIN1_DFDAth_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_ATH=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN1_MSK_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STAIN1_MSK_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MSK=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN1d2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STN1d2_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_D2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN1d2_XVM_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STN1d2_XVM_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_XVM=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF0038_STN1_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN1_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN1_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN1_DFDaa_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN1_DFDAth_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN1_DFDAth_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_ATH=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN1_MSK_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN1_MSK_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MSK=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN1d2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN1d2_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_D2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN1d2_XVM_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN1d2_XVM_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_XVM=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF0038_STAIN1_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN1_DFD_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STAIN1_DFDaa_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN1_DFDaa_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STAIN1_DFDAth_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN1_DFDAth_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_ATH=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STAIN1_MSK_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN1_MSK_DFD_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MSK=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STN1d2_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN1d2_DFD_NRP_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_D2=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STN1d2_XVM_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN1d2_XVM_DFD_NRP_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_XVM=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON0038_UNIF_STAIN2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STAIN2_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN2_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STAIN2_DFDaa_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN2_DFDAth
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STAIN2_DFDAth_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_ATH=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN2_MSK_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STAIN2_MSK_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MSK=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN2d2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STN2d2_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_D2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN2d2_XVM_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STN2d2_XVM_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_XVM=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF0038_STN2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN2_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN2_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN2_DFDaa_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN2_DFDAth_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN2_DFDAth_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_ATH=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN2_MSK_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN2_MSK_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MSK=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN2d2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN2d2_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_D2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN2d2_XVM_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN2d2_XVM_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_XVM=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF0038_STAIN2_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN2_DFD_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STAIN2_DFDaa_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN2_DFDaa_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STAIN2_DFDAth_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN2_DFDAth_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_ATH=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STAIN2_MSK_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN2_MSK_DFD_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MSK=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STN2d2_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN2d2_DFD_NRP_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_D2=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STN2d2_XVM_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN2d2_XVM_DFD_NRP_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_XVM=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON0038_UNIF_STAIN3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STAIN3_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN3_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STAIN3_DFDaa_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN3_DFDAth
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STAIN3_DFDAth_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_ATH=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN3_MSK_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STAIN3_MSK_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MSK=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN3d2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STN3d2_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_D2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_STAIN3d2_XVM_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_STN3d2_XVM_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_XVM=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF0038_STN3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN3_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN3_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN3_DFDaa_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN3_DFDAth_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN3_DFDAth_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_ATH=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN3_MSK_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN3_MSK_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MSK=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN3d2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN3d2_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_D2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_STN3d2_XVM_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN3d2_XVM_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_XVM=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF0038_STAIN3_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN3_DFD_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STAIN3_DFDaa_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN3_DFDaa_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STAIN3_DFDAth_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN3_DFDAth_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_ATH=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STAIN3_MSK_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN3_MSK_DFD_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MSK=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STN3d2_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN3d2_DFD_NRP_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_D2=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_STN3d2_XVM_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_STN3d2_XVM_DFD_NRP_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_XVM=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON0038_UNIF_HAIR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_HAIR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_HAIR_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_HAIR_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_HAIR_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_HAIR_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON0038_UNIF_HAIR_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_HAIR_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_HAIR_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_HAIR_DFDaa_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_HAIR_DFDAth
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_HAIR_DFDAth_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_ATH=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_HAIR_DFD_STN
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_HAIR_DFD_STN_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_STN=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF0038_HAIR_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_HAIR_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_HAIR_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_HAIR_DFDaa_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_HAIR_DFDAth_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_HAIR_DFDAth_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_ATH=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_HAIR_DFD_STN_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_HAIR_DFD_STN_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_STN=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF0038_HAIR_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_HAIR_DFD_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_HAIR_DFDaa_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_HAIR_DFDaa_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_HAIR_DFDAth_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_HAIR_DFDAth_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_ATH=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON0038_UNIF_EYE
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_EYE_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_EYE_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_EYE_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF0038_EYE_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_EYE_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF0038_EYE_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_EYE_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_DFD_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON0038_UNIF_EYE_MUT0_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_EYE_MUT0_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_EYE_MUT1_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_EYE_MUT1_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_EYE_MUT2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_EYE_MUT2_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_EYE_MUT3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_EYE_MUT3_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_EYE_MUT0d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_EYE_MUT0d3_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_EYE_MUT1d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_EYE_MUT1d3_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_EYE_MUT2d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_EYE_MUT2d3_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF0038_EYE_MUT0_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_MUT0_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_EYE_MUT1_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_MUT1_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_EYE_MUT2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_MUT2_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_EYE_MUT3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_MUT3_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_EYE_MUT0d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_MUT0d3_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_EYE_MUT1d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_MUT1d3_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_EYE_MUT2d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_MUT2d3_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF0038_EYE_MUT0_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_MUT0_DFD_NRP_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_EYE_MUT1_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_MUT1_DFD_NRP_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_EYE_MUT2_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_MUT2_DFD_NRP_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_EYE_MUT3_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_EYE_MUT3_DFD_NRP_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON0038_ENV
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON0038_ENV_PS.xpu" /DUSE_0038=1 /DUSE_ENV /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON0038_ENV_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_ENV_MUD_PS.xpu" /DUSE_0038=1 /DUSE_ENV /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON0038_UNIF_ENV
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_ENV_PS.xpu" /DUSE_0038=1 /DUSE_ENV /DUSE_UNIF /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON0038_UNIF_ENV_ADD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN0038_UNIF_ENV_ADD_PS.xpu" /DUSE_0038=1 /DUSE_ENV_ADD /DUSE_UNIF /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF0038_ENV_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_ENV_MUD_PS.xpu" /DUSE_0038=1 /DUSE_ENV /DUSE_UNIF /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF0038_ENV_ADD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_ENV_ADD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_ENV_ADD /DUSE_UNIF /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF0038_ENV_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_ENV_OWR_PS.xpu" /DUSE_0038=1 /DUSE_ENV /DUSE_UNIF /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF0038_ENV_ADD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU0038_ENV_ADD_OWR_PS.xpu" /DUSE_0038=1 /DUSE_ENV_ADD /DUSE_UNIF /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log


:: -------------
:: 003b Shaders
:: -------------

:: TOON003b_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON003b_DFD_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON003b_STAIN1_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON003b_STAIN1_DFD_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_STAIN1_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON003b_STAIN1_DFDaa_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_STAIN1_DFD_STN
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON003b_STAIN1_DFD_STN_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_STN=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TOON003b_STN1_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_STN1_DFD_MUD_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON003b_STN1_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_STN1_DFDaa_MUD_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON003b_STAIN2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON003b_STAIN2_DFD_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TOON003b_STN2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_STN2_DFD_MUD_PS.xpu" /DUSE_0038=1 /DDISABLE_VFX_LIGHTING=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON003b_UNIF
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_STAIN1 /DUSE_UNIF=1 /DDISABLE_LINEWORK_THRESHOLD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_STAIN1 /DUSE_UNIF=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON003b_UNIF_STAIN1_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STAIN1_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN1_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STAIN1_DFDaa_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN1_DFDAth
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STAIN1_DFDAth_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_ATH=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN1_MSK_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STAIN1_MSK_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MSK=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN1d2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STN1d2_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_D2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN1d2_XVM_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STN1d2_XVM_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_XVM=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF003b_STN1_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN1_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN1_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN1_DFDaa_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN1_DFDAth_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN1_DFDAth_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_ATH=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN1_MSK_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN1_MSK_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MSK=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN1d2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN1d2_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_D2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN1d2_XVM_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN1d2_XVM_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_XVM=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF003b_STAIN1_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN1_DFD_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STAIN1_DFDaa_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN1_DFDaa_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STAIN1_DFDAth_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN1_DFDAth_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_ATH=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STAIN1_MSK_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN1_MSK_DFD_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MSK=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STN1d2_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN1d2_DFD_NRP_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_D2=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STN1d2_XVM_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN1d2_XVM_DFD_NRP_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_XVM=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON003b_UNIF_STAIN2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STAIN2_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN2_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STAIN2_DFDaa_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN2_DFDAth
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STAIN2_DFDAth_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_ATH=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN2_MSK_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STAIN2_MSK_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MSK=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN2d2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STN2d2_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_D2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN2d2_XVM_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STN2d2_XVM_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_XVM=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF003b_STN2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN2_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN2_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN2_DFDaa_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN2_DFDAth_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN2_DFDAth_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_ATH=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN2_MSK_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN2_MSK_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MSK=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN2d2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN2d2_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_D2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN2d2_XVM_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN2d2_XVM_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_XVM=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF003b_STAIN2_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN2_DFD_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STAIN2_DFDaa_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN2_DFDaa_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STAIN2_DFDAth_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN2_DFDAth_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_ATH=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STAIN2_MSK_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN2_MSK_DFD_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_MSK=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STN2d2_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN2d2_DFD_NRP_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_D2=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STN2d2_XVM_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN2d2_XVM_DFD_NRP_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN2=1 /DUSE_XVM=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON003b_UNIF_STAIN3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STAIN3_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN3_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STAIN3_DFDaa_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN3_DFDAth
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STAIN3_DFDAth_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_ATH=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN3_MSK_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STAIN3_MSK_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MSK=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN3d2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STN3d2_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_D2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_STAIN3d2_XVM_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_STN3d2_XVM_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_XVM=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF003b_STN3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN3_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN3_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN3_DFDaa_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN3_DFDAth_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN3_DFDAth_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_ATH=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN3_MSK_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN3_MSK_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MSK=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN3d2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN3d2_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_D2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_STN3d2_XVM_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN3d2_XVM_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_XVM=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF003b_STAIN3_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN3_DFD_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STAIN3_DFDaa_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN3_DFDaa_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STAIN3_DFDAth_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN3_DFDAth_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_ATH=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STAIN3_MSK_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN3_MSK_DFD_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_MSK=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STN3d2_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN3d2_DFD_NRP_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_D2=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_STN3d2_XVM_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_STN3d2_XVM_DFD_NRP_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN3=1 /DUSE_XVM=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON003b_UNIF_HAIR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_HAIR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_HAIR_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_HAIR_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_HAIR_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_HAIR_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON003b_UNIF_HAIR_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_HAIR_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_HAIR_DFDaa
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_HAIR_DFDaa_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_HAIR_DFDAth
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_HAIR_DFDAth_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_ATH=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_HAIR_DFD_STN
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_HAIR_DFD_STN_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_STN=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF003b_HAIR_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_HAIR_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_HAIR_DFDaa_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_HAIR_DFDaa_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_HAIR_DFDAth_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_HAIR_DFDAth_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_ATH=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_HAIR_DFD_STN_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_HAIR_DFD_STN_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_STN=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF003b_HAIR_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_HAIR_DFD_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_HAIR_DFDaa_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_HAIR_DFDaa_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_HAIR_DFDAth_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_HAIR_DFDAth_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_HAIR=1 /DUSE_ATH=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON003b_UNIF_EYE
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_EYE_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_EYE_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_EYE_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF003b_EYE_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_EYE_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF003b_EYE_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_EYE_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_DFD_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON003b_UNIF_EYE_MUT0_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_EYE_MUT0_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_EYE_MUT1_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_EYE_MUT1_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_EYE_MUT2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_EYE_MUT2_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_EYE_MUT3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_EYE_MUT3_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_EYE_MUT0d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_EYE_MUT0d3_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_EYE_MUT1d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_EYE_MUT1d3_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_EYE_MUT2d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_EYE_MUT2d3_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF003b_EYE_MUT0_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_MUT0_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_EYE_MUT1_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_MUT1_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_EYE_MUT2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_MUT2_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_EYE_MUT3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_MUT3_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_EYE_MUT0d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_MUT0d3_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_EYE_MUT1d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_MUT1d3_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_EYE_MUT2d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_MUT2d3_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF003b_EYE_MUT0_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_MUT0_DFD_NRP_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_EYE_MUT1_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_MUT1_DFD_NRP_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_EYE_MUT2_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_MUT2_DFD_NRP_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_EYE_MUT3_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_EYE_MUT3_DFD_NRP_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON003b_ENV
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TOON003b_ENV_PS.xpu" /DUSE_0038=1 /DUSE_ENV /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TOON003b_ENV_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_ENV_MUD_PS.xpu" /DUSE_0038=1 /DUSE_ENV /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON003b_UNIF_ENV
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_ENV_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_ENV /DUSE_UNIF /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON003b_UNIF_ENV_ADD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN003b_UNIF_ENV_ADD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_ENV_ADD /DUSE_UNIF /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF003b_ENV_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_ENV_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_ENV /DUSE_UNIF /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF003b_ENV_ADD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_ENV_ADD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_ENV_ADD /DUSE_UNIF /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF003b_ENV_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_ENV_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_ENV /DUSE_UNIF /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF003b_ENV_ADD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU003b_ENV_ADD_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_ENV_ADD /DUSE_UNIF /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log


:: -------------
:: 4038 Shaders
:: -------------

:: TOON4038_UNIF_STAIN1_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN4038_UNIF_STAIN1_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF4038_STN1_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_STN1_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF4038_STAIN1_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_STN1_DFD_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON4038_UNIF_EYE
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN4038_UNIF_EYE_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON4038_UNIF_EYE_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN4038_UNIF_EYE_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF4038_EYE_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF4038_EYE_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF4038_EYE_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF4038_EYE_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_DFD_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON4038_UNIF_EYE_MUT0_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN4038_UNIF_EYE_MUT0_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON4038_UNIF_EYE_MUT1_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN4038_UNIF_EYE_MUT1_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON4038_UNIF_EYE_MUT2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN4038_UNIF_EYE_MUT2_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON4038_UNIF_EYE_MUT3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN4038_UNIF_EYE_MUT3_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON4038_UNIF_EYE_MUT0d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN4038_UNIF_EYE_MUT0d3_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON4038_UNIF_EYE_MUT1d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN4038_UNIF_EYE_MUT1d3_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON4038_UNIF_EYE_MUT2d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN4038_UNIF_EYE_MUT2d3_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF4038_EYE_MUT0_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_MUT0_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF4038_EYE_MUT1_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_MUT1_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF4038_EYE_MUT2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_MUT2_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF4038_EYE_MUT3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_MUT3_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF4038_EYE_MUT0d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_MUT0d3_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF4038_EYE_MUT1d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_MUT1d3_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF4038_EYE_MUT2d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_MUT2d3_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF4038_EYE_MUT0_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_MUT0_DFD_NRP_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF4038_EYE_MUT1_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_MUT1_DFD_NRP_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF4038_EYE_MUT2_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_MUT2_DFD_NRP_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF4038_EYE_MUT3_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU4038_EYE_MUT3_DFD_NRP_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log


:: -------------
:: 403b Shaders
:: -------------

:: TOON403b_UNIF_STAIN1_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN403b_UNIF_STAIN1_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF403b_STN1_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_STN1_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF403b_STAIN1_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_STN1_DFD_OWR_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_STAIN1=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON403b_UNIF_EYE
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN403b_UNIF_EYE_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON403b_UNIF_EYE_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN403b_UNIF_EYE_DFD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF403b_EYE_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF403b_EYE_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_DFD_MUD_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF403b_EYE_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DDISABLE_LINEWORK_THRESHOLD=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF403b_EYE_DFD_OWR
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_DFD_OWR_PS.xpu" /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_STAIN1 /DDISABLE_VFX_LIGHTING=1 /DUSE_OWR=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TOON403b_UNIF_EYE_MUT0_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN403b_UNIF_EYE_MUT0_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON403b_UNIF_EYE_MUT1_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN403b_UNIF_EYE_MUT1_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON403b_UNIF_EYE_MUT2_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN403b_UNIF_EYE_MUT2_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON403b_UNIF_EYE_MUT3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN403b_UNIF_EYE_MUT3_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON403b_UNIF_EYE_MUT0d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN403b_UNIF_EYE_MUT0d3_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON403b_UNIF_EYE_MUT1d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN403b_UNIF_EYE_MUT1d3_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TOON403b_UNIF_EYE_MUT2d3_DFD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TN403b_UNIF_EYE_MUT2d3_DFD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_D3=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: T2_TNUF403b_EYE_MUT0_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_MUT0_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF403b_EYE_MUT1_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_MUT1_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF403b_EYE_MUT2_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_MUT2_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF403b_EYE_MUT3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_MUT3_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF403b_EYE_MUT0d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_MUT0d3_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF403b_EYE_MUT1d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_MUT1d3_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: T2_TNUF403b_EYE_MUT2d3_DFD_MUD
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_MUT2d3_DFD_MUD_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_D3=1 /DUSE_MUD=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log

:: TNUF403b_EYE_MUT0_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_MUT0_DFD_NRP_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT0=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF403b_EYE_MUT1_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_MUT1_DFD_NRP_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT1=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF403b_EYE_MUT2_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_MUT2_DFD_NRP_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT2=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
:: TNUF403b_EYE_MUT3_DFD_NRP
fxc /E main /T ps_5_0 %1 /Fo "Output_XPU/TU403b_EYE_MUT3_DFD_NRP_PS.xpu" /DDISABLE_VFX_LIGHTING=1 /DUSE_0038=1 /DUSE_UNIF=1 /DUSE_DFD=1 /DUSE_MUT3=1 /DUSE_NRP=1 /nologo >> compile.log 2>&1 | FINDSTR "error" > error.log
