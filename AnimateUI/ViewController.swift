//
//  ViewController.swift
//  AnimateUI
//
//  Created by Vishwa Raj on 10/12/16.
//  Copyright © 2016 innov8. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var actInd = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    
    @IBAction func stop(_ sender: UIBarButtonItem) {
        actInd.stopAnimating()
    }

    @IBAction func start(_ sender: UIBarButtonItem) {
        actInd = UIActivityIndicatorView(frame: CGRect(x:0,y:0, width:50, height:50)) as UIActivityIndicatorView
        actInd.center = self.view.center
        actInd.hidesWhenStopped = true
        actInd.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        view.addSubview(actInd)
        actInd.startAnimating()
        
    }
}

