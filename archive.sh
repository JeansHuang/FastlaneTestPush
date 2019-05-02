echo "Start Archive"

fastlane ios dev

PNAME="FastlaneTest"
USERNAME=$(whoami)
FILEPATH="/Users/${USERNAME}/Desktop/${PNAME}_dev/${PNAME}.ipa"
uKey="8b84e6bd38bc32b587175eb0fc6e0bde"
_api_key="fdb774c1fe825cab8c0d536a86ea0b3f"

curl -F "file=@${FILEPATH}" -F "uKey=${uKey}" -F "_api_key=${_api_key}" https://www.pgyer.com/apiv1/app/upload
