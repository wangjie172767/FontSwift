//
//  TableViewCell.swift
//  FontSwift
//
//  Created by hanzhong ye on 15/8/14.
//  Copyright (c) 2015年 jie. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var imgStr = NSString()
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//        imgView.image = UIImage(named: imgStr as String)
        
        self.selectionStyle = UITableViewCellSelectionStyle.None
        label.font = UIFont(name: "DFPWaWaW5-GB5", size: 20)
        addBackgroundColorToText(label, str: label.text!)
    }

    //加文字背景 
    func addBackgroundColorToText(label:UILabel,str:NSString) {
        
        let style = NSMutableParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        
        style.firstLineHeadIndent = 10.0
        style.headIndent = 10
        style.tailIndent = 0
        
        let attributes = [NSParagraphStyleAttributeName : style]
        let attributedTitleText = NSAttributedString(string: str as String, attributes: attributes)
        
        label.attributedText = attributedTitleText
        
        let textbackgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        label.backgroundColor = textbackgroundColor
    }

    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
}
