//
//  SecondViewController.swift
//  iTodo
//
//  Created by Akshay Khole on 6/30/15.
//  Copyright (c) 2015 Awesome Apps. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var itemTextField: UITextField!
    
    @IBAction func addItemButton(sender: AnyObject) {
        toDoList.append(itemTextField.text)
        itemTextField.text = ""
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        itemTextField.resignFirstResponder()
        return true
    }

}

