//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Daniel Villedrouin on 1/12/21.
//

import UIKit

class EntryDetailViewController: UIViewController {
    //MARK: - Outlets
    
    

    //MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.delegate = self

        // Do any additional setup after loading the view.
        
    }
    //MARK: - Properties
    var entry: Entry?
    
    //MARK: - Actions
    
    //MARK: - Methods
    func updateViews() {
        guard let sentEntry = entry else { return }
        titleTextField.text = sentEntry.title
        bodyTextView.text = sentEntry.body
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
