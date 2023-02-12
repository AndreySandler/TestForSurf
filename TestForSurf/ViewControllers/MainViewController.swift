//
//  ViewController.swift
//  TestForSurf
//
//  Created by Andrey Sandler on 11.02.2023.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var mainView: UIView!
    @IBOutlet var sendApplicationButton: UIButton!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 32
        mainView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    override func viewWillLayoutSubviews() {
        sendApplicationButton.layer.cornerRadius = sendApplicationButton.frame.height / 2
    }
}

