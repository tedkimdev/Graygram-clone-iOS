//
//  PostCardCell.swift
//  Graygram-clone-iOS
//
//  Created by aney on 2017. 3. 12..
//  Copyright © 2017년 Taedong Kim. All rights reserved.
//

import UIKit
import Kingfisher
import ManualLayout

class PostCardCell: UICollectionViewCell {
  
  fileprivate let photoView = UIImageView()
  fileprivate let messageLabel = UILabel()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    self.photoView.backgroundColor = .gray
    self.messageLabel.numberOfLines = 3
    
    self.contentView.addSubview(self.photoView)
    self.contentView.addSubview(self.messageLabel)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func configure(post: Post) {
    self.backgroundColor = .lightGray
    
    if let id = post.photoID,
      let url = URL(string:  "https://graygram.com/photos/\(id)/640x640") {
      self.photoView.kf.setImage(with: url)
    }
    
    self.messageLabel.text = post.message
    self.setNeedsLayout()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    self.photoView.width = self.contentView.width
    self.photoView.height = self.photoView.width
    
    self.messageLabel.width = self.contentView.width
    self.messageLabel.sizeToFit()
  }
  
}
