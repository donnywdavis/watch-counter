//
//  InterfaceController.swift
//  WatchCounter WatchKit Extension
//
//  Created by Donny Davis on 3/3/16.
//  Copyright © 2016 Donny Davis. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var labelValue: WKInterfaceLabel!
    var number = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        updateLabel(0)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func increaseLabelValue() {
        updateLabel(++self.number)
    }
    
    @IBAction func decreaseLabelValue() {
        updateLabel(--self.number)
    }
    
    func updateLabel(number: Int) {
        labelValue.setText(String(number))
    }
}
