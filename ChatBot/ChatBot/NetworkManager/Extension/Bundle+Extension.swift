//
//  Bundle+Extension.swift
//  ChatBot
//
//  Created by JaeHyeok Sim on 1/5/24.
//

import Foundation

extension Bundle {
    var apiKey: String? {
        guard let file = self.path(forResource: "APIKEY", ofType: "plist"),
              let resource = NSDictionary(contentsOfFile: file),
              let value = resource["OPENAI_API_KEY"] as? String else { return nil }
        return value
    }
}
