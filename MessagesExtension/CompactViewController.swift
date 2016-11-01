//
//  CompactViewController.swift
//  VoteApp
//
//  Created by Ellina Kuznecova on 01.11.16.
//  Copyright © 2016 Ellina Kuznetcova. All rights reserved.
//

import UIKit

protocol CompactViewControllerDelegate: class {
    func createPollPressed()
}

class CompactViewController: UIViewController {
    weak var delegate: CompactViewControllerDelegate?
    
    @IBAction func createPoll(_ sender: AnyObject) {
        self.delegate?.createPollPressed()
    }
}
