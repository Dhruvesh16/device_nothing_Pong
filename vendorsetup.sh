rm -rf hardware/qcom-caf/sm8450/display 

git clone https://github.com/Nothing-phone-2-Development/android_hardware_qcom_display.git hardware/qcom-caf/sm8450/display 

cd hardware/qcom-caf/sm8450/audio/primary-hal
git fetch https://github.com/Nothing-phone-2-Development/android_hardware_qcom_audio-ar.git 
git cherry-pick d2c5aca74a58d80970902972dc710acbbdaf4c56
cd ../../../../..

cd device/qcom/sepolicy_vndr/sm8450 
git fetch https://github.com/Nothing-phone-2-Development/android_device_qcom_sepolicy_vndr.git
git cherry-pick 7cd972ffc847631f0a892e4d13eb1def59982268 066c4d78b75d9af23bf3ff7a67c73a64c9acc810 fb4279c23fdd110ae0e13bdb72f36515242b866d
cd ../../../..

git clone https://github.com/Nothing-phone-2-Development/android_kernel_nothing_sm8475.git kernel/nothing/sm8475
git clone https://gitea.com/dhruvesh17/vendor_nothing_Pong.git vendor/nothing/Pong
