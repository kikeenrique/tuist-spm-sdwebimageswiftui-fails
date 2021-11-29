import ProjectDescription
import ProjectDescriptionHelpers

/*
                +-------------+
                |             |
                |     App     | Contains TuistSpmSdwebimageswiftuiFails App target and TuistSpmSdwebimageswiftuiFails unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project.app(name: "TuistSpmSdwebimageswiftuiFails",
                          platform: .iOS,
                          additionalTargets: ["TuistSpmSdwebimageswiftuiFailsKit", "TuistSpmSdwebimageswiftuiFailsUI"])
