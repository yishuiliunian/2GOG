//
//  File.swift
//  EveryDayAlgorithm
//
//  Created by Dong Zhao on 2017/9/27.
//  Copyright © 2017年 qcloud. All rights reserved.
//

import Foundation
extension Solution {
    func mediaArray(_ nums:[Int]) -> Double {
        if (nums.count == 0) {
            return 0;
        }
        if (nums.count % 2 == 0) {
            let mL:Int = (nums.count)/2 - 1;
            let mR:Int = (nums.count)/2;
            return Double(nums[mL]+nums[mR])/2;
        } else {
            return Double(nums[(nums.count - 1)/2]);
        }
    }
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let midian1 = (nums1.count - 1) / 2;
        let midian2 = (nums2.count - 1) / 2;
        if (nums2.count == 0){
            if(nums1.count != 0) {
                return self.mediaArray(nums1)
            } else {
                return 0;
            }
        } else {
            if (nums1.count == 0) {
                return self.mediaArray(nums2)
            }
        }
        
        let m1 = self.mediaArray(nums1);
        let m2 = self.mediaArray(nums2);
        
        var m1Rest:Array<Int>;
        var m2Rest:Array<Int>;
        if m1 > m2 {
            let cutdown = min(nums1.count - 1 - midian1 , midian2)
            m1Rest = Array(nums1[cutdown ..< nums1.count])
            if cutdown == 0 {
                m2Rest = []
            } else {
                m2Rest = Array(nums2[0 ... cutdown])
            }
            return findMedianSortedArrays(m1Rest, m2Rest)
        } else if m2 > m1 {
            let cutdown = min(nums2.count - 1 - midian2 , midian1)
            if cutdown == 0 {
                m1Rest = []
            } else {
                m1Rest = Array(nums1[0 ... cutdown])
            }
            m2Rest = Array(nums2[cutdown ..< nums2.count])
            return self.findMedianSortedArrays(m1Rest, m2Rest)
        } else {
            return Double(m2);
        }
    }
}
