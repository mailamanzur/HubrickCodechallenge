//
//  MainViewController.swift
//  hubrick-Codechallenge
//
//  Created by Maila  Manzur on 28/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

import UIKit
import ObjectMapper

class MainViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    //MARK - Properties
    var feedmapped: [Feed]?
    
    
    //MARK: - Outlets
    @IBOutlet weak var feedTableView: UITableView!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setupTableView()

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Setup methods
    func setupTableView() -> Void {
        feedTableView.delegate = self
        feedTableView.dataSource = self
        self.feedmapped = loadJson(forFilename:"hubrickresponse")

        feedTableView.reloadData()
        
    }
    
    // MARK: - TableView DataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let list = self.feedmapped {
            return list.count
        }
        return 0
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = feedTableView.dequeueReusableCell(withIdentifier:"CustomCell", for: indexPath) as! CustomCell
        
        guard let list = self.feedmapped
            else {
            return cell
        }
        
        let item = list[indexPath.row]
        cell.setup(feed: item)
        return cell
    }


    
    //MARK: - JSON Parse
    func loadJson(forFilename fileName: String) -> [Feed]? {
        
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            if let data = NSData(contentsOf: url) {
                do {
                    
                    let feed =  try JSONSerialization.jsonObject(with: data as Data, options:[])
                    
                    let feedmap = Mapper<Feed>().mapArray(JSONObject: feed)
                    return feedmap
                    
                    
                    
                }catch {
                    print("Error!! Unable to parse  \(fileName).json")
                }
            }else {
                
                print("Error!! Unable to load  \(fileName).json")
                
            }
            
        }
        
        return nil
 }

}

