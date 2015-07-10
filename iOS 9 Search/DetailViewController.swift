//
//  DetailViewController.swift
//  iOS 9 Search
//
//  Created by Davis Allie on 9/07/2015.
//  Copyright © 2015 Davis Allie. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!

    var detailItem: Show! {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if self.nameLabel != nil && self.detailItem != nil {
            self.nameLabel.text = detailItem.name
            self.genreLabel.text = detailItem.genre
            
            let dateFormatter = NSDateFormatter()
            dateFormatter.timeStyle = .ShortStyle
            self.timeLabel.text = dateFormatter.stringFromDate(detailItem.time)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

