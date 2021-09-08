//
//  SecondViewController.swift
//  week2
//
//  Created by 이유리 on 2021/09/07.
//

import UIKit

class SecondViewController: UIViewController {


    @IBOutlet weak var tvData: UILabel!
    
    var text : String = "" //property
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tvData.text = text
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
