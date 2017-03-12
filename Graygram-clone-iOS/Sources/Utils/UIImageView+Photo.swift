//
//  UIImageView+Photo.swift
//  Graygram-clone-iOS
//
//  Created by aney on 2017. 3. 12..
//  Copyright © 2017년 Taedong Kim. All rights reserved.
//

import UIKit

extension UIImageView {
  
  func setImage(with photoID: String?, placeholder: UIImage? = nil, size: PhotoSize) {
    guard let photoID = photoID else {
      self.image = placeholder
      return
    }
    
    let url = URL(string: "https://graygram.com/photos/\(photoID)/\(size.pixel)x\(size.pixel)")
    self.kf.setImage(with: url, placeholder: placeholder)
  }
  
}
