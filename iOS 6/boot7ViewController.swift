//
//  boot7ViewController.swift
//  iOS 6
//
//  Created by Victor Lobe on 08.06.17.
//  Copyright © 2017 Victor Lobe. All rights reserved.
//

import UIKit

class boot7ViewController: UIViewController {

    var emptyString = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @objc func timeToMoveOn() {
        self.performSegue(withIdentifier: "boot7", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "boot7") {
            
            
            
            print("Segue Performed")
            print("boot7")

        }
        
    }
    
}


