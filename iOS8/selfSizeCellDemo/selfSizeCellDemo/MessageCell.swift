//
//  MessageCell.swift
//  selfSizeCellDemo
//
//  Created by oshumini on 16/4/20.
//  Copyright © 2016年 HXHG. All rights reserved.
//

import UIKit

@objc(MessageCell)
class MessageCell: UITableViewCell {
  var textview:UILabel!
  override func awakeFromNib() {
    super.awakeFromNib()

    
  }
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    textview = UILabel()
    self.contentView.addSubview(textview)
    textview.numberOfLines = 0
    textview.snp_makeConstraints { (make) in
      make.top.equalTo(self.contentView).offset(15)
      make.width.equalTo(100)
      make.left.equalTo(self.contentView).offset(15)
      make.bottom.equalTo(self.contentView).offset(-15)
    }
  }
  
  func settext(textmessage:String) {
    textview.text = textmessage
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func setSelected(selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }

}
