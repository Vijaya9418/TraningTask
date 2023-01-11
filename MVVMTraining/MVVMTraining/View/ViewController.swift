//
//  ViewController.swift
//  MVVMTraining
//
//  Created by BKS-GGS on 11/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var newsTableView: UITableView!
    var hitsArray:[Hit]? = []
    private var viewModel =  NewsViewModel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsTableView.dataSource = self
        viewModel.delegate = self
        getNewsResponseApi()
    }

    func getNewsResponseApi() {
        
        self.viewModel.newsData { result in
            if(result != nil && result?.hits?.count != 0) {
                print(result)
            }
        }
    }

}


