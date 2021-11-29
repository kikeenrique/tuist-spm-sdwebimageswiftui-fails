import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: .init(
        [
            .remote(url: "https://github.com/SDWebImage/SDWebImageSwiftUI/",
                    requirement: .upToNextMajor(from: "2.0.2"))
        ]
    )
)
