//
//  HomeViewcontroller.swift
//  week2
//
//  Created by 이유리 on 2021/09/09.
//

import UIKit


class HomeViewcontroller: UIViewController {
    
    var first = false

    //버튼 누르면 글작성하는 부분으로 이동
    @IBAction func newTipButton(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(identifier: "newTipViewController") as? NewTipViewController
        else { return }
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    //초기화할 부분이 있으면 여기서 초기화
    //앱이 실행되면서 전체 중 한번만 실행되는 부분
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alert = UIAlertController(title:"환영합니다!",
            message: nil,
            preferredStyle: UIAlertController.Style.alert)
        //2. 확인 버튼 만들기
        let cancle = UIAlertAction(title: "확인", style: .default, handler: nil)
        //3. 확인 버튼을 경고창에 추가하기
        alert.addAction(cancle)
        //4. 경고창 보이기
        present(alert,animated: true,completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(first)
        
        if (first){
            let reAlert = UIAlertController(title:"다시 오셨군요!",
                message: nil,
                preferredStyle: UIAlertController.Style.alert)
            //2. 확인 버튼 만들기
            let cancel = UIAlertAction(title: "확인", style: .default, handler: nil)
            //3. 확인 버튼을 경고창에 추가하기
            reAlert.addAction(cancel)
            //4. 경고창 보이기
            present(reAlert,animated: true,completion: nil)
        }
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
