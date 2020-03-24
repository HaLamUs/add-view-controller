//
//  TestViewController.swift
//  SportFeedback
//
//  Created by HaLam on 11/2/17.
//  Copyright © 2017 Zappasoft. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    @IBOutlet weak var viewContain: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainSb = UIStoryboard(name: "CoachFlow", bundle: nil)
        let childTableVC = mainSb.instantiateViewController(withIdentifier: "PlayerTableViewController") as! PlayerTableViewController
        addChildViewController(childTableVC)
        self.view.addSubview(childTableVC.view)
        childTableVC.view.translatesAutoresizingMaskIntoConstraints = false
        let heightConstraint = NSLayoutConstraint(item: childTableVC.view, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 200)
        let leftConstraint = NSLayoutConstraint(item: childTableVC.view, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.left, multiplier: 1, constant: 0)
        let rightConstraint = NSLayoutConstraint(item: childTableVC.view, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.right, multiplier: 1, constant: 0)
        let topConstraint = NSLayoutConstraint(item: childTableVC.view, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 0)
        NSLayoutConstraint.activate([leftConstraint, rightConstraint, topConstraint, heightConstraint])
        
        childTableVC.didSelectRow = didSelectRow
        
    }
    
    func didSelectRow(dataItem: Int) {
       print()
    }
    
    
    
    
    
    
    
    
    
}
