//
//  PostCardCell.swift
//  Graygram-clone-iOS
//
//  Created by aney on 2017. 3. 12..
//  Copyright © 2017년 Taedong Kim. All rights reserved.
//

import UIKit

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
    // TODO: photoView 이미지 설정
    self.messageLabel.text = post.message
    self.setNeedsLayout()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    self.photoView.frame.size.width = self.contentView.frame.width
    self.photoView.frame.size.height = self.photoView.frame.size.width
    
    self.messageLabel.frame.size.width = self.contentView.frame.width
    self.messageLabel.sizeToFit()
  }
  
}
