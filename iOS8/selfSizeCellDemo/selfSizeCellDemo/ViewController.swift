//
//  ViewController.swift
//  selfSizeCellDemo
//
//  Created by oshumini on 16/4/20.
//  Copyright © 2016年 HXHG. All rights reserved.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
  
  var messageTable:UITableView!
  var textArr:NSArray?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    messageTable = UITableView()
    self.view.addSubview(messageTable)
    messageTable.snp_makeConstraints { (make) -> Void in
      make.right.left.top.bottom.equalTo(self.view)
    }
    
    messageTable.delegate = self
    messageTable.dataSource = self
    messageTable.estimatedRowHeight = 44
    messageTable.rowHeight = UITableViewAutomaticDimension
    textArr = ["dsafdadf", "safasfsfdddddddddddd", "dfsfaffffklhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhfdsssssssssssssssssssssssssssssss"]
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return textArr!.count

  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let identify = "MessageCell"
    var cell:MessageCell? = tableView.dequeueReusableCellWithIdentifier(identify) as? MessageCell
    if cell == nil {
      tableView.registerClass(NSClassFromString(identify), forCellReuseIdentifier: identify)
      cell = tableView.dequeueReusableCellWithIdentifier(identify) as? MessageCell
    }
    cell?.settext(textArr![indexPath.row] as! String)
    return cell!
  }
}