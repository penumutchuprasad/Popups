//
//  FirstVC.swift
//  ReusablePOPUP
//
//  Created by penumutchu.prasad@gmail.com on 21/01/18.
//  Copyright © 2018 abnboys. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet var showLabel: UILabel!

    var observer: NSObjectProtocol?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
      
        
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPopupVC" {
            
            let destVC = segue.destination as! PopupVC
            
            destVC.image = UIImage.init(named: "becky")
            
            ///// Assign to a local function to access the data
            
            //destVC.onSave = onSaveLocal
            
            destVC.onSave = { data in
                
                self.showLabel.text = data
            }
            
        }
    }
    
//    func onSaveLocal(text: String)->() {
//
//        showLabel.text = text
//    }
    
    
    // Optional As We have Segue for this
 
    @IBAction func showPOPUP(_ sender: UIButton) {
    }
    
    
    
    
    
    
}
