//
//  ViewControllerchar.swift
//  project Umutoid
//
//  Created by UMUT on 3.03.2023.
//

import UIKit

class ViewControllerchar: UIViewController {

    @IBOutlet weak var nameButton: UIButton!
    @IBOutlet weak var names: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var name: UIButton!
    @IBOutlet weak var giris: UIButton!
    @IBOutlet weak var puan: UILabel!
    @IBOutlet weak var switch6: UISwitch!
    @IBOutlet weak var switch5: UISwitch!
    @IBOutlet weak var switch4: UISwitch!
    @IBOutlet weak var switch3: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch1: UISwitch!
    var points = 10
    
    


    override func viewDidLoad(){
    func switchValueChanged(_ sender: UISwitch) {
        DataStore3.shared.switchState = [switch1.isOn, switch2.isOn, switch3.isOn, switch4.isOn, switch5.isOn, switch6.isOn]
    }
    
        let images = [
            UIImage(named: "foto1"),
            UIImage(named: "foto2"),
            UIImage(named: "foto3"),
            UIImage(named: "foto4")]
        // Seçilen segmentin dizideki indeksini yükle
                let selectedSegmentIndex = DataStore2.shared.selectedSegmentIndex

                // ImageView'e ilgili resmi ata
                imageView.image = images[selectedSegmentIndex]
        
        super.viewDidLoad()
     
                DataStore2.shared.segmentData = ["Jack", "Darly", "Rick", "Melanie"]

                // Kaydedilen veriyi yükle
                if let selectedData2 = DataStore2.shared.myData2 {
                    names.text = selectedData2
                } else {
                    names.text = ""
                }


        
     
       

        // Do any additional setup after loading the view.
    }
    @IBAction func s1(_ sender: UISwitch) {
        DataStore3.shared.switchState[0] = switch1.isOn

        if sender.isOn {
        points -= 2
    } else {
        points += 2
    }
    puan.text = "Coin : \(points)"
    }
    
    @IBAction func s2(_ sender: UISwitch) {
        DataStore3.shared.switchState[0] = switch2.isOn

        if sender.isOn {
        points -= 2
    } else {
        points += 2
    }
    puan.text = "Coin : \(points)"
    }
    
    @IBAction func s3(_ sender: UISwitch) {
        DataStore3.shared.switchState[0] = switch3.isOn

        if sender.isOn {
        points -= 4
    } else {
        points += 4
    }
    puan.text = "Coin : \(points)"
    }
    
    @IBAction func s4(_ sender: UISwitch) {
        DataStore3.shared.switchState[0] = switch4.isOn

        if sender.isOn {
        points -= 4
    } else {
        points += 4
    }
    puan.text = "Coin : \(points)"
    }
    @IBAction func s5(_ sender: UISwitch) {
        DataStore3.shared.switchState[0] = switch5.isOn

        if sender.isOn {
        points -= 2
    } else {
        points += 2
    }
    puan.text = "Coin : \(points)"
    }
    @IBAction func s6(_ sender: UISwitch) {
        DataStore3.shared.switchState[0] = switch6.isOn

        if sender.isOn {
        points -= 2
    } else {
        points += 2
    }
    puan.text = "Coin : \(points)"
    }
    @IBAction func gir(_ sender: Any) {
        if points < 0 {
                    switch1.setOn(false, animated: true)
                    switch2.setOn(false, animated: true)
                    switch3.setOn(false, animated: true)
                    switch4.setOn(false, animated: true)
                    switch5.setOn(false, animated: true)
                    switch6.setOn(false, animated: true)
                    points = 10
            puan.text = "Coin : \(points)"
                }else{
            giris.isEnabled = true
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
               
               let gidilecekViewcontroller = storyboard.instantiateViewController(withIdentifier: "macera")
               as! ViewControllerMacera
               
               navigationController?.pushViewController(gidilecekViewcontroller, animated: true)
        }
    }
    @IBAction func random(_ sender: Any) {
        let nicknames = ["Ava", "Mia", "Riley", "Emma", "Aria", "Luna", "Evelyn", "Layla", "Olivia", "Amelia", "Harper", "Charlotte", "Sophia", "Chloe", "Ella", "Victoria", "Avery", "Aurora", "Abigail", "Hazel", "Nora", "Scarlett", "Isla", "Penelope", "Mila", "Aaliyah", "Camila", "Audrey", "Bella", "Genesis", "Leah", "Zoe", "Stella", "Lucy", "Sofia", "Everly", "Madison", "Eleanor", "Savannah", "Aubrey", "Addison", "Brooklyn", "Natalie", "Emilia", "Grace", "Hannah", "Elizabeth", "Lila", "Elena", "Victoria", "Nova", "Maya", "Naomi", "Valentina", "Eliza", "Aurora", "Liliana", "Aria", "Brielle", "Claire", "Ivy", "Ariana", "Lilah", "Adalyn", "Allison", "Samantha", "Caroline", "Sarah", "Aaliyah", "Kennedy", "Gabriella", "Alice", "Gianna", "Sadie", "Hailey", "Eva", "Emery", "Autumn", "Piper", "Willow", "Ruby", "Serenity", "Isabelle", "Violet", "Kaylee", "Audrina", "Arianna", "Kylie", "Makayla", "Nevaeh", "Madelyn", "Skylar", "Julia","Emma", "Liam", "Olivia", "Noah", "Ava", "Ethan", "Sophia", "Logan", "Isabella", "Mason", "Mia", "Lucas", "Charlotte", "Jacob", "Amelia", "Jackson", "Harper", "Evelyn", "Jack", "Abigail", "Aiden", "Emily", "Caden", "Madison", "Grayson", "Ella", "Leo", "Avery", "Ryan", "Scarlett", "Nora", "Caleb", "Chloe", "Henry", "Victoria", "Eli", "Aria", "Sebastian", "Grace", "Michael", "Zoe", "Benjamin", "Hannah", "William", "Lily", "James", "Natalie", "Daniel", "Lila", "Owen", "Ellie", "Alexander", "Stella", "Nicholas", "Aurora", "Miles", "Maya", "Elijah", "Nova", "Cameron", "Leah", "Connor", "Penelope", "Evelyn", "Sofia", "Caroline", "Asher", "Eleanor", "Landon", "Audrey", "Gabriel", "Violet", "Anthony", "Bella", "Jonathan", "Aaliyah", "Jaxon", "Claire", "Lincoln", "Lucy", "Christopher", "Savannah", "Joshua", "Genesis", "Andrew", "Aubrey", "Theodore", "Camila", "David", "Elena", "Isaac", "Naomi", "Joseph", "Sadie", "Carter", "Emilia", "Mateo", "Autumn"]
           let randomNickname = nicknames.randomElement()
      print(randomNickname!)
        names.text = randomNickname

    }
    }
