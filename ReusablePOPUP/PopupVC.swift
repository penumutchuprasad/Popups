//
//  PopupVC.swift
//  ReusablePOPUP
//
//  Created by penumutchu.prasad@gmail.com on 21/01/18.
//  Copyright © 2018 abnboys. All rights reserved.
//

import UIKit

class PopupVC: UIViewController {

    
    
    @IBOutlet var imgVIew: UIImageView!
    
    @IBOutlet var inputTF: UITextField!
    
    
    var onSave:((_ text:String)->())?
    
    
    
    var delegate: PopupDataSource?
    
    
    
    var image: UIImage!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imgVIew.image = image
        imgVIew.layer.cornerRadius = imgVIew.frame.width/2
        imgVIew.layer.masksToBounds = true
    }
    

    @IBAction func onSave(_ sender: UIButton) {
        
        if (inputTF.text?.count)! > 0 {
        // 1st Way
        NotificationCenter.default.post(name: .popupInformation, object: self)
        // 2nd Way
        onSave?(inputTF.text!)
        // 3rd Way
        delegate?.onSaveDataToProcess(text: inputTF.text!)
                
        dismiss(animated: true, completion: nil)
        }else {
            
            print("User Didnt Set Any Text")
            inputTF.text = "Try Again"
            dismiss(animated: true, completion: nil)

        }

    }
    
    
    
    @IBAction func onDiscard(_ sender: UIButton) {
        
        
        print("""
                User Cancelled
                Say Thanks
                """
            )
        
        dismiss(animated: true, completion: nil)
        
        
        
    }
    
    
    
    
    
    
    
    
}
