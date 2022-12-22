personal: compile_personal
	ios-deploy -I -d -b ./build/Debug-iphoneos/Flowmodoro.app

compile_personal:
	xcodebuild -target Flowmodoro -configuration Debug -sdk iphoneos

# For booted simulator
simulator: install_sim
	xcrun simctl launch booted ca.ammarahmed.Flowmodoro

install_sim: compile_sim
	xcrun simctl install booted ./build/Debug-iphonesimulator/Flowmodoro.app

compile_sim:
	xcodebuild -target Flowmodoro -configuration Debug -sdk iphonesimulator
