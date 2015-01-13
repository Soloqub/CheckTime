//
//  ViewController.swift
//  CheckTimer
//
//  Created by Денис Львович on 23.11.14.
//  Copyright (c) 2014 Денис Львович. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var time: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        checkTime()
        let newTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "checkTime", userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func checkTime(){
        //let today = NSDate()
        let dateFormatter = NSDateFormatter()
        let dateFormatterString = NSDateFormatter.dateFormatFromTemplate("HH:mm:ss", options: 0, locale: NSLocale.systemLocale())
        dateFormatter.dateFormat = dateFormatterString
        time.text = dateFormatter.stringFromDate(NSDate())
        //newTimer.t
        //println(dateFormatter.stringFromDate(today))
    }
}

