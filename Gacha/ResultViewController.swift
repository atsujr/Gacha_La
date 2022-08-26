//
//  ResultViewController.swift
//  Gacha
//
//  Created by Atsuhiro Muroyama on 2022/08/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var backgroundview: UIImageView!
    @IBOutlet weak var monsterimageview: UIImageView!
    var number: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        number = Int.random(in: 0...9)
        // Do any additional setup after loading the view.
        if number == 9 {
            monsterimageview.image = UIImage(named: "monster010")
            backgroundview.image = UIImage(named: "bg_gold")
            //UIImageViewクラスに宣言されたimageは、UIImage型だから、型変換してる。
            
        }else if number > 6 {
            monsterimageview.image = UIImage(named: "monster006")
            backgroundview.image = UIImage(named: "bg_red")
        }else{
            monsterimageview.image = UIImage(named: "monster003")
            backgroundview.image = UIImage(named: "bg_blue")
        }
    }
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
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
