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
    self.collectionView.backgroundColor = .white
    self.collectionView.frame = self.view.bounds
    self.collectionView.dataSource = self
    self.collectionView.delegate = self
    self.collectionView.register(PostCardCell.self, forCellWithReuseIdentifier: "cardCell")
    self.view.addSubview(self.collectionView)
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
        self.collectionView.reloadData()
        
      case .failure(let error):
        print(error)
      }
    }
  }

}


// MARK: - UICollectionViewDataSource

extension FeedViewController: UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return self.posts.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! PostCardCell
    cell.configure(post: self.posts[indexPath.item])
    return cell
  }
  
}


// MARK: - UICollectionViewDelegateFlowLayout

extension FeedViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let cellWidth = collectionView.frame.width
    return PostCardCell.size(width: cellWidth, post: self.posts[indexPath.item])
  }
}