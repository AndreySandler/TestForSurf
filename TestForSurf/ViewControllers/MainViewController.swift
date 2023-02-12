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
    @IBOutlet var selectButtonsStackView: UIStackView!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    override func viewWillLayoutSubviews() {
        sendApplicationButton.layer.cornerRadius = sendApplicationButton.frame.height / 2
    }
    
    // MARK: - IBActions
    @IBAction func selectButtonPressedDidTapped(_ sender: UIButton) {
        if sender.isSelected == false {
            sender.isSelected = true
            sender.backgroundColor = .darkGray
            sender.tintColor = .white
        } else {
            sender.isSelected = false
            sender.backgroundColor = .systemGroupedBackground
            sender.tintColor = .black
        }
    }
    
    @IBAction func sendApplicationButtonDidTapped(_ sender: UIButton) {
        showALert(
            title: "Поздравляем!",
            message: "Ваша заявка успешно отправлена!"
        )
    }
}

    // MARK: - UIAlertController
    extension MainViewController {
        private func showALert(title: String, message: String, textField: UITextField? = nil) {
            let alert = UIAlertController(
                title: title,
                message: message,
                preferredStyle: .alert
            )
            let closeAction = UIAlertAction(title: "Закрыть", style: .default) { _ in
                textField?.text = ""
            }
            
            alert.addAction(closeAction)
            present(alert, animated: true)
        }
        
    }

