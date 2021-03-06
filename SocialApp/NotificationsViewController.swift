//
//  NotificationsViewController.swift
//  SocialApp
//
//  Created by Dalal on 8/2/18.
//  Copyright © 2018 Dalal. All rights reserved.
//

import UIKit

import UIKit

class NotificationsViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var messsagesTable: UICollectionView!
    
    var messagesArray  = [PMessage(message: "أرجو توجيهه بالذهاب لمقر الحملة مباشرة ",name:"مشعل الحازمي",image:#imageLiteral(resourceName: "pers1"),read:true),PMessage(message:"أرجو توجيهه بالذهاب لمقر الحملة مباشرة",name:"دلال الحربي",image:#imageLiteral(resourceName: "pers1"),read:true),PMessage(message:"أرجو توجيهه بالذهاب لمقر الحملة مباشرة",name:"حسن ايوب",image:#imageLiteral(resourceName: "pers1"),read:true)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messsagesTable.delegate = self
        messsagesTable.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.messagesArray.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Message", for: indexPath) as! MessageCollectionViewCell
        
        cell.cellBackgroundView.layer.cornerRadius = cell.cellBackgroundView.bounds.size.height/8;
        cell.pligrimName.text = self.messagesArray[indexPath.row].name
        cell.avatar.image = self.messagesArray[indexPath.row].image
        cell.messgaeLabel.text = self.messagesArray[indexPath.row].message
        
        
        return cell
    }
    
    
    
    
    //    func listChildHandler(children:[MissingChild]?){
    //        if children?.count == 0 {
    //
    //        }else{
    //            self.children = children
    //            self.ListTableView.reloadData()
    //
    //        }
    //
    //
    //    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return messagesArray.count ?? 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
}

