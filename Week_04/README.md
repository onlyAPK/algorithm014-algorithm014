学习笔记
使用二分查找，寻找一个半有序数组 [4, 5, 6, 7, 0, 1, 2] 中间无序的地方
这里把无序理解为两个有序数组交界的地方： 
[4, 5, 6, 7, 0, 1, 2]为[7,0]
[3,4, 5, 6, 0, 1, 2]为[6,0]
[3,4,5,6,7,8,0,1,2]为[8,0]
func search(_ nums: [Int]) -> [Int] {
    var left = 0
    var right = nums.count - 1
    var beginIndex = 0
    var endIndex = 0
    while left <= right {
        let mid = left + (right-left)/2
        if left + 1 == right { //只剩最后两个元素，退出循环
            break
        }
        if nums[mid] > nums[left] {//如果mid大于left，说明左半边是有序的
            if nums[mid] > nums[right] {//如果mid大于right，说明这里是无序的交界处
                beginIndex = mid
            }
            left = mid   //将left设为mid的值，这里不加1，因为有可能是无序的交界处
        }else if nums[mid] < nums[left]{
            if(nums[mid] < nums[right]){//如果mid小于left并且也小于right，说明是无序的交界处
                endIndex = mid
                right = mid
            }
        }
    }
    return [beginIndex,endIndex]
}

这周有点落下了，真是一天不看，就有点跟不上。马上考试周，争取好好复习一下，取得个好成绩吧
