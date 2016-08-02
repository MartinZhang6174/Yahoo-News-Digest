//
//  MasterViewController.swift
//  Yahoo News Digest
//
//  Created by Martin Zhang on 2016-08-02.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    @IBOutlet weak var dateDisplayLabel: UILabel!
    var detailViewController: DetailViewController? = nil
    var objects = [NewsItem]()
    let currentDate = NSDate()
    let dateFormatter = NSDateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundColor = UIColor.blackColor()
        
        self.objects = [
            NewsItem(category: .World, headline: "Climate change protests, divestments meet fossil fuels realities"),
            NewsItem(category: .Europe, headline: "Scotland's 'Yes' leader says independence vote is 'once in a lifetime"),
            NewsItem(category: .MiddleEast, headline: "Airstrikes boost Islamic State, FBI director warns more hostages possible"),
            NewsItem(category: .Africa, headline: "Nigeria says 70 dead in building collapse; questions S. Africa victim claim"),
            NewsItem(category: .AsiaPacific, headline: "Despite UN ruling, Japan seeks backing for whale hunting"),
            NewsItem(category: .Americas, headline: "Officials: FBI is tracking 100 Americans who fought alongside IS in Syria"),
            NewsItem(category: .World, headline: "South Africa in $40 billion deal for Russian nuclear reactors"),
            NewsItem(category: .Europe, headline: "'One million babies' created by EU student exchanges"),
        ]
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle
        var convertedDate = dateFormatter.stringFromDate(currentDate)
        self.dateDisplayLabel.text = convertedDate
        
        tableView.estimatedRowHeight = 88.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
    }
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> NewsTableViewCell {
        let reuseIdentifierForNewsCell = "NewsTableViewCell"
        let newsCell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifierForNewsCell, forIndexPath: indexPath) as! NewsTableViewCell

        let item = self.objects[indexPath.row]
        
        newsCell.backgroundColor = UIColor.blackColor()
        newsCell.categoryLabel.text = item.category.rawValue
        newsCell.headlineLabel.text = item.headline
        newsCell.categoryLabel.textColor = item.category.color()
        newsCell.headlineLabel.textColor = UIColor.whiteColor()
        
        return newsCell
    }

}

