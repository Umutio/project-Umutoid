//
//  ViewControllerMacera.swift
//  project Umutoid
//
//  Created by UMUT on 4.03.2023.
//

import UIKit

class ViewControllerMacera: UIViewController {
    @IBOutlet weak var umut: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let switchState = DataStore3.shared.switchState
        let switch1Value = switchState[0] ? "ON" : "OFF"
        umut.text = switch1Value



    }
    

 
}
