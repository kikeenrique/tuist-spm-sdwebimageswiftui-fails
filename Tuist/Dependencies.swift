import ProjectDescription

func makeBaseSettings() -> SettingsDictionary {
    SettingsDictionary()
        .swiftOptimizeObjectLifetimes(false)
        .bitcodeEnabled(true)
        .merging([
            "OTHER_LDFLAGS": "-ObjC",
            "ALWAYS_SEARCH_USER_PATHS": "NO",
        ])
}

func makeTargetSettings() -> [String: SettingsDictionary] {
    var settings: [String: SettingsDictionary] = [:]
    let allYourDependencyNames  = ["SDWebImage"] // add all other dependency names here, this is at least what I am doing
    allYourDependencyNames.forEach { dependency in
                settings[dependency] = makeBaseSettings()
        settings[dependency] = ["HEADER_SEARCH_PATHS": "$(inherited) $(SRCROOT)/SDWebImage/include/SDWebImage $(SRCROOT)/SDWebImage/Private $(SRCROOT)/SDWebImage/Core $(SRCROOT)/WebImage"]
    }

    return settings
}

func makeFrameworkSettings() -> Settings {
    .settings(
        base: makeFrameworkBaseSettings()
    )
}

// this is a workaround for named configuration that are different to "Debug" and "Release".
func makeFrameworkBaseSettings() -> SettingsDictionary {
    [
        "FRAMEWORK_SEARCH_PATHS": "$(inherited) $(SYMROOT)"
    ]
}

let dependencies = Dependencies(
    swiftPackageManager: .init(
        [.remote(url: "https://github.com/SDWebImage/SDWebImageSwiftUI/",
                 requirement: .upToNextMajor(from: "2.0.2")
                )
        ],
        baseSettings: makeFrameworkSettings(),
        targetSettings: makeTargetSettings())
)
