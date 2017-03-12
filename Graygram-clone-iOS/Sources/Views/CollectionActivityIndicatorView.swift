//
//  CollectionActivityIndicatorView.swift
//  Graygram-clone-iOS
//
//  Created by aney on 2017. 3. 12..
//  Copyright © 2017년 Taedong Kim. All rights reserved.
//

import UIKit

final class CollectionActivityIndicatorView: UICollectionReusableView {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = .blue
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
