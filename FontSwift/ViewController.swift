//
//  ViewController.swift
//  FontSwift
//
//  Created by hanzhong ye on 15/8/14.
//  Copyright (c) 2015年 jie. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var imgData = NSArray()
    var labelData = NSArray()
    
    var data = NSDictionary()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "travel"
        tableView.rowHeight = 250;
        
        imgData = ["1","2","3","4","5"];
        labelData = ["图片1","图片2","图片3","图片4","图片5"]
        
        self.tableView.registerNib(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "nibCell")
        
        //系统字体
     /*
        var i : Int = 0
        for object in UIFont.familyNames(){
            println("family:\(object)")
            
            for fontName in UIFont.fontNamesForFamilyName(object as! String){
                println("\tfont:\(fontName)")
            }
            
            i++
            println("-------------------\(i)")
        }
    */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        /*
        //系统定义
        let cellId : String = "cell"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellId) as! UITableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        let img = UIImage(named: imgData[indexPath.row] as! String)
        var imgView = UIImageView(image: img)
        imgView.frame = cell.frame
        
        var label = UILabel(frame: CGRectMake(0, cell.frame.size.height-100, cell.frame.size.width, 100))
        label.text = "云南，大理，丽江，香格里拉，梅里雪山，日照金山"
        label.numberOfLines = 0
        label.textColor = UIColor.whiteColor()
        label.font = UIFont(name: "Symbol", size: 20)
        imgView.addSubview(label)
        cell.backgroundView = imgView
        */
        
        //自定义
        let cell : TableViewCell  = tableView.dequeueReusableCellWithIdentifier("nibCell") as! TableViewCell
        let imgStr = imgData[indexPath.row] as! String
        cell.imgView.image = UIImage(named: imgStr as String)
        cell.imgView.tag = indexPath.row
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}

