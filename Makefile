DESTINATION = "platform=iOS Simulator,name=iPhone 13,OS=15.2"
build-app:
	xcodebuild -workspace TuistSpmSdwebimageswiftuiFails.xcworkspace -scheme TuistSpmSdwebimageswiftuiFails -config Debug -destination $(DESTINATION) -sdk iphonesimulator clean build
test-app:
	xcodebuild -workspace TuistSpmSdwebimageswiftuiFails.xcworkspace -scheme TuistSpmSdwebimageswiftuiFails -config Debug -destination $(DESTINATION) -sdk iphonesimulator clean test
