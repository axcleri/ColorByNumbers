//
//  InstructionsViewController.swift
//  ColorByNumbers
//
//  Created by Alexandra Kazaglis on 12/11/18.
//  Copyright © 2018 Alexandra Kazaglis. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.topItem?.title = "Instructions"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
