//
//  ColorOneViewController.swift
//  ColorByNumbers
//
//  Created by Alexandra Kazaglis on 12/9/18.
//  Copyright © 2018 Alexandra Kazaglis. All rights reserved.
//

import UIKit
import AVFoundation

class ColorOneViewController: UIViewController {
    
    //outlets
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var violetButton: UIButton!
    @IBOutlet weak var LBrownButton: UIButton!
    @IBOutlet weak var DBrownButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var eraser: UIButton!
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var thicknessSlider: UISlider!
    @IBOutlet weak var muteMusicButton: UIButton!
    @IBOutlet weak var pictureViewTwo: UIImageView!
    
    //variables
    var audioPlayer = AVAudioPlayer()
    var lastPoint = CGPoint.zero
    var red = 0.0
    var green = 0.0
    var blue = 0.0
    var continuous = false
    var thickness = 10.0
    
    //toggles music player
    @IBAction func muteMusic(_ sender: Any) {
        if (audioPlayer.isPlaying)
        {
            audioPlayer.pause()
            muteMusicButton.setTitle("unmute music", for: .normal)
        }
        else
        {
            audioPlayer.play()
            muteMusicButton.setTitle("mute music", for: .normal)
            
        }
    }
    
    //changes picture to cat
    @IBAction func catButton(_ sender: Any) {
        if pictureViewTwo.image == UIImage(named: "cattrans.png")
            {
            let alert = UIAlertController(title: "Are you sure you want to clear?", message: nil, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alert.addAction(cancelAction)
            let understandAction = UIAlertAction(title: "OK", style: .default, handler: {action in
            print("The user understands their grave situation.")
            })
            alert.addAction(understandAction)
            
            self.present(alert, animated: true, completion: nil)
            }
        else
        {
            pictureView.image = UIImage(named: "cat.jpg")
            pictureViewTwo.image = UIImage(named: "cattrans.png")
        }
        
    }
    
    //changes picture to blank
    @IBAction func blankButton(_ sender: Any) {
        pictureView.image = UIImage(named: "white.jpg")
        pictureViewTwo.image = UIImage(named: "transparentwork.jpg")
    }
    
    
    //changes picture to puppy
    @IBAction func puppyButton(_ sender: Any) {
        if pictureViewTwo.image == UIImage(named: "puppytrans.png")
        {
            let alert = UIAlertController(title: "Are you sure you want to clear?", message: nil, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alert.addAction(cancelAction)
            let understandAction = UIAlertAction(title: "OK", style: .default, handler: {action in
                print("The user understands their grave situation.")
            })
            alert.addAction(understandAction)
            
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            pictureView.image = UIImage(named: "puppy.jpg")
            pictureViewTwo.image = UIImage(named: "puppytrans.png")
        }
    }
    
    //changes picture to girl
    @IBAction func girlButton(_ sender: Any) {
        if pictureViewTwo.image == UIImage(named: "girltrans.png")
        {
            let alert = UIAlertController(title: "Are you sure you want to clear?", message: nil, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alert.addAction(cancelAction)
            let understandAction = UIAlertAction(title: "OK", style: .default, handler: {action in
                print("The user understands their grave situation.")
            })
            alert.addAction(understandAction)
            
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            pictureView.image = UIImage(named: "girl.jpg")
            pictureViewTwo.image = UIImage(named: "girltrans.png")
        }
    }
    
    //if red button is pressed
    @IBAction func redButtonPressed(_ sender: Any) {
        red = 1.0
        green = 0.0
        blue = 0.0
    }
    //if orange button is pressed
    @IBAction func orangeButtonPressed(_ sender: Any)
    {
        red = 225.0/255.0
        green = 142.0/255.0
        blue = 78.0/255.0
    }
    //if black button is pressed
    @IBAction func blackButtonPressed(_ sender: Any)
    {
        red = 0.0
        green = 0.0
        blue = 0.0
    }
    //if yellow button is pressed
    @IBAction func yellowButtonPressed(_ sender: Any)
    {
        red = 1.0
        green = 1.0
        blue = 51.0/255.0
    }
    //if grey button is pressed
    @IBAction func greyButtonPressed(_ sender: Any)
    {
        red = 192.0/255.0
        green = 192.0/255.0
        blue = 192.0/255.0
    }
    //if green button is pressed
    @IBAction func greenButtonPressed(_ sender: Any)
    {
        red = 51.0/255.0
        green = 149.0/255.0
        blue = 47.0/255.0
    }
    //if blue button is pressed
    @IBAction func blueButtonPressed(_ sender: Any)
    {
        red = 0.0
        green = 0.0
        blue = 1.0
    }
    //if violet button is pressed
    @IBAction func violetButtonPressed(_ sender: Any)
    {
        red = 167.0/255.0
        green = 133.0/255.0
        blue = 192.0/255.0
    }
    //if pink button is pressed
    @IBAction func pinkButtonPressed(_ sender: Any)
    {
        red = 1.0
        green = 204.0/255.0
        blue = 229.0/255.0
    }
    //if light brown button is pressed
    @IBAction func LBrownButtonPressed(_ sender: Any)
    {
        red = 146.0/255.0
        green = 116.0/255.0
        blue = 93.0/255.0
    }
    //if dark brown button is pressed
    @IBAction func DBrownButtonPressed(_ sender: Any)
    {
        red = 51.0/255.0
        green = 25.0/255.0
        blue = 0.0
    }
    //if eraser is pressed
    @IBAction func eraserButtonPressed(_ sender: Any)
    {
        red = 1.0
        blue = 1.0
        green = 1.0
    }
    
    @IBAction func thicknessSlider(_ sender: Any) {
        thickness = Double(thicknessSlider.value)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //plays music
        let sound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "happymusic", ofType: "mp3")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: sound as URL)
            audioPlayer.prepareToPlay()
        } catch {
            print("Problem in getting File")
        }
        audioPlayer.play()
        self.navigationController?.isNavigationBarHidden = false

        // Do any additional setup after loading the view.
    }
    
    //detects when user touches screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        continuous = false
        if let touch = touches.first {
            lastPoint = touch.location(in: pictureView)
            //self.view
        }
    }
    
    //draws lines
    func drawLine(from: CGPoint, to: CGPoint)
    {
        UIGraphicsBeginImageContext(pictureView.frame.size)
        let context = UIGraphicsGetCurrentContext()
        pictureView.image?.draw(in: CGRect(x: 0, y: 0, width: pictureView.frame.size.width, height: pictureView.frame.size.height))
        context?.move(to: from)
        context?.addLine(to: to)
        context?.setStrokeColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
        context?.setLineWidth(CGFloat(thickness))
        context?.setLineCap(.round)
        context?.setBlendMode(.normal)
        context?.strokePath()
        pictureView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }
    
    //detects user moving finger continuously
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        continuous = true
        if let touch = touches.first {
            let currentPoint = touch.location(in: pictureView)
            drawLine(from: lastPoint, to: currentPoint)
            lastPoint = currentPoint
        }
    }
    
    //when user stops touching screen
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !continuous {
            // draw a single point
            drawLine(from: lastPoint, to: lastPoint)
        }
    }
    
    //opens share menu
    @IBAction func shareButton(_ sender: Any) {
        UIGraphicsBeginImageContext(pictureView.frame.size)
        pictureView.image?.draw(in: CGRect(x: 0, y: 0, width: pictureView.frame.size.width, height: pictureView.frame.size.height))
        let picture = UIGraphicsGetImageFromCurrentImageContext()
        let activity = UIActivityViewController(activityItems: [picture as Any], applicationActivities: nil)
        UIGraphicsEndImageContext()
        present(activity, animated: true, completion: nil)

        
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
