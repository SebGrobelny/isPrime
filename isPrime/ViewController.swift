//
//  ViewController.swift
//  isPrime
//
//  Created by Sebastian Grobelny on 3/21/16.
//  Copyright © 2016 Sebastian Grobelny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var PrimeBar: UITextField!
    @IBOutlet weak var isPrime: UILabel!
    
    
    @IBAction func Correct(sender: AnyObject) {
        
        if let myPrime = Int(PrimeBar.text!){
        isPrime.text =  String(myPrime)+" is a Prime"
        
        if (myPrime != 2 && myPrime != 1){
        
        for( var i = 2; i < myPrime; i++)
        {
            if( myPrime%i == 0)
            {
                isPrime.text = String(myPrime)+" is not a Prime"
            }
        }
    
        }
        }
    
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

