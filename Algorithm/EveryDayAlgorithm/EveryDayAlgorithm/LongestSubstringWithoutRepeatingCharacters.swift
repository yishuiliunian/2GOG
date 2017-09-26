//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  EveryDayAlgorithm
//
//  Created by Dong Zhao on 2017/9/26.
//  Copyright © 2017年 qcloud. All rights reserved.
//

import Foundation

class Solution {
    struct Constants {
        static let initSubfixString = ""
    }
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var longestStr: String = Constants.initSubfixString
        var subfixStr: String = Constants.initSubfixString
        
        for character in s.characters {
            if let charIndex = subfixStr.index(of: character){
                if charIndex < subfixStr.endIndex {
                    subfixStr = subfixStr.substring(from: subfixStr.index(charIndex, offsetBy: 1))
                }
                subfixStr += String(character)
            } else {
                subfixStr += String(character)
                if subfixStr.count >= longestStr.count {
                    longestStr = subfixStr
                }
            }
        }
        return longestStr.count
    }
}
