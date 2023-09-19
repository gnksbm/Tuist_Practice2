import ProjectDescription

let projectName = "Practice"
let orgName = "https://github.com/gnksbm/Tuist_Practice2"
let bundleID = "com.GeonSeobKim.TuistPractice2"
let infoPlist: [String: InfoPlist.Value] = [
    "CFBundleDisplayName": "MyApp",
    "CFBundleShortVersionString": "1.0",
    "CFBundleVersion": "1.0.0",
    "LSApplicationQueriesSchemes": ["kakaokompassauth", "kakaolink", "kakao$(KAKAO_APP_KEY)"],
]
let config = Settings.settings(configurations: [
    .debug(name: "Debug", xcconfig: .relativeToRoot("\(projectName)/Resources/Config/Secrets.xcconfig")),
    .release(name: "Release", xcconfig: .relativeToRoot("\(projectName)/Resources/Config/Secrets.xcconfig")),
])

let project = Project(
    name: projectName,
    organizationName: orgName,
    packages: [
        .remote(url: "https://github.com/Alamofire/Alamofire", requirement: .upToNextMajor(from: "5.0.0")),
        .remote(url: "https://github.com/kakao/kakao-ios-sdk", requirement: .upToNextMajor(from: "2.0.0")),
    ],
    targets: [
        .init(
            name: "Practice",
            platform: .iOS,
            product: .app,
            bundleId: bundleID,
            infoPlist: .extendingDefault(with: infoPlist),
            sources: ["\(projectName)/Sources/**"],
            resources: ["\(projectName)/Resources/**"],
//            scripts: [.pre(path: "Scripts/SwiftLintRunScript.sh", arguments: [], name: "SwiftLint")],
            dependencies: [
                .package(product: "Alamofire"),
                .package(product: "KakaoSDKUser"),
                .package(product: "KakaoSDKAuth"),
                .package(product: "KakaoSDKCommon"),
            ],
            settings: config
        )
    ]
)
