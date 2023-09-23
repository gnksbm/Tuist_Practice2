import SwiftUI
//import KakaoSDKAuth
//import FirebaseCore

class AppDelegate: UIResponder, UIApplicationDelegate {
//    func application(_ application: UIApplication,
//                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        print(Bundle.main.bundlePath)
//        let filePath = Bundle.main.path(forResource: "GoogleService-Info", ofType: "plist")!
//        let options = FirebaseOptions(contentsOfFile: filePath)
//        FirebaseApp.configure(options: options!)
//        return true
//    }
//    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
//        if AuthApi.isKakaoTalkLoginUrl(url) {
//            return AuthController.handleOpenUrl(url: url)
//        }
//        return false
//    }
}

@main
struct PracticeApp: App {
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
