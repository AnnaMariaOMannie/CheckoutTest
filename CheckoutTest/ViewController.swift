//
//  ViewController.swift
//  CheckoutTest
//
//  Created by Anna Kowal on 23/08/2018.
//  Copyright © 2018 Anna K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let apple:Double = 0.60
    let orange:Double = 0.25

    var runningCost:Double = 0


    @IBOutlet weak var totalCostLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buyAppleBtnPressed(_ sender: Any) {

        runningCost += apple
        totalCostLbl.text = String(runningCost)
    }
    
    @IBAction func buyOrangeBtnPressed(_ sender: Any) {
        runningCost += orange
        totalCostLbl.text = String(runningCost)
    
    }
}

