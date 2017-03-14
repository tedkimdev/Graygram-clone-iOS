//
//  PostEditorMessageCell.swift
//  Graygram-clone-iOS
//
//  Created by aney on 2017. 3. 14..
//  Copyright © 2017년 Taedong Kim. All rights reserved.
//

import UIKit

final class PostEditorMessageCell: UITableViewCell {
  
  // MARK: UI
  
  fileprivate let textView = UITextView()
  
  // MARK: Initializing
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = .none
    self.contentView.addSubview(self.textView)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  // MARK: Layout
  
  override func layoutSubviews() {
    super.layoutSubviews()
    self.textView.frame = self.contentView.bounds
  }
  
}
