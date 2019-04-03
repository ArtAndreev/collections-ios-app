//
//  AnimeListViewController.swift
//  anime
//
//  Created by artyom.andreev on 03/04/2019.
//  Copyright © 2019 artyom.andreev. All rights reserved.
//

import UIKit

class AnimeListViewController: UITableViewController {

    var AnimeList = [TitleData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AnimeList = titles

        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib.init(nibName: "AnimeListCell", bundle: nil), forCellReuseIdentifier: "AnimeListCell")
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AnimeList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimeListCell", for: indexPath)

        if let castedCell = cell as? AnimeListCell {
            castedCell.fillCell(with: AnimeList[indexPath.row])
        }
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "AnimeDetail", sender: self)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "AnimeDetail" {
            if let dest = segue.destination as? AnimeTitleDetailViewController, let itemIndex = tableView.indexPathForSelectedRow?.row {
                dest.AnimeTitleModel = AnimeList[itemIndex]
            }
        }
    }

}
