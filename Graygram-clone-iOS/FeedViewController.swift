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
  
  var posts: [Post] = []
  
  let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

  override func viewDidLoad() {
    super.viewDidLoad()
    self.fetchPost()
  }
  
  // MARK: Networking
  
  fileprivate func fetchPost() {
    Alamofire.request("https://api.graygram.com/feed").responseJSON { response in
      switch response.result {
      case .success(let value):
        guard let json = value as? [String: Any] else { return }
        let postsJSONArray = json["data"] as? [[String: Any]] ?? []
        self.posts = [Post](JSONArray: postsJSONArray) ?? []
        
      case .failure(let error):
        print(error)
      }
    }
  }

}

