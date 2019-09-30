//
//  ViewController.swift
//  decc
//
//  Created by zhao on 2019/9/29.
//  Copyright © 2019 zhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    
 
    

    @IBOutlet weak var mytable: UITableView!
    
    var  mytbledata = ["我的","你的","他的"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let  cellxib = UINib(nibName: "cartbcell", bundle: nil)
        
      //  mytable.registerNiB(cellxib,forCellReuseIdentifier:"cell")
        
        mytable.register(cellxib, forCellReuseIdentifier: "cell")
    
        
        //创建一个重用的单元格
       // self.tableView!.registerNib(UINib(nibName:"cartbcell", bundle:nil),
                               //     forCellReuseIdentifier:"cell")
        
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  mytbledata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell")  as! CarCellTableViewCell
        
        let item = mytbledata[indexPath.row]
        cell.mylabe.text = item
        // cell.myimg.image = UIImage(named:item["image"]!)
        return cell
    }


}

