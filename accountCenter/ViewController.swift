//
//  ViewController.swift
//  accountCenter
//
//  Created by pnkbksh on 28/12/23.
//

import UIKit

import UIKit

class ViewController: UIViewController {
    let textField1 = UITextField()
    let textField2 = UITextField()
    let doneButton = UIButton()
    let welcomeLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add text fields
        textField1.frame = CGRect(x: 50, y: 100, width: 200, height: 40)
        textField1.borderStyle = .roundedRect
        textField1.accessibilityIdentifier = "text1"
        view.addSubview(textField1)

        textField2.frame = CGRect(x: 50, y: 160, width: 200, height: 40)
        textField2.borderStyle = .roundedRect
        textField2.accessibilityIdentifier = "text2"
        view.addSubview(textField2)

        // Add button
        doneButton.frame = CGRect(x: 50, y: 220, width: 100, height: 40)
        doneButton.setTitle("Done", for: .normal)
        doneButton.backgroundColor = .blue
        doneButton.accessibilityIdentifier = "Done"
        view.addSubview(doneButton)

        // Add label
        welcomeLabel.frame = CGRect(x: 50, y: 280, width: 300, height: 40)
        welcomeLabel.text = "Welcome"
        welcomeLabel.accessibilityIdentifier = "WelcomeLabel"
        view.addSubview(welcomeLabel)
    }
}
