//
//  PostEditorViewController.swift
//  Graygram-clone-iOS
//
//  Created by aney on 2017. 3. 14..
//  Copyright © 2017년 Taedong Kim. All rights reserved.
//

import UIKit

final class PostEditorViewController: UIViewController {
  
  // MARK: Properties
  
  fileprivate let image: UIImage
  fileprivate var message: String?
  
  
  // MARK: UI
  
  fileprivate let tableView = UITableView(frame: .zero, style: .grouped)
  
  
  // MARK: Initializing
  
  init(image: UIImage) {
    self.image = image
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  // MARK: View Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.register(PostEditorImageCell.self, forCellReuseIdentifier: "imageCell")
    self.tableView.dataSource = self
    self.tableView.delegate = self
    self.view.addSubview(self.tableView)
    
    self.tableView.snp.makeConstraints { make in
      make.edges.equalToSuperview()
    }
  }
  
}


// MARK: - UITableViewDataSource

extension PostEditorViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath) as! PostEditorImageCell
    cell.configure(image: self.image)
    return cell
  }
  
}


// MARK: - UITableViewDelegate

extension PostEditorViewController: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return PostEditorImageCell.height(width: tableView.width)
  }
  
}
