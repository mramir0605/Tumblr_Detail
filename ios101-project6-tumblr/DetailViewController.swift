//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by mary ramirez on 10/29/25.
//

import UIKit
import NukeExtensions

class DetailViewController: UIViewController {

   
    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var detailTextView: UITextView!

    var post: Post!
        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
               if let photo = post.photos.first {
                   let url = photo.originalSize.url
                   NukeExtensions.loadImage(with: url, into: postImageView)
               }
            detailTextView.text = post.caption.trimHTMLTags()
            navigationController?.navigationBar.prefersLargeTitles = true
          
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
