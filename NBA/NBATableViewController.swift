//
//  NBATableViewController.swift
//  NBA
//
//  Created by yuhuibin on 15/6/14.
//  Copyright (c) 2015年 yuhuibin. All rights reserved.
//

import UIKit

class NBATableViewController: UITableViewController {
    
    let star = ["Kobe", "Paul", "Wade", "Curry"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return star.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! TableViewCell
        cell.playerImageView.image = UIImage(named: star[indexPath.row])
        //设置圆角
        //cell.playerImageView.layer.cornerRadius = cell.playerImageView.frame.size.width/2
        //cell.playerImageView.clipsToBounds = true
        cell.nameLable.text = star[indexPath.row]
        //cell.typeLable.text = "super stat"

        return cell
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let actionHandler = { (action:UIAlertAction!) -> Void in
            let alertMessage = UIAlertController(title: "Server Unavailable", message: "Sorry, can not use the net", preferredStyle: .Alert)
            alertMessage.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            self.presentViewController(alertMessage, animated: true, completion: nil)
        }
        let callAction = UIAlertAction(title: "call 15988112961", style: .Default, handler: actionHandler)
        
        let cancleAction = UIAlertAction(title: "Cancle", style: .Cancel, handler: nil)
        
        let isLoveAction = UIAlertAction(title: "I love he", style: .Default) { (action:UIAlertAction!) -> Void in
            let cell = tableView.cellForRowAtIndexPath(indexPath)
            cell?.accessoryType  = .Checkmark
        }
        
        let optionMenu = UIAlertController(title: nil, message: "Do you like \(star[indexPath.row])?", preferredStyle: .ActionSheet)
        
        
        optionMenu.addAction(isLoveAction)
        optionMenu.addAction(cancleAction)
        optionMenu.addAction(callAction)
        
        self.presentViewController(optionMenu, animated:true, completion:nil)
        
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
    }
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
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
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
