//
//  MainTabBarController.swift
//  Graygram-clone-iOS
//
//  Created by aney on 2017. 3. 12..
//  Copyright © 2017년 Taedong Kim. All rights reserved.
//

import UIKit

final class MainTabBarController: UITabBarController {
  
  let feedViewController = FeedViewController()
  
  init() {
    super.init(nibName: nil, bundle: nil)
    self.viewControllers = [
      UINavigationController(rootViewController: self.feedViewController),
    ]
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
