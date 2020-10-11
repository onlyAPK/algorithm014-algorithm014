学习笔记
国庆期间，算是找时间把回溯的题目都过了一遍。对回溯的题目已经有了些许感觉。进度上似乎慢了两拍，得抓紧时间赶上进度了
快排：
func quickSort(_ nums:inout [Int], _ begin:Int, _ end:Int) -> Void {
    if end<=begin {
        return
    }
    let pivot = findPivot(&nums, begin, end)
    print("-",begin,pivot)
    quickSort(&nums, begin, pivot-1)
    print("--",pivot,end)
    quickSort(&nums, pivot+1, end)
}

func findPivot(_ nums:inout [Int],_ begin:Int, _ end:Int) -> Int {
    print(nums)
    var counter = begin
    let pivot = end
    for i in begin..<end {
        if nums[i] < nums[pivot] {
            let temp = nums[i]
            nums[i] = nums[counter]
            nums[counter] = temp
            print(nums)
            counter += 1
        }
    }
    let tmp = nums[pivot]
    nums[pivot] = nums[counter]
    nums[counter] = tmp
    print(nums)
    return counter
}
