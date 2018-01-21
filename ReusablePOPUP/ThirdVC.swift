//
//  ThirdVC.swift
//  ReusablePOPUP
//
//  Created by penumutchu.prasad@gmail.com on 21/01/18.
//  Copyright © 2018 abnboys. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {
    
    
    
    @IBOutlet var showLabel: UILabel!
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    @IBAction func showPOPUP(_ sender: UIButton) {
        
        
        if let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopupVC") as? PopupVC {
            vc.image = UIImage.init(named: "tom")
            vc.delegate = self
            present(vc, animated: true, completion: nil)
        }
        
        
        
        
        
    }
    
    
  

}


extension ThirdVC: PopupDataSource {
    
    func onSaveDataToProcess(text: String) {
        
        showLabel.text = text
    }
    
    
    
    
}















