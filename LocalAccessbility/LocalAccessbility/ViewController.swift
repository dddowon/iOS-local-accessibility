//
//  LocalAccessbility - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var dateTimeLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
        
    private func addBottomLabel() {
        
        let bottomLabel = UILabel()
        bottomLabel.frame = CGRect(x: 20, y: view.bounds.size.height - 150, width: view.bounds.size.width - 40, height: 50)
        
        bottomLabel.text = "Touch the button below!".localizing()
        
        bottomLabel.font = UIFont.systemFont(ofSize: 20)
        
        bottomLabel.textColor = .red
        
        bottomLabel.textAlignment = .center
        
        view.addSubview(bottomLabel)
    }
    
    private func addButton() {
        // Do any additional setup after loading the view.
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 20, y: view.bounds.size.height - 80, width: view.bounds.size.width - 40, height: 50)
        
        button.setTitle("Touch Me!".localizing(), for: .normal)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        button.setTitleColor(.blue, for: .normal)
        
        view.addSubview(button)
    }
    
    private func addDate() {
        let date = DateFormatter.localizedString(from: Date(), dateStyle: .medium, timeStyle: .short)
        
        dateTimeLabel.text = date
    }
    
    private func currency() {
        let locale = Locale.current
        let price = 3000.33 as NSNumber
        let formatter = NumberFormatter()
        
        formatter.numberStyle = .currency
        formatter.currencyCode = locale.currencyCode
        formatter.locale = locale
        
        currencyLabel.text = formatter.string(from: price)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBottomLabel()
        addButton()
        welcomeLabel.text = "Welcome to yagom-academy!".localizing()
        addDate()
        currency()
    }
}

extension String {
    func localizing(_ comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }
}
