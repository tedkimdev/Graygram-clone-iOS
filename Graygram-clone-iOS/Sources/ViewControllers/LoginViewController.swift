//
//  LoginViewController.swift
//  Graygram-clone-iOS
//
//  Created by aney on 2017. 3. 12..
//  Copyright © 2017년 Taedong Kim. All rights reserved.
//

import UIKit

final class LoginViewController: UIViewController {

  // MARK: UI
  fileprivate let usernameTextField = UITextField().then {
    $0.borderStyle = .roundedRect
    $0.placeholder = "Username"
    $0.font = UIFont.systemFont(ofSize: 14)
  }
  fileprivate let passwordTextField = UITextField().then {
    $0.borderStyle = .roundedRect
    $0.placeholder = "Password"
    $0.font = UIFont.systemFont(ofSize: 14)
  }

  
  // MARK: View Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.addSubview(self.usernameTextField)
    self.view.addSubview(self.passwordTextField)
    
    self.usernameTextField.snp.makeConstraints { make in
      make.top.equalTo(self.topLayoutGuide.snp.bottom).offset(15)
      make.left.equalTo(15)
      make.right.equalTo(-15)
      make.height.equalTo(30)
    }
    
    self.passwordTextField.snp.makeConstraints { make in
      make.top.equalTo(self.usernameTextField.snp.bottom).offset(15)
      make.left.right.height.equalTo(self.usernameTextField)
    }
  }
  
}
