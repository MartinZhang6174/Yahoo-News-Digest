//
//  NewsItem.swift
//  Yahoo News Digest
//
//  Created by Martin Zhang on 2016-08-02.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

import UIKit

struct NewsItem {
    var category: Category
    var headline: String
    
    
    enum Category: String {
        case World = "World", Americas = "Americas", Europe = "Europe", MiddleEast = "Middle East", Africa = "Africa", AsiaPacific = "Asia Pacific"
        
        func color() -> UIColor {
            switch self {
            case .Africa:
                return UIColor.orangeColor()
                
            case .Americas:
                return UIColor.blueColor()
                
            case .World:
                return UIColor.redColor()
                
            case .Europe:
                return UIColor.greenColor()
            
            case .MiddleEast:
                return UIColor.yellowColor()
                
            case .AsiaPacific:
                return UIColor.purpleColor()
            }
        }
    }
    
}

//item.colorForCategory()
//item.category.color()

