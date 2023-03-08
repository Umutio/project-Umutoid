//
//  ViewControllerGiris.swift
//  project Umutoid
//
//  Created by UMUT on 3.03.2023.
//

import UIKit

class ViewControllerGiris: UIViewController {
    @IBOutlet weak var userName: UITextField!
    
    override func viewDidLoad() {
    

        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: Any) {
        DataStore.shared.myData = userName.text
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewcontroller = storyboard.instantiateViewController(withIdentifier: "misafir")
        as! ViewControllerMisafir
        
        navigationController?.pushViewController(gidilecekViewcontroller, animated: true)
    }
    
    @IBAction func signin(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewcontroller = storyboard.instantiateViewController(withIdentifier: "kayit")
        as! ViewControllerkayit
        
        navigationController?.pushViewController(gidilecekViewcontroller, animated: true)
    }
    @IBAction func guest(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewcontroller = storyboard.instantiateViewController(withIdentifier: "misafir")
        as! ViewControllerMisafir
        
        navigationController?.pushViewController(gidilecekViewcontroller, animated: true)
    }
    
}
