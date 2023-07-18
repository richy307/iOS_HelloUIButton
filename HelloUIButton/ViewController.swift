//
//  ViewController.swift
//  HelloUIButton
//
//  Created by 王麒翔 on 2022/12/10.
//

import UIKit

class ViewController: UIViewController {

    // connect UIButton Action
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("Hello World")
    }
    
    @objc func hitMe(_ thisButton:UIButton) { // @objc 讓 objective-c 可以呼叫
        print("Yo! What's up ??")
    }
    
    let codeButton:UIButton = {
        let newButton = UIButton(type: .system)
        newButton.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        newButton.setTitle("Press", for: .normal)
        newButton.setTitle("Pressing", for: .highlighted)
        newButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), for: .touchUpInside)
        return newButton
    }()
    
    func setUpUI(){
        view.addSubview(codeButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // how to make system style button via code
        let newButton = UIButton(type: .system)
        newButton.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        newButton.setTitle("Press", for: .normal)
        newButton.setTitle("Pressing", for: .highlighted)
        newButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), for: .touchUpInside)
        view.addSubview(newButton)
        
        // how to make image button via code
        let anotherButton = UIButton(type: .custom)
        anotherButton.frame = CGRect(x: 200, y: 200, width: 114, height: 54)
        anotherButton.setImage(UIImage(named: "PlayButton"), for: .normal)
        anotherButton.setImage(UIImage(named: "PlayButtonPressed"), for: .highlighted)
        anotherButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), for: .touchUpInside)
        view.addSubview(anotherButton)
    }


}

