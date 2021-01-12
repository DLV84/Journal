//
//  EntryListTableViewController.swift
//  Journal
//
//  Created by Daniel Villedrouin on 1/11/21.
//

import UIKit

class EntryListTableViewController: UITableViewController {
    //MARK: - Outlets
    
    //MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
     // For testing
        EntryController.shared.createEntryWith(newEntryTitle: "Test Title", newEntryBody: "Test Body")
        tableView.reloadData()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return EntryController.shared.entries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath)

        let entry = EntryController.shared.entries[indexPath.row]
        cell.textLabel?.text = entry.title
        
        
        //Format the date
//        let formatter = DateFormatter()
//        formatter.dateFormat = "MMM d, yyyy"
//        cell.detailTextLabel?.text = formatter.string (from: EntryController.shared.entries[indexPath.row].timeStamp)

        return cell
    }
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        }  
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            //IIDOO
            //Identifier
            if segue.identifier == "toEntryDetailVC" {
                //Index
                if let selectedIndex = tableView.indexPathForSelectedRow {
                    //Destination
                    if let detailViewController = segue.destination as? EntryDetailViewController {
                        //Object to send
                        let entry = EntryController.shared.entries[selectedIndex.row]
                        //Object to receive
                        detailViewController.entry = entry
                        // The destination of the book is the book at the selectedIndex.row
                    }
                }
            }
        }
}
