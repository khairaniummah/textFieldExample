//
//  DetailViewController.swift
//  textFieldExample
//
//  Created by Khairani Ummah on 16/05/19.
//  Copyright © 2019 Khairani Ummah. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    var usernameFromPrevious: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.detailLabel.text = usernameFromPrevious
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
