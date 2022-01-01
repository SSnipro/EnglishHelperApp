//
//  File.swift
//  
//
//  Created by 老房东 on 2021-12-31.
//

import Foundation
import SwiftUI

struct Answer: Identifiable{
    var id = UUID()
    var name : String
    var answer : String{
//        let nameArrar = name.components(separatedBy: ".")
//        return nameArrar[0]
        return name
    }
    var isCorrect : Bool
}
