//
//  ViewController.swift
//  GenrricTableViewDemo
//
//  Created by Mukul Bakshi on 17/08/19.
//  Copyright © 2019 Coder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tblView: UITableView!
    var genericTable:GenericTableHandler<CustomTableCell,DataModalHandler>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let modalObj = DataModalHandler()
        
        
        genericTable = GenericTableHandler<CustomTableCell,DataModalHandler>(modalData: modalObj,tblView: tblView)
    }
    
}

class Person: NSObject {
    
    var name:String
    
    init(name:String) {
        self.name = name
    }
}

class DataModalHandler: Adapter {
    typealias T = Person
    var dataArry:[Person] = [Person(name: "Mukul"),
                             Person(name: "James"),
                             Person(name: "Shobbby"),
                             Person(name: "Carter"),
                             Person(name: "Amazon")]
    
}

protocol Adapter {
    associatedtype T
    var dataArry:[T] {get}
}
