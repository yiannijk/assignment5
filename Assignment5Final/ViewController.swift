//
//  ViewController.swift
//  Assignment5Final
//
//  Created by Kontorousis, Jonathan on 2/13/16.
//  Copyright © 2016 Kontorousis, Jonathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var slidervalue: UISlider!
    
    @IBOutlet weak var multiplier: UILabel!
    
    @IBAction func slidermoved(sender: UISlider) {
        print(slidervalue)
        table.reloadData()
    }
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) ->Int {
        return 12
    }
    func tableView(tableView: UITableView,cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        let timesTable = Int(slidervalue.value * 12)
        
    multiplier.text = String(timesTable)
    
    cell.textLabel?.text = String(timesTable * indexPath.row)
        return cell
        
        
}
}

