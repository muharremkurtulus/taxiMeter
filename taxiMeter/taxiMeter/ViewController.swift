//
//  ViewController.swift
//  taxiMeter
//
//  Created by Muharrem Kurtuluş on 31.01.2024.
//

import UIKit

var startFee = 24.55
var kmFee = 17.61
var taxiFee = 0.0


class ViewController: UIViewController {
    
@IBOutlet weak var distance: UITextField!
    
@IBOutlet weak var fee: UILabel!
    
    
override func viewDidLoad() {
    super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
@IBAction func calculation_clicked(_ sender: Any) {
        
distance.resignFirstResponder()
    
    if let distance = Double(distance.text!) {
        
        taxiFee = startFee + (kmFee * distance)
        let roundedValue = round(taxiFee * 100) / 100
        fee.text = String(format: "%.2f TL", roundedValue)
            
        }
        
    }
    
}
