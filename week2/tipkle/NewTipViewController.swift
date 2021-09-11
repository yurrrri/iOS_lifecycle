//
//  NewTipViewController.swift
//  week2
//
//  Created by 이유리 on 2021/09/11.
//

import UIKit

class NewTipViewController: UIViewController {
    
    var iswriting = false
    
    let notiCenter = NotificationCenter.default
    private var foregroundObserver: NSObjectProtocol?

    @IBOutlet weak var searchField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad()")

        // Do any additional setup after loading the view.
        self.navigationItem.title = "새 게시물"
        
        foregroundObserver = notiCenter.addObserver(forName: UIApplication.willEnterForegroundNotification,
                                                          object: nil,
                                                          queue: .main) {
                                                          [unowned self] notification in
            // background에서 foreground로 돌아오는 경우 실행 될 코드
            if (!searchField.text!.isEmpty){
                let alert = UIAlertController(title:"계속 입력하시겠습니까?",
                    message: nil,
                    preferredStyle: UIAlertController.Style.alert)
                //2. 확인 버튼 만들기
                let cancle = UIAlertAction(title: "확인", style: .default, handler: nil)
                //3. 확인 버튼을 경고창에 추가하기
                alert.addAction(cancle)
                //4. 경고창 보이기
                present(alert,animated: true,completion: nil)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear()")
        
        

//        if self.searchField.hasText{
//            let newtipAlert = UIAlertController(title:"계속 입력하시겠습니까?",
//                message: nil,
//                preferredStyle: UIAlertController.Style.alert)
//            //2. 확인 버튼 만들기
//            let cancel = UIAlertAction(title: "확인", style: .default, handler: nil)
//            //3. 확인 버튼을 경고창에 추가하기
//            newtipAlert.addAction(cancel)
//            //4. 경고창 보이기
//            present(newtipAlert,animated: true,completion: nil)
//        }
    }
    
    //주로 화면에 표시되는 애니메이션을 그릴때
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear()")
    }
    
    //뷰 계층에서 사라지기 직전
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear()")
    }
    
    //화면이 뷰계층에서 제거 -> 메모리도 같이 제거해줌
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidisappear()")
        notiCenter.removeObserver(self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
