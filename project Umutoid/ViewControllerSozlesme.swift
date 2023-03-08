//
//  ViewControllerSozlesme.swift
//  project Umutoid
//
//  Created by UMUT on 3.03.2023.
//

import UIKit

class ViewControllerSozlesme: UIViewController {
    
    @IBOutlet weak var labelKabul: UILabel!
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.mySwitch.isEnabled = true
        }
        button.isEnabled = false
        mySwitch.isEnabled = false
           
           // Add observer for text view content offset changes
           NotificationCenter.default.addObserver(self, selector: #selector(textViewDidScroll(_:)), name: UITextView.textDidChangeNotification, object: textView)
       }

       // Function to check if the text view is scrolled to the bottom
       func isTextViewScrolledToBottom() -> Bool {
           let visibleHeight = textView.bounds.height - textView.contentInset.top - textView.contentInset.bottom
           let y = textView.contentOffset.y + textView.contentInset.top
           let threshold = max(0.0, textView.contentSize.height - visibleHeight)
           return y >= threshold
       }

       // Function called when the text view content offset changes
       @objc func textViewDidScroll(_ notification: Notification) {
           // Check if the text view is scrolled to the bottom
           if isTextViewScrolledToBottom() {
               // Enable switch button if scrolled to bottom
               mySwitch.isEnabled = true
           } else {
               // Disable switch button if not scrolled to bottom
               mySwitch.isEnabled = false
           }
        
        
    }
    
    @IBAction func kabul(_ sender: Any) {
        if mySwitch.isOn {
            labelKabul.backgroundColor = .green
            button.isEnabled = true
        } else {
            labelKabul.backgroundColor = .red
            button.isEnabled = false
        }
    }
    @IBAction func devam(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewcontroller = storyboard.instantiateViewController(withIdentifier: "misafir")
        as! ViewControllerMisafir
        
        navigationController?.pushViewController(gidilecekViewcontroller, animated: true)
    }
    
    }
