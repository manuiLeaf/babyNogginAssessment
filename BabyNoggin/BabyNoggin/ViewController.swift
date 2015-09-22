//
//  ViewController.swift
//  BabyNoggin
//
//  Created by Rose on 22/09/15.
//  Copyright (c) 2015 ileaf4. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
import MediaPlayer

class ViewController: UIViewController {
    @IBOutlet weak var thumbnailImageView:UIImageView?
    @IBOutlet weak var nextStep_Button: UIButton?
     @IBOutlet weak var play: UIButton?
    var moviePlayer : MPMoviePlayerController?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*￼
        * Setting Backgroung image for the container view as its background color from singleton class.
        */
        var backgroundColor:UIColor?=singletonClass.sharedInstance.Common_BackgroungColor()
        self.view.backgroundColor=backgroundColor
        nextStep_Button?.layer.cornerRadius=10
        play?.layer.cornerRadius=30
        /*
        * MPMoviePlayerController settingup
        */
        if let
            path = NSBundle.mainBundle().pathForResource("video", ofType:"mp4"),
            url = NSURL(fileURLWithPath: path),
            moviePlayer = MPMoviePlayerController(contentURL: url) {
              thumbnailImageView?.image=self .generateThumnail(url)

        }
    }
    func generateThumnail(url : NSURL) -> UIImage{
        /*
        * Generating thumbnail of the video return type UIImage
        */
        var asset : AVAsset = AVAsset.assetWithURL(url) as! AVAsset
        var assetImgGenerate : AVAssetImageGenerator = AVAssetImageGenerator(asset: asset)
        assetImgGenerate.appliesPreferredTrackTransform = true
        var error       : NSError? = nil
        var time        : CMTime = CMTimeMake(1, 30)
        var img         : CGImageRef = assetImgGenerate.copyCGImageAtTime(time, actualTime: nil, error: &error)
        var frameImg    : UIImage = UIImage(CGImage: img)!
        
        return frameImg
    }
    
    // MARK: - UIButton Action Method
   
    @IBAction func Play(sender:UIButton){
        if let
            path = NSBundle.mainBundle().pathForResource("video", ofType:"mp4"),
            url = NSURL(fileURLWithPath: path),
            moviePlayer = MPMoviePlayerController(contentURL: url) {
                thumbnailImageView?.image=self .generateThumnail(url)
                self.moviePlayer = moviePlayer
                moviePlayer.view.frame = CGRectMake(0, 122, 320, 284)
                                moviePlayer.prepareToPlay()
                                moviePlayer.scalingMode = .AspectFit
                
                                self.view.addSubview(moviePlayer.view)
        } else {
            debugPrintln("Ops, something wrong when playing video")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

