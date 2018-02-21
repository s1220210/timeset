//
//  SetWeekViewController.swift
//  timeset
//
//  Created by owner on 2018/02/14.
//  Copyright © 2018年 owner. All rights reserved.
//

import UIKit
import RealmSwift

class SetWeekViewController: UIViewController {
    var enable: [Int] = [1, 1, 1, 1, 1, 1, 1]
    
    @IBOutlet weak var sunbtn: UIButton!
    @IBOutlet weak var monbtn: UIButton!
    @IBOutlet weak var tuebtn: UIButton!
    @IBOutlet weak var wedbtn: UIButton!
    @IBOutlet weak var thubtn: UIButton!
    @IBOutlet weak var fribtn: UIButton!
    @IBOutlet weak var satbtn: UIButton!
    
    
    let viewController:ViewController = ViewController()
    let scheduleViewController:ScheduleViewController = ScheduleViewController()
    
    //var week: Week!
    var week = Week()
    let realm = try! Realm()
    
    override func viewDidLoad() {
        print("DEBUG: viewDidLoad")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Realmに保存されてるDog型のオブジェクトを全て取得
        let w = realm.objects(Week.self)
        // 先頭の犬を取り出し
        if let week = w.first {
            // データを更新
           // try! realm.write() {
                self.enable[0] = week.w0
                self.enable[1] = week.w1
                self.enable[2] = week.w2
                self.enable[3] = week.w3
                self.enable[4] = week.w4
                self.enable[5] = week.w5
                self.enable[6] = week.w6
           // }
        }
        print("viewDidLoad enable:\(enable)")
        /*try! realm.write() {
            realm.add(week)
        }*/
        print("DEBUG: viewDidLoad_")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("DEBUG: viewWillDisappear")
        print("enable\(enable)")
        // Realmに保存されてるDog型のオブジェクトを全て取得
        let weeks = realm.objects(Week.self)
        // 先頭の犬を取り出し
        if let w = weeks.first {
            // データを更新
            try! realm.write() {
                w.w0 = self.enable[0]
                w.w1 = self.enable[1]
                w.w2 = self.enable[2]
                w.w3 = self.enable[3]
                w.w4 = self.enable[4]
                w.w5 = self.enable[5]
                w.w6 = self.enable[6]
            }
        }
        
        // ためしに名前を表示
        let dogs = realm.objects(Week.self)
        for dog in dogs {
            print("name: \(dog.w0)")
        }
        super.viewWillDisappear(animated)
        print("DEBUG: viewWillDisappear_")
    }
    
    @IBAction func sunbtn(_ sender: Any) {
        if enable[0]==0{
            let image = UIImage(named: "pi") // hogeImageという名前の画像
            sunbtn.setBackgroundImage(image, for: .normal) // 背景に画像をset
            enable[0]=1
        }
        else{
            let image = UIImage(named: "nezumi") // hogeImageという名前の画像
            sunbtn.setBackgroundImage(image, for: .normal) // 背景に画像をset
            enable[0]=0
            
        }
    }
    
    @IBAction func monbtn(_ sender: Any) {
        if enable[1]==0{
            let image = UIImage(named: "lgr") // hogeImageという名前の画像
            monbtn.setBackgroundImage(image, for: .normal) // 背景に画像をset
            enable[1]=1
        }
        else{
            let image = UIImage(named: "nezumi") // hogeImageという名前の画像
            monbtn.setBackgroundImage(image, for: .normal) // 背景に画像をset
            enable[1]=0
            
        }
    }
    @IBAction func tuebtn(_ sender: Any) {
        if enable[2]==0{
            print(enable[2])
            let image = UIImage(named: "or") // hogeImageという名前の画像
            tuebtn.setBackgroundImage(image, for: .normal) // 背景に画像をset
            enable[2]=1
        }
        else{
            print(enable[2])
            let image = UIImage(named: "nezumi") // hogeImageという名前の画像
            tuebtn.setBackgroundImage(image, for: .normal) // 背景に画像をset
            enable[2]=0
            
        }
    }
    @IBAction func wedbtn(_ sender: Any) {
        if enable[3]==0{
            let image = UIImage(named: "bl") // hogeImageという名前の画像
            wedbtn.setBackgroundImage(image, for: .normal) // 背景に画像をset
            enable[3]=1
        }
        else{
            let image = UIImage(named: "nezumi") // hogeImageという名前の画像
            wedbtn.setBackgroundImage(image, for: .normal) // 背景に画像をset
            enable[3]=0
            
        }
    }
    @IBAction func thubtn(_ sender: Any) {
        if enable[4]==0{
            let image = UIImage(named: "gr") // hogeImageという名前の画像
            thubtn.setBackgroundImage(image, for: .normal) // 背景に画像をset
            enable[4]=1
        }
        else{
            let image = UIImage(named: "nezumi") // hogeImageという名前の画像
            thubtn.setBackgroundImage(image, for: .normal) // 背景に画像をset
            enable[4]=0
            
        }
    }
    @IBAction func fribtn(_ sender: Any) {
        if enable[5]==0{
            let image = UIImage(named: "ye") // hogeImageという名前の画像
            fribtn.setBackgroundImage(image, for: .normal) // 背景に画像をset
            enable[5]=1
        }
        else{
            let image = UIImage(named: "nezumi") // hogeImageという名前の画像
            fribtn.setBackgroundImage(image, for: .normal) // 背景に画像をset
            enable[5]=0
            
        }
    }
    @IBAction func satbtn(_ sender: Any) {
        if enable[6]==0{
            let image = UIImage(named: "vi") // hogeImageという名前の画像
            satbtn.setBackgroundImage(image, for: .normal) // 背景に画像をset
            enable[6]=1
        }
        else{
            let image = UIImage(named: "nezumi") // hogeImageという名前の画像
            satbtn.setBackgroundImage(image, for: .normal) // 背景に画像をset
            enable[6]=0
            
        }
    }
    @IBAction func offbtn(_ sender: Any) {
        print("offbtn")
        for i in 0...6{
            enable[i]=1
        }
        sunbtn((Any).self)
        monbtn((Any).self)
        tuebtn((Any).self)
        wedbtn((Any).self)
        thubtn((Any).self)
        fribtn((Any).self)
        satbtn((Any).self)
    }

    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
