//
//  CustomTableCell.swift
//  GenrricTableViewDemo
//
//  Created by Mukul Bakshi on 17/08/19.
//  Copyright © 2019 Coder. All rights reserved.
//

import UIKit

class CustomTableCell: UITableViewCell,ConfigurableCell {
    
    typealias T = Person
    
    @IBOutlet weak var lblName: UILabel!
    
    func configureCellWith(data:T) {
        lblName.text = data.name
    }
    static var cellReuseIdentifier:String {
        return String(describing: "\(self)")
    }
    
}


protocol ConfigurableCell {
    associatedtype T
    static var cellReuseIdentifier:String {get}
    func configureCellWith(data:T)
}
