//
//  ViewController.swift
//  TestForSurf
//
//  Created by Andrey Sandler on 11.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet var sendApplicationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 32
        mainView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }


}

