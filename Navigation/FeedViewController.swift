//
//  FeedViewController.swift
//  Navigation
//
//  Created by Максим on 01.10.2025.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        
        let postButton = UIButton(type: .system)
        
        postButton.setTitle("Post", for: .normal)
        
        postButton.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        
        postButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(postButton)
        
        NSLayoutConstraint.activate([postButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     postButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)])

        // Do any additional setup after loading the view.
    }
    
    @objc func showPost() {
        let post = Post(title: "New Post")
        
        let PostVC = PostViewController(post: post)
        
        navigationController?.pushViewController(PostVC, animated: true)
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
