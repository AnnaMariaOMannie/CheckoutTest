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
    var shoppingListItems:String = ""
    
    var oranges:String = "orange, "
    var apples:String = "apple, "

    @IBOutlet weak var myShopping: UILabel!
    @IBOutlet weak var totalCostLbl: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }



    @IBAction func buyAppleBtnPressed(_ sender: Any) {

        runningCost += apple
        totalCostLbl.text = String(runningCost)
        shoppingListItems += apples
        myShopping.text = String(shoppingListItems)
    }
    
    @IBAction func buyOrangeBtnPressed(_ sender: Any) {
        runningCost += orange
        totalCostLbl.text = String(runningCost)
        shoppingListItems += oranges
        myShopping.text = String(shoppingListItems)

    }

    @IBAction func AppleOfferUsed(_ sender: Any) {

        runningCost += 2*apple/2
        totalCostLbl.text = String(runningCost)
        shoppingListItems += apples + apples
        myShopping.text = String(shoppingListItems)
    }
    
    
    @IBAction func orangeOfferUsed(_ sender: Any) {
        runningCost += 3*orange - orange
        totalCostLbl.text = String(runningCost)
        shoppingListItems += oranges + oranges + oranges
        myShopping.text = String(shoppingListItems)
    }

    @IBAction func resetShopping(_ sender: Any) {

          runningCost = 0
         totalCostLbl.text = "0"
        myShopping.text = "My Shopping:"
        shoppingListItems = ""
    }


}


