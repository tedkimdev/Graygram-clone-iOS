//
//  PostCardCell.swift
//  Graygram-clone-iOS
//
//  Created by aney on 2017. 3. 12..
//  Copyright © 2017년 Taedong Kim. All rights reserved.
//

import UIKit

class PostCardCell: UICollectionViewCell {
  
  fileprivate let messageLabel = UILabel()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.messageLabel.numberOfLines = 3
    self.contentView.addSubview(self.messageLabel)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func configure(post: Post) {
    self.backgroundColor = .lightGray
    self.messageLabel.text = post.message
    self.setNeedsLayout()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    self.messageLabel.frame.size.width = self.contentView.frame.width
    self.messageLabel.sizeToFit()
  }
  
}
