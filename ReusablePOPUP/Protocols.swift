//
//  Protocols.swift
//  ReusablePOPUP
//
//  Created by penumutchu.prasad@gmail.com on 21/01/18.
//  Copyright © 2018 abnboys. All rights reserved.
//

import Foundation


protocol PopupDataSource {
    // Implement This Method To Save the Data
    func onSaveDataToProcess(text: String)
}
