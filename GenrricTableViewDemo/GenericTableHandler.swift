//
//  GenericTableHandler.swift
//  GenrricTableViewDemo
//
//  Created by Mukul Bakshi on 17/08/19.
//  Copyright © 2019 Coder. All rights reserved.
//

import UIKit

class GenericTableHandler<GenericCell:UITableViewCell,ModalObject>: NSObject,UITableViewDelegate,UITableViewDataSource where GenericCell:ConfigurableCell, ModalObject:Adapter, GenericCell.T == ModalObject.T {
    
    var modalData:ModalObject!
    var tblView:UITableView!
    
    init(modalData:ModalObject,tblView:UITableView) {
        super.init()
        self.tblView = tblView
        self.tblView.delegate = self
        self.tblView.dataSource = self
        self.modalData = modalData
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modalData.dataArry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:GenericCell! = tableView.dequeueReusableCell(withIdentifier: "cell") as? GenericCell
        if cell == nil {
            cell = Bundle.main.loadNibNamed(GenericCell.cellReuseIdentifier, owner: self, options: nil)?.first as? GenericCell
        }
        let dataObj =  modalData.dataArry[indexPath.row]
        cell.configureCellWith(data:dataObj)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("row is selected")
    }
}

