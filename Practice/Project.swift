import ProjectDescription

let appName = "Practice"
let orgName = "https://github.com/gnksbm/Tuist_Practice2"
let bundleID = "com.GeonSeobKim.TuistPractice2"
let project = Project(
    name: appName,
    organizationName: orgName,
    packages: [
//        .remote(url: "https://github.com/firebase/firebase-ios-sdk", requirement: .upToNextMajor(from: "10.0.0"))
    ],
    targets: [
        .init(
            name: "Practice",
            platform: .iOS,
            product: .app,
            bundleId: bundleID,
            sources: ["\(appName)/Sources/**"],
            resources: ["\(appName)/Resources/**"],
            dependencies: [
//                .package(product: "FirebaseAnalytics"),
//                .package(product: "FirebaseMessaging"),
//                .package(product: "FirebaseFirestore"),
//                .package(product: "FirebaseFirestoreSwift"),
            ]
        )
    ]
)
