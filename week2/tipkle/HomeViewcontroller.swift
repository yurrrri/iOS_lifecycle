//
//  HomeViewcontroller.swift
//  week2
//
//  Created by 이유리 on 2021/09/09.
//

import UIKit


class HomeViewcontroller: UIViewController {

    @IBOutlet weak var btnWrite: UIButton!
    @IBAction func writeTip(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let logo = UIImage(named: "logo.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
        //let button = UIButton()

        // Do any additional setup after loading the view.
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
