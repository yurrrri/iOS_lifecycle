//
//  SceneDelegate.swift
//  week2
//
//  Created by 이유리 on 2021/09/06.
//

//scene lifecycle을 관리하는 부분
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    private var privacyProtectWindow:UIWindow?

//가장 먼저 어느 scene을 보여줄지를 결정함
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
        
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
        print("sceneWillEnterForeground")
        callBackgroundImage(false)
        
    }
    
    //active 상태 : 사용자가 앱을 정상적으로 사용할 수 있는 상태
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
        print("sceneDidBecomeActive")
        callBackgroundImage(false)
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
        print("sceneDidDisconnect")
        callBackgroundImage(true)
    }

    //inactive 상태 : 사용자가 앱을 사용하기 어려운, 비활성화되어있는 상태
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
        //홈버튼을 누르거나 다른 애플리케이션으로 이동할때, 앱 스위처에서 주로발생
        print("sceneWillResignActive")
        callBackgroundImage(true)
    }


    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state
        print("sceneDidEnterBackground")
        
        callBackgroundImage(true)
    }
    
    func callBackgroundImage(_ bShow: Bool) {
        
        let TAG_BG_IMG = -101

        let backgroundView = window?.rootViewController?.view.window?.viewWithTag(TAG_BG_IMG)

        if bShow {

            if backgroundView == nil {

                //여기서 보여주고 싶은 뷰 자유롭게 생성
                let bgView = UIView()
                bgView.frame = UIScreen.main.bounds
                bgView.tag = TAG_BG_IMG
                bgView.backgroundColor = .black

                let lbl = UILabel()
                lbl.frame = UIScreen.main.bounds
                lbl.textAlignment = .center
                lbl.font = UIFont.systemFont(ofSize: 30)
                lbl.textColor = .white
                lbl.numberOfLines = 0
                lbl.text = "다녀오세요~!"
                bgView.addSubview(lbl)

                window?.rootViewController?.view.window?.addSubview(bgView)
            }
        } else {

            if let backgroundView = backgroundView {
                backgroundView.removeFromSuperview()
            }
        }
    }
}
