//
//  ViewController.swift
//  project Umutoid
//
//  Created by UMUT on 3.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func giris(_ sender: Any) {  let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewcontroller = storyboard.instantiateViewController(withIdentifier: "giris")
        as! ViewControllerGiris
        
        navigationController?.pushViewController(gidilecekViewcontroller, animated: true)
    }
    
}

