//
//  DiaryTableViewController.swift
//  climbingdiary
//
//  Created by Developer on 7/25/15.
//  Copyright © 2015 Wednesday Warriors. All rights reserved.
//

import UIKit

class DiaryTableViewController: UITableViewController {
    
    // MARK: Properties
    var entries = [DiaryEntryTemp]()
    
    // MARK: TableViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load sample data
        loadSampleEntries()
    }
    
    func loadSampleEntries() {
        // Load some sample diary entries to test the interface
        let entry1 = DiaryEntryTemp(entryDate: "Apr 24, 2014", climbingType: "Wall", placeClimbed: "Pangyo")
        let entry2 = DiaryEntryTemp(entryDate: "May 17, 2014", climbingType: "Crag", placeClimbed: "Surisan")
        let entry3 = DiaryEntryTemp(entryDate: "May 25, 2014", climbingType: "Crag", placeClimbed: "Seonunsan")
        let entry4 = DiaryEntryTemp(entryDate: "Jun 6, 2014", climbingType: "Trad", placeClimbed: "Yonghwasan")
        let entry5 = DiaryEntryTemp(entryDate: "Jun 7, 2014", climbingType: "Crag", placeClimbed: "Mureung Valley")
        entries += [entry1, entry2, entry3, entry4, entry5]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "DiaryTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! DiaryTableViewCell

        // Retrieve the appropriate data
        let entry = entries[indexPath.row]
        
        // Fill in the view
        cell.dateLabel.text = entry.entryDate
        cell.typeLabel.text = entry.climbingType
        cell.placeLabel.text = entry.placeClimbed

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
