//
//  ActivityFeedViewController.swift
//  FitViz-iOS
//
//  Created by Mike Griffin on 12/21/21.
//

import UIKit

class ActivityFeedViewController: UITableViewController {
    init(userId: Int) {
        super.init(nibName: nil, bundle: nil)
        print("UserId: " + String(userId))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
