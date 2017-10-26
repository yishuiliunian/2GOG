//
//  LongestPalindromicSubstring.swift
//  EveryDayAlgorithm
//
//  Created by Dong Zhao on 2017/10/10.
//  Copyright © 2017年 qcloud. All rights reserved.
//

import Foundation

extension Solution {
    func findLongestPalindromicWithArch(originString :String, start :String.Index, end:String.Index) -> NSRange {
        var sItor = start;
        var eItor = end;
        while sItor > originString.startIndex && eItor < originString.endIndex.advanced(by: -1) {
            let tStart:String.Index = sItor.advanced(by: -1)
            let tEnd:String.Index = eItor.advanced(by: 1)
            
            if originString[tStart] == originString[tEnd] {
                sItor = tStart
                eItor = tEnd
                continue;
            } else {
                let rang = NSMakeRange(sItor.distance(to: originString.startIndex), sItor.distance(to: eItor))
                return rang;
            }
        }
        let rang = NSMakeRange(sItor.distance(to: originString.startIndex), sItor.distance(to: eItor))
        return rang
    }
    
    func LongestPalindromicSubstring(s :String) -> Int {
        if s.lengthOfBytes(using: String.Encoding.utf8) == 0 {
            return 0
        }
        
        var itor:String.Index = s.startIndex;
        var maxLength = 0
        
        for itor in s.characters.indices {
            if itor > s.characters.startIndex {
                var tempBackItor = itor.advanced(by: -1);
                if s[tempBackItor] == s[itor] {
                        maxLength = max(maxLength, findLongestPalindromicWithArch(originString: s, start: tempBackItor, end: itor).length)
                }
                if itor < s.characters.endIndex.advanced(by: -1) {
                    var afterItor = itor.advanced(by: 1)
                    if s[tempBackItor] == s[afterItor] {
                             maxLength = max(maxLength, findLongestPalindromicWithArch(originString: s, start: tempBackItor, end: afterItor).length)
                    }
                }
            }
        }
        return maxLength+1;
    }
}
