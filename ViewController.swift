//
//  ViewController.swift
//  Commenter
//
//  Created by Kameron Haramoto on 1/26/17.
//  Copyright © 2017 Kameron Haramoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    var commentArray: Array<Any>
    
    @IBAction func addButtonPressed(_ sender: Any) {
        if (textField.text == ""){
            
        }
        else{
            var newComment = Comment(newComment: textField.text!)
            commentArray.append(newComment: Comment.self)
        }
    }
    
    @IBAction func printAllPressed(_ sender: Any) {
        //Print all to console by date.
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

