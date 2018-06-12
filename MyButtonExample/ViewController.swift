//
//  ViewController.swift
//  MyButtonExample
//
//  Created by VicktorManuel on 6/11/18.
//  Copyright © 2018 VicktorManuel. All rights reserved.
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


    @IBAction func buttonAction(_ sender: Any) {
        let button:MyButtonUIButton = sender as! MyButtonUIButton
        button.moveRehilete()
    }
    
}

