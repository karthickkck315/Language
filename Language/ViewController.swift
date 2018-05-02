//
//  ViewController.swift
//  Language
//
//  Created by Karthick on 5/2/18.
//  Copyright © 2018 Karthick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var hello: UILabel!
  
  @IBOutlet weak var language: UILabel!
  
  @IBOutlet weak var button: UIButton!
  
  //Language file decalre
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
   changeLanguage()
  }

  func changeLanguage(){
    let languageFile = LanguageFile()
    hello.text = languageFile.Hello
    language.text = languageFile.Changelanguage
    button.setTitle(languageFile.Arabic, for: .normal)
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  @IBAction func chageLAnguageAction(_ sender: Any) {
    if LanguageFile.lang == "en"{
      LanguageFile.lang = "ar"
    }else {
      LanguageFile.lang = "en"
    }
    changeLanguage()
  }
  
}

