//
//  ViewController.swift
//  Commenter
//
//  Created by Kameron Haramoto on 1/26/17.
//  Copyright © 2017 Kameron Haramoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var textField: UITextField!
    var commentArray: Array<Comment> = []
    var commentToAdd: String = ""
    
    @IBAction func addButtonPressed(_ sender: Any) {
        if (textField.text == ""){
            
        }
        else{
            let c = Comment(newComment: textField.text!)
            commentArray.append(c)
            textField.text = ""
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    @IBAction func printAllPressed(_ sender: Any) {
        //Print all to console by date.
        for item in commentArray {
            print(item.comment + " " + item.date)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

