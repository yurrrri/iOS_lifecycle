//
//  ViewController.swift
//  week2
//
//  Created by 이유리 on 2021/09/06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var propertyTextField: UITextField!
    @IBAction func sendData(_ sender: Any) {
        //네비게이션 뷰 컨트롤러로 데이터를 전달하는 방식
//        guard let vc = storyboard?.instantiateViewController(identifier: "secondViewController") as? SecondViewController else { return }
//
//        vc.text = self.propertyTextField.text ?? ""
//
//        self.navigationController?.pushViewController(vc, animated: true)
        //present로 전달하는 방식
        let vc = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
       // let vc = SecondViewController(nibName:"SecondViewController", bundle: nil)
//        let vc = SecondViewController()
        
        vc.text = self.propertyTextField.text ?? ""

        self.present(vc, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
