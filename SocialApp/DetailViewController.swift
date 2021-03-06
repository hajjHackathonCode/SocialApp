//
//  DetailViewController.swift
//  SocialApp
//
//  Created by Dalal on 8/2/18.
//  Copyright © 2018 Dalal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var periodButton: UIView!
    @IBOutlet weak var addButtonBackg: UIView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.layer.cornerRadius = backgroundView.bounds.size.height/2;
        backgroundView.layer.borderColor = UIColor.lightGray.cgColor
        backgroundView.layer.borderWidth = 1.0;
        
        avatar.layer.borderWidth = 1
        avatar.layer.masksToBounds = false
        avatar.layer.borderColor = UIColor.clear.cgColor
        avatar.layer.cornerRadius = avatar.frame.height/2
        avatar.clipsToBounds = true
       
        
        
        
        periodButton.layer.cornerRadius = periodButton.bounds.size.height/7;
        
        addButtonBackg.layer.cornerRadius = periodButton.bounds.size.height/7;
        addButtonBackg.layer.borderColor = UIColor.lightGray.cgColor
        addButtonBackg.layer.borderWidth = 1.0;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
