//
//  ViewControllerMisafir.swift
//  project Umutoid
//
//  Created by UMUT on 3.03.2023.
//

import UIKit

class ViewControllerMisafir: UIViewController {
    
    @IBOutlet weak var karsilama: UILabel!
    
    
    @IBOutlet weak var giris: UIButton!

    @IBOutlet weak var segmentControl: UISegmentedControl!
    let key = "selectedSegmentIndex"

    @IBOutlet var viewBackground: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var username: UILabel!
    override func viewDidLoad() {
        karsilama.text = "Welcome : \(DataStore.shared.myData!)"

        super.viewDidLoad()
        giris.isEnabled = false

       
        
        
     
        // Do any additional setup after loading the view.
        
        
    }
    
    
    @IBAction func charSecim(_ sender: UISegmentedControl) {
        
        let selectedSegmentIndex = sender.selectedSegmentIndex
            let selectedData = DataStore2.shared.selectSegment(at: selectedSegmentIndex)
            DataStore2.shared.myData2 = selectedData

        
        if sender.selectedSegmentIndex == 0 {
            image.image = UIImage(named: "foto1")
            giris.isEnabled = true

            
        }
        else if sender.selectedSegmentIndex == 1 {
            image.image = UIImage(named: "foto2")
            giris.isEnabled = true

        }
        else if sender.selectedSegmentIndex == 2 {
            image.image = UIImage(named: "foto3")
            giris.isEnabled = true

        }
        else if sender.selectedSegmentIndex == 3 {
            image.image = UIImage(named: "foto4")
            giris.isEnabled = true

        }
        switch segmentControl.selectedSegmentIndex {
        case 0:
            viewBackground.backgroundColor = .white
        case 1:
            viewBackground.backgroundColor = .white
        case 2:
            viewBackground.backgroundColor = .white
        default:
            viewBackground.backgroundColor = .white
        }
        
    }
   
    @IBAction func giris(_ sender: Any) {
        

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
           
           let gidilecekViewcontroller = storyboard.instantiateViewController(withIdentifier: "char")
           as! ViewControllerchar
           
           navigationController?.pushViewController(gidilecekViewcontroller, animated: true)
        
    }
}




