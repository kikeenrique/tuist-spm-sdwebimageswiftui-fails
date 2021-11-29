DESTINATION = "platform=iOS Simulator,name=iPhone 13,OS=15.1"
build-app:
	xcodebuild -workspace TuistSpmSdwebimageswiftuiFails.xcworkspace -scheme App -config Debug -destination $(DESTINATION) -sdk iphonesimulator clean build
test-app:
	xcodebuild -workspace TuistSpmSdwebimageswiftuiFails.xcworkspace -scheme App -config Debug -destination $(DESTINATION) -sdk iphonesimulator clean test