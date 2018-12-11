//
//  ColorOneViewController.swift
//  ColorByNumbers
//
//  Created by Alexandra Kazaglis on 12/9/18.
//  Copyright © 2018 Alexandra Kazaglis. All rights reserved.
//

import UIKit

class ColorOneViewController: UIViewController {
    
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
    
    var lastPoint = CGPoint.zero
    var red = 0.0
    var green = 0.0
    var blue = 0.0
    var continuous = false
    var thickness = 10.0
    
    @IBAction func catButton(_ sender: Any) {
        pictureView.image = UIImage(named: "cat.jpg")
    }
    
    @IBAction func kittenButton(_ sender: Any) {
        pictureView.image = UIImage(named: "catcoloring.jpg")
    }
    
    @IBAction func puppyButton(_ sender: Any) {
        pictureView.image = UIImage(named: "puppy.jpg")
    }
    
    @IBAction func girlButton(_ sender: Any) {
        pictureView.image = UIImage(named: "girl.jpg")
    }
    
    @IBAction func redButtonPressed(_ sender: Any) {
        red = 255.0
        green = 0.0
        blue = 0.0
    }
    @IBAction func orangeButtonPressed(_ sender: Any)
    {
        red = 226.0
        green = 142.0
        blue = 78.0
    }
    @IBAction func blackButtonPressed(_ sender: Any)
    {
        red = 0.0
        green = 0.0
        blue = 0.0
    }
    @IBAction func yellowButtonPressed(_ sender: Any)
    {
        red = 255.0
        green = 255.0
        blue = 51.0
    }
    @IBAction func greyButtonPressed(_ sender: Any)
    {
        red = 192.0
        green = 192.0
        blue = 192.0
    }
    @IBAction func greenButtonPressed(_ sender: Any)
    {
        red = 51.0
        green = 149.0
        blue = 47.0
    }
    @IBAction func blueButtonPressed(_ sender: Any)
    {
        red = 0.0
        green = 0.0
        blue = 255.0
    }
    @IBAction func violetButtonPressed(_ sender: Any)
    {
        red = 167.0
        green = 133.0
        blue = 192.0
    }
    @IBAction func pinkButtonPressed(_ sender: Any)
    {
        red = 255.0
        green = 204.0
        blue = 229.0
    }
    @IBAction func LBrownButtonPressed(_ sender: Any)
    {
        red = 146.0
        green = 116.0
        blue = 93.0
    }
    @IBAction func DBrownButtonPressed(_ sender: Any)
    {
        red = 51.0
        green = 25.0
        blue = 0.0
    }
    @IBAction func eraserButtonPressed(_ sender: Any)
    {
        red = 255.0
        blue = 255.0
        green = 255.0
    }
    
    @IBAction func thicknessSlider(_ sender: Any) {
        thickness = Double(thicknessSlider.value)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        continuous = false
        if let touch = touches.first {
            lastPoint = touch.location(in: pictureView)
            //self.view
        }
    }
    
    func drawLine(from: CGPoint, to: CGPoint)
    {
        //make line appear from from to to
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
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        continuous = true
        if let touch = touches.first {
            let currentPoint = touch.location(in: pictureView)
            drawLine(from: lastPoint, to: currentPoint)
            lastPoint = currentPoint
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !continuous {
            // draw a single point
            drawLine(from: lastPoint, to: lastPoint)
        }
    }
    
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
