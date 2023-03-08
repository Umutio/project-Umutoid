//
//  ViewControllerkayit.swift
//  project Umutoid
//
//  Created by UMUT on 3.03.2023.
//

import UIKit

class ViewControllerkayit: UIViewController {
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var sifre1: UITextField!
    
    @IBOutlet weak var sifre2: UITextField!
    @IBOutlet weak var mail1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        indicator.isHidden = true


        // Do any additional setup after loading the view.
    }
    
    @IBAction func signinkayit(_ sender: Any) {
        
        if sifre1.text == sifre2.text
            
        {
            DataStore.shared.myData = name.text
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let gidilecekViewcontroller = storyboard.instantiateViewController(withIdentifier: "umut")
            as! ViewControllerSozlesme
            
            self.navigationController?.pushViewController(gidilecekViewcontroller, animated: true)
            

        
        }
            sifre1.backgroundColor = .green
            sifre2.backgroundColor = .green
            
            indicator.startAnimating()
            indicator.isHidden = false
       
        }else{
            sifre1.backgroundColor = .red
            sifre2.backgroundColor = .red
            indicator.isHidden = true

        }

    }
    
}
