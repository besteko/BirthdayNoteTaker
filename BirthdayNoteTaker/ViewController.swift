//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Beste Kocaoglu on 3.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nametext: UITextField!
    
    @IBOutlet weak var birthdaytext: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName=UserDefaults.standard.object(forKey: "name")
        let storedBirthday=UserDefaults.standard.object(forKey: "birthday")
          
        // Casting - as? vs. as!
        
        
        if let newName = storedName as? String{
            nameLabel.text=newName
        }
        
        if let newBirthday=storedBirthday as? String{
            birthdayLabel.text=newBirthday
        }
    }

    @IBAction func saveClicked(_ sender: Any) {
        
        
        
        UserDefaults.standard.set(nametext.text, forKey: "name")
        UserDefaults.standard.set(birthdaytext.text, forKey: "birthday")



        nameLabel.text="Name:\(nametext.text!)"
        birthdayLabel.text="Birthday :\(birthdaytext.text!)"
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text="Birthday: "
        }
    }
    
}

