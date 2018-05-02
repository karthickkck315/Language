//
//  LanguageClassPageVC.swift
//  HalfFrame
//
//  Created by Karthick on 2/1/18.
//  Copyright © 2018 Karthick. All rights reserved.
//

import UIKit

class LanguageFile: NSObject {
  
  //Set default english
  static var lang =   "en"
  
  //Get language based string
  var Hello = "Hello".localized(lang:LanguageFile.lang)
  var Changelanguage = "Change language".localized(lang:LanguageFile.lang)
  var Arabic = "Arabic".localized(lang:LanguageFile.lang)
  var English = "English".localized(lang:LanguageFile.lang)
  
  //It's default
  var on: String = NSLocalizedString("On", comment:"").localized(lang: LanguageFile.lang)
  var off: String = NSLocalizedString("Off", comment:"").localized(lang: LanguageFile.lang)
}


//Get text from localiable string class based on language
extension String {
  func localized(lang:String) ->String {
    //print(lang)
    let path = Bundle.main.path(forResource: lang, ofType: "lproj")
    let bundle = Bundle(path: path!)
    
    return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
  }
}
