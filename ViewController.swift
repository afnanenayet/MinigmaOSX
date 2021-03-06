//
//  ViewController.swift
//  Minigma
//
//  Created by Afnan Enayet on 8/14/15.
//  Copyright (c) 2015 Afnan Enayet. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        self.view.window!.title = "Minigma" //setting title of window to app name
    }
    
    @IBOutlet weak var messageInput: NSTextField!
    @IBOutlet weak var inputField: NSTextField!
    @IBOutlet weak var userPassword: NSSecureTextField!
    
  
    @IBAction func encodePressed(sender: AnyObject) { //gets password, message ->encode
        //TODO: add encode function
        let encode_instance = cipher(); //instance of cipher class
        print(encode_instance.encode(userPassword.stringValue, messageInput.stringValue));
        print("Encode button was pressed."); //DEBUG, Encode button press
        
    }
    
    
    @IBOutlet weak var outputField: NSScrollView!
    @IBAction func sendMessage(sender: AnyObject) {
        //TODO: add share function
        print("Send/share button was pressed"); //DEBUG, share button pressed
    }
    @IBAction func decodePressed(sender: AnyObject) { //gets password, message -> decode
        print("Decode button was pressed.") //DEBUG, Decode button pressed
        let decode_instance = cipher(); //creating instance of the cipher class
        print(decode_instance.decode(userPassword.stringValue, inputField.stringValue));
    }
    

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

