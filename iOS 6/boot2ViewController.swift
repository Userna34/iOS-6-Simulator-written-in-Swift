//
//  boot2ViewController.swift
//  iOS 6
//
//  Created by Victor Lobe on 08.06.17.
//  Copyright © 2017 Victor Lobe. All rights reserved.
//

import UIKit

class boot2ViewController: UIViewController {
    
    
    var emptyString = String()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func timeToMoveOn() {
        self.performSegue(withIdentifier: "boot2", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "boot2") {
            
            
            
            print("Segue Performed")
            print("boot2")

        }
        
    }
    
}

