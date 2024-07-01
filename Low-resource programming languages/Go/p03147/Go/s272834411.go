package main

import "fmt"

func main(){
    var n int
    fmt.Scan(&n)

    nums := scanNums(n)
    fmt.Printf("%d\n", solve(nums))
}

func solve(nums []int) int {
    if len(nums) == 0 {
        return 0
    }

    minh := 1000
    ary := make([]int, 0)
    
    for i:=0; i<len(nums); i++{
        num := nums[i]
        if num == 0 {
            return solve(nums[:i]) + solve(nums[i+1:])
        }else{
            if num < minh {
                minh = num
            }
            ary = append(ary, num)
        }
    }

    
    for i:=0; i<len(ary); i++{
        ary[i] = ary[i] - minh
    }
    return minh + solve(ary)
}


/**
 * １行に空白区切りで数字を読み込み
 */
func scanNums(len int) (nums []int) {
	nums = make([]int, len)
	for i := 0; i < len; i++ {
		fmt.Scan(&nums[i])
	}
	return
}
