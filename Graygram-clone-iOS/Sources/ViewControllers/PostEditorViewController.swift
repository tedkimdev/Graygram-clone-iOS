//
//  PostEditorViewController.swift
//  Graygram-clone-iOS
//
//  Created by aney on 2017. 3. 14..
//  Copyright © 2017년 Taedong Kim. All rights reserved.
//

import UIKit

class PostEditorViewController: UIViewController {
  
  // MARK: Properties
  
  fileprivate let image: UIImage
  
  
  // MARK: Initializing
  
  init(image: UIImage) {
    self.image = image
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  // MARK: View Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
}