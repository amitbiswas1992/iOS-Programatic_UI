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
    var videos: [Video] = []
    
    struct Cells {
        
        static let videoCell = "VideoCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Amit's Videos"
        videos = fetchData()
        configureTableView()
        
    }
    
   
    
    func configureTableView(){
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.register(VideoCell.self, forCellReuseIdentifier: Cells.videoCell)
        tableView.pin(to: view)
    }
   
    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension VideoListViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.videoCell) as! VideoCell
        let video = videos[indexPath.row]
//        print(indexPath.row)

        cell.set(video: video)
        
        return cell
    }
    
}

extension VideoListViewController {
    
    func fetchData() -> [Video] {
        let video1 = Video(image: Images.one, title: "iOS Tutorial One")
        let video2 = Video(image: Images.two, title: "iOS Tutorial Two")
//        let video3 = Video(image: Images.one, title: "iOS Tutorial One")
//        let video9 = Video(image: Images.two, title: "iOS Tutorial Two")
//        let video4 = Video(image: Images.one, title: "iOS Tutorial One")
//        let video5 = Video(image: Images.two, title: "iOS Tutorial Two")
//        let video6 = Video(image: Images.one, title: "iOS Tutorial One")
//        let video7 = Video(image: Images.two, title: "iOS Tutorial Two")
//        let video8 = Video(image: Images.two, title: "iOS Tutorial Two")
        
        
        return [video1, video2]
    }
}
