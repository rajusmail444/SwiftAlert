//
//  ViewController.swift
//  HelloWorld
//
//  Created by Rajesh Billakanti on 02/07/16.
//  Copyright © 2016 RAjay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func someHandler(alert: UIAlertAction!) {
        print("hi:",alert)
    }
    @IBAction func showMessage(){
        let alertController = UIAlertController(title: "Welcome to MyFirstApp", message: "Hello World", preferredStyle: UIAlertControllerStyle.Alert);
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        let cancel : UIAlertAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {(alert: UIAlertAction!) in print("hi:",alert)})
        alertController.addAction(cancel)
        alertController.addTextFieldWithConfigurationHandler({(textField:UITextField) in
            textField.placeholder = "User Name"
        })
        alertController.addTextFieldWithConfigurationHandler({(textField:UITextField) in
            textField.placeholder = "Password"
            textField.secureTextEntry = true;
        })
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showActionSheet(){
        let alertController = UIAlertController(title: "Welcome to MyFirstApp", message: "Hello World", preferredStyle: UIAlertControllerStyle.ActionSheet);
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        alertController.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {(alert: UIAlertAction!) in print("hi:",self.someHandler(alert))}))
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    

}

