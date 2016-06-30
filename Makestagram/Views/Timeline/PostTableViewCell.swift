//
//  PostTableViewCell.swift
//  Makestagram
//
//  Created by Bob De Kort on 28/06/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit
import Bond
import Parse

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var likesIconImageView: UIImageView!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var moreButton: UIButton!
    
    var post: Post? {
        didSet {
            // 1
            if let post = post {
                //2
                // bind the image of the post to the 'postImage' view
                post.image.bindTo(postImageView.bnd_image)
            }
        }
    }
    
    @IBAction func moreButtonTapped(sender: AnyObject){
        
    }
    
    @IBAction func likeButtonTaped(sender: AnyObject){
        post?.toggleLikePost(PFUser.currentUser()!)
    }
}
