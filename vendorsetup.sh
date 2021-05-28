export SKIP_ABI_CHECKS=true
export SKIP_API_CHECKS=true
rm -rf hardware/qcom-caf/msm8998
git clone https://github.com/PixelExperience/hardware_qcom-caf_msm8998_display.git hardware/qcom-caf/msm8998/display
git clone https://github.com/PixelExperience/hardware_qcom-caf_msm8998_media.git hardware/qcom-caf/msm8998/media
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-18.1-caf-msm8998 hardware/qcom-caf/msm8998/audio
rm -rf vendor/qcom/opensource/data-ipa-cfg-mgr
git clone https://github.com/LineageOS/android_vendor_qcom_opensource_data-ipa-cfg-mgr.git -b lineage-18.1 vendor/qcom/opensource/data-ipa-cfg-mgr
rm -rf packages/resources/devicesettings
git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git -b lineage-18.1 packages/resources/devicesettings

# OP Apps & Launcher
#git clone https://gitlab.com/ElectroPerf/vendor_addons_oneplus_apps.git -b OOS11 vendor/addons/oneplus/apps
#git clone https://github.com/ElectroPerf/vendor_oplauncher.git -b 11 vendor/oplauncher

# ZenParts
git clone https://github.com/SonalSingh18/android_packages_apps_ZenParts.git packages/apps/ZenParts

# Shady Launcher
git clone https://github.com/dhimanparas20/vendor_shadylauncher.git vendor/shadylauncher

# GCC
git clone --depth=1 https://github.com/mvaisakh/gcc-arm64.git prebuilts/gcc/linux-x86/aarch64/aarch64-elf
git clone --depth=1 https://github.com/mvaisakh/gcc-arm.git prebuilts/gcc/linux-x86/arm/arm-eabi

# Cache
export USE_CCACHE=1 && ccache -M 50G && export CONFIG_STATE_NOTIFIER=y