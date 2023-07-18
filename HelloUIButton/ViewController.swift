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
    
    // 宣告觸發事件 function
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
        
        // how to make system style button via code // new UIButton
        let newButton = UIButton(type: .system)
        newButton.frame = CGRect(x: 50, y: 50, width: 100, height: 50) // 位置大小
        newButton.setTitle("Press", for: .normal) // 未點擊時文字
        newButton.setTitle("Pressing", for: .highlighted) // 點擊時文字
        newButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), for: .touchUpInside) // 點擊時觸發事件
        view.addSubview(newButton) // show到畫面上
        
        // how to make image button via code
        let anotherButton = UIButton(type: .custom)
        anotherButton.frame = CGRect(x: 200, y: 200, width: 114, height: 54)
        anotherButton.setImage(UIImage(named: "PlayButton"), for: .normal) // 按鈕圖片 未點擊時
        anotherButton.setImage(UIImage(named: "PlayButtonPressed"), for: .highlighted) // 按鈕圖片 點擊時
        anotherButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), for: .touchUpInside)
        view.addSubview(anotherButton) // show到畫面上
    }


}

