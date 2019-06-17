//
//  ThirdVC.swift
//  NotificationCenterTest
//
//  Created by Subham Padhi on 17/06/19.
//  Copyright © 2019 Subham Padhi. All rights reserved.
//

import Foundation
import UIKit

class ThirdVC: UIViewController {
    
    let addValue = 200
    
    override func viewDidLoad() {
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setUpView()
        
        
    }
    
    var nextScreenButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0, green: 0.4352941176, blue: 0.9529411765, alpha: 1)
        button.setTitle("Continue", for: .normal)
        button.titleLabel?.font = UIFont(name: "Nunito-SemiBold", size: 20)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.addTarget(self, action: #selector(ThirdVC.nextButtonPressed), for: .touchUpInside)
        return button
    }()
    
    @objc func nextButtonPressed() {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "increment"), object: nil, userInfo: ["Value" : addValue])
    }
    
    func setUpView() {
        view.addSubview(nextScreenButton)
        
        nextScreenButton.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        nextScreenButton.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        nextScreenButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        nextScreenButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
}
