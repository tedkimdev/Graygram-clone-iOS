//
//  FeedViewController.swift
//  Graygram-clone-iOS
//
//  Created by aney on 2017. 3. 12..
//  Copyright © 2017년 Taedong Kim. All rights reserved.
//

import UIKit
import Alamofire

class FeedViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.fetchPost()
  }
  
  // MARK: Networking
  
  fileprivate func fetchPost() {
    Alamofire.request("https://api.graygram.com/feed").responseJSON { response in
      switch response.result {
      case .success(let value):
        print(value)
        
      case .failure(let error):
        print(error)
      }
    }
  }

}

