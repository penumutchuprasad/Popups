//
//  SecondVC.swift
//  ReusablePOPUP
//
//  Created by penumutchu.prasad@gmail.com on 21/01/18.
//  Copyright © 2018 abnboys. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    
    @IBOutlet var showLabel: UILabel!

    var observer: NSObjectProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
       observer = NotificationCenter.default.addObserver(forName: .popupInformation, object: nil, queue: OperationQueue.main) { (notification) in
            
            let destVC = notification.object as! PopupVC

            self.showLabel.text = destVC.inputTF.text
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        NotificationCenter.default.removeObserver(observer!)
    }
    
    
    
    
    
 @IBAction func showPOPUP(_ sender: UIButton) {
        
        
        if let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopupVC") as? PopupVC {
            
            vc.image = UIImage.init(named: "holm")

            present(vc, animated: true, completion: nil)
        }
        
    }

}
