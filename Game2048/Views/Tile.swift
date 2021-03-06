//
//  Tile.swift
//  Game2048
//
//  Created by 黄延 on 2016/10/25.
//  Copyright © 2016年 黄延. All rights reserved.
//

import UIKit


class TileView: UIView {
    var valLbl: UILabel!

    var loc: Int = -1
    var color: ColorProvider!
    
    var val: Int = 0 {
        didSet {
            valLbl.text = "\(val)"
            backgroundColor = color.colorForValue(val)
            valLbl.textColor = color.textColorForVal(val)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureValLbl()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    func configureBackground() {
        layer.cornerRadius = 2
    }
    
    func configureValLbl() {
        valLbl = UILabel()
        valLbl.font = UIFont.systemFont(ofSize: 25, weight: UIFontWeightBold)
        valLbl.textColor = .black
        valLbl.textAlignment = .center
        
        addSubview(valLbl)
        
        valLbl.snp.makeConstraints { (make) in
            make.edges.equalTo(self)
        }
    }
}
