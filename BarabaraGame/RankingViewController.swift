//
//  RankingViewController.swift
//  BarabaraGame
//
//  Created by 中村薫乃 on 2022/05/13.
//

import UIKit

class RankingViewController: UIViewController {
    
    @IBOutlet var rankingLabel1:  UILabel! //1位のスコアを表示するラベル
    @IBOutlet var rankingLable2:  UILabel! //2位のスコアを表示するラベル
    @IBOutlet var rankingLable3:  UILabel! //3位のスコアを表示するラベル
    
    let defaults: UserDefaults = UserDefaults.standard  //スコアの保存をするための変数

    override func viewDidLoad() {
        //"score1"というキーの値を取得して表示
        rankingLabel1.text = String(defaults.integer(forKey: "score1"))
        //"score2"というキーの値を取得して表示
        rankingLable2.text = String(defaults.integer(forKey: "score2"))
        //"score3"というキーの値を取得して表示
        rankingLable3.text = String(defaults.integer(forKey: "score3"))
    }
        
    @IBAction func toTop()  {
        self.dismiss(animated: true, completion: nil)
    }

        // Do any additional setup after loading the view.
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
