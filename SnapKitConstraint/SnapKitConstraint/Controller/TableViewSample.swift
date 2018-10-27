//
//  TableViewSample.swift
//  SnapKitConstraint
//
//  Created by Israel Manzo on 10/3/18.
//  Copyright © 2018 Israel Manzo. All rights reserved.
//

import UIKit
import SnapKit

class TableViewSample: UIViewController {
    
    let tableView:UITableView = {
        let tv = UITableView()
        tv.rowHeight = 100
        return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setUpTableView()
    }
    
    func setup(){
        view.backgroundColor = .white
        title = "Sample Two"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setUpTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
    }
}

extension TableViewSample: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "TEXT"
        return cell!
    }
}
