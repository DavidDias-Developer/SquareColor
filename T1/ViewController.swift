//
//  ViewController.swift
//  Sliders
//
//  Created by Developer on 24/05/17.
//  Copyright © 2017 David Dias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var square=UILabel()
    var rgbaLabel=UILabel()
    var RedSlider=UISlider()
    var GreenSlider=UISlider()
    var BlueSlider=UISlider()
    var AlphaSlider=UISlider()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor(red: 238/255, green: 242/255, blue: 245/255, alpha: 1)
        
        setUI()
        
    }
    
    
    func setUI(){
        
        //Quadradp
        square = UILabel (frame: CGRect(x: view.frame.maxX/2-75 , y:75, width:150, height:150))
        square.backgroundColor = UIColor(colorLiteralRed: 159/255, green: 69/255, blue: 56/255, alpha: 0.76)
        view.addSubview(square)
        
        //Label com o valor dos sliders
        rgbaLabel = UILabel(frame:CGRect (x:20, y:250, width:view.frame.width, height:30))
        rgbaLabel.text = "R: 159 - G: 69 - B: 56 - A: 76"
        
        view.addSubview(rgbaLabel)
        
        
        
        
        //-----------------------------------------Sliders---------------------------------------------//
        RedSlider = UISlider (frame: CGRect(x: view.frame.maxX/2-120, y: 280, width: 250, height: 20))
        RedSlider.minimumValue = 0
        RedSlider.maximumValue = 255
        RedSlider.value = 159
        RedSlider.addTarget(self, action: #selector(ViewController.onChangeValueSlider(sender:)), for: UIControlEvents.valueChanged)
        view.addSubview(RedSlider)
        
        
        GreenSlider = UISlider (frame: CGRect(x: view.frame.maxX/2-120, y: 350 , width: 250, height: 20))
        GreenSlider.minimumValue = 0
        GreenSlider.maximumValue = 255
        GreenSlider.value = 69
        GreenSlider.addTarget(self, action: #selector(ViewController.onChangeValueSlider(sender:)), for: UIControlEvents.valueChanged)
        view.addSubview(GreenSlider)
        
        
        BlueSlider = UISlider (frame: CGRect(x: view.frame.maxX/2-120, y: 420, width: 250, height: 20))
        BlueSlider.minimumValue = 0
        BlueSlider.maximumValue = 255
        BlueSlider.value = 56
        BlueSlider.addTarget(self, action: #selector(ViewController.onChangeValueSlider(sender:)), for: UIControlEvents.valueChanged)
        view.addSubview(BlueSlider)
        
        
        AlphaSlider = UISlider (frame: CGRect(x: view.frame.maxX/2-120, y: 490, width: 250, height: 20))
        AlphaSlider.minimumValue = 0
        AlphaSlider.maximumValue = 100
        AlphaSlider.value = 76
        AlphaSlider.addTarget(self, action: #selector(ViewController.onChangeValueSlider(sender:)), for: UIControlEvents.valueChanged)
        view.addSubview(AlphaSlider)
        //------------------------------------------------------------------------------------------------//
        
    }
    
    
    
    //Função quando se altera o valor de 1 slider
    func onChangeValueSlider (sender: AnyObject){
        
        square.backgroundColor = UIColor(colorLiteralRed: RedSlider.value/255, green: GreenSlider.value/255, blue: BlueSlider.value/255, alpha: AlphaSlider.value/100)
        
        
        rgbaLabel.text = "R: \(Int(RedSlider.value)) - G: \(Int(GreenSlider.value)) - B: \(Int(BlueSlider.value)) - A: \(Int(AlphaSlider.value))"
        
    }
    
    
    
    
    
}
