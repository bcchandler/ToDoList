//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Chris Chandler on 7/3/16.
//  Copyright © 2016 Chris Chandler. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtTask: UITextField!
    @IBOutlet weak var txtDetail: UITextField!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveTask(sender: UIButton) {
        taskMgr.addTask(txtTask.text!, desc: txtDetail.text!)
        self.view.endEditing(true)
        txtTask.text = ""
        txtDetail.text = ""
        self.tabBarController?.selectedIndex = 0
    }

    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }

    
    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {// called when 'return' key pressed. return NO to ignore.
    
        textField.resignFirstResponder();
        
        return true
        
}


}

