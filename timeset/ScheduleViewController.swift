//
//  ScheduleViewController.swift
//  timeset
//
//  Created by owner on 2018/02/14.
//  Copyright © 2018年 owner. All rights reserved.
//

import UIKit
import RealmSwift

class ScheduleViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "setWeekSegue"{
            print("DEBUG: setWeekSegue")
            //let scheduleViewController:ScheduleViewController = segue.destination as! ScheduleViewController
            //let setWeekViewController:SetWeekViewController = segue.destination as! SetWeekViewController
      
            
            //setWeekViewController.week = taskArray[indexPath!.row]
        }
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
