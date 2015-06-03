//
//  InterfaceController.swift
//  MeatCooker WatchKit Extension
//
//  Created by Loi Wu on 6/3/15.
//  Copyright (c) 2015 Loi Wu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var timer: WKInterfaceTimer!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    @IBAction func onTimerButton() {
        println("onTimerButton")
        let countDown: NSTimeInterval = 20
        let date = NSDate(timeIntervalSinceNow: countDown)
        timer.setDate(date)
        timer.start()
    }

}
