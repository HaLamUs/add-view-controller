//
//  PlayerTableViewController.swift
//  SportFeedback
//
//  Created by HaLam on 11/2/17.
//  Copyright © 2017 Zappasoft. All rights reserved.
//

import UIKit

class PlayerTableViewController: UIViewController {
    
    var didSelectRow: ((_ dataItem: Int) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func qewewe(_ sender: Any) {
        didSelectRow!(2)
//        didSelectRow(dataItem: dataItem, cell: cell)
        print("lamha")
    }
}
