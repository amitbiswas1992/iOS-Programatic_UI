//
//  VideoListViewController.swift
//  programmaticui-customCell
//
//  Created by Amit Biswas on 1/23/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit

class VideoListViewController: UIViewController {

    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        setTableViewDelegates()
        //set row height
        tableView.rowHeight = 100
        
        //resister cell
        //set constraints
        tableView.pin(to: view)
    }
   
    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension VideoListViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}
