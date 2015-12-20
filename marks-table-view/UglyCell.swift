//
//  UglyCell.swift
//  marks-table-view
//
//  Created by Todd Fields on 2015-12-19.
//  Copyright © 2015 Todd Fields. All rights reserved.
//

import UIKit

class UglyCell: UITableViewCell {

  @IBOutlet weak var mainImg: UIImageView!
  @IBOutlet weak var mainLbl: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    mainImg.layer.cornerRadius = 5.0
    mainImg.clipsToBounds = true
  }

  func configureCell(image: UIImage, text: String) {
    
    mainImg.image = image
    mainLbl.text = text
  }
}
