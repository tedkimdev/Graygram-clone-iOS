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
    
    Alamofire.request("https://api.graygram.com/feed").responseJSON { response in
      print(response)
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

