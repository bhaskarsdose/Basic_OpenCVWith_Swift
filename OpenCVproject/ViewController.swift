//
//  ViewController.swift
//  OpenCVproject
//
//  Created by pitARa on 29/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var delhi: UIImageView!
    
    //    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //  self.label.text = "\(OpenCVWrapper.openCVVersionString())"
        //  print("\(OpenCVWrapper.openCVVersionString())")
        
    
    }

    @IBAction func button(_ sender: Any) {
        
        delhi.image = OpenCVWrapper.makeGray(from: delhi.image!)
    
    }
    
}

