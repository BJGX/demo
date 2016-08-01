//
//  ViewController.swift
//  StackViewDemo
//
//  Created by oshumini on 16/7/31.
//  Copyright © 2016年 HXHG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var logoList: UIStackView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func clickToAdd(sender: AnyObject) {
    let logoImage:UIImageView = UIImageView(image: UIImage(named: "logo"))
    logoImage.contentMode = .ScaleAspectFit
    self.logoList.addArrangedSubview(logoImage)
    self.logoList.insertArrangedSubview(<#T##view: UIView##UIView#>, atIndex: <#T##Int#>)
    UIView.animateWithDuration(0.3, animations: {
      self.logoList.layoutIfNeeded()
    })
  }

  
  @IBAction func clickToRemove(sender: AnyObject) {
    let logoToRemove = logoList.arrangedSubviews.first
    if logoToRemove != nil {
      logoList.removeArrangedSubview(logoToRemove!)
      logoToRemove!.removeFromSuperview()
    }
    
    UIView.animateWithDuration(0.3, animations: {
      self.logoList.layoutIfNeeded()
    })
    
  }
}

