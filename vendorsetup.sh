rm -rf hardware/qcom-caf/sm8450/display 

git clone https://github.com/Nothing-phone-2-Development/android_hardware_qcom_display.git hardware/qcom-caf/sm8450/display 

cd hardware/qcom-caf/sm8450/audio/primary-hal
git fetch https://github.com/Nothing-phone-2-Development/android_hardware_qcom_audio-ar.git lineage-21.0-caf-sm8450
git cherry-pick d2c5aca74a58d80970902972dc710acbbdaf4c56
git fetch https://github.com/Nothing-phone-2-Development/android_hardware_qcom_audio-ar.git lineage-22.0-caf-sm8450
git cherry-pick d41ba854a239b9d00e85a4b3367ace65dd2f4c47
cd ../../../../..

cd device/qcom/sepolicy_vndr/sm8450 
git fetch https://github.com/Nothing-phone-2-Development/android_device_qcom_sepolicy_vndr.git
git cherry-pick e63f86c2e43b021f34a1258e068964e72a91c395
cd ../../../..

git clone --depth=1 https://github.com/HELLBOY017/kernel_nothing_sm8475.git -b inline-2 kernel/nothing/sm8475 && cd kernel/nothing/sm8475 && git submodule init && git submodule update --remote && cd ../../..
git lfs clone https://gitea.com/dhruvesh17/vendor_nothing_Pong.git vendor/nothing/Pong