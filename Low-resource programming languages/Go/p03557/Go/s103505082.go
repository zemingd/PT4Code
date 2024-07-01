package main

import (
	"fmt"
	"sort"
)

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func main() {
	var num int
	var top,middle,bottom []int
	fmt.Scan(&num)

	top = scanNums(num)
	middle = scanNums(num)
	bottom = scanNums(num)

	sort.Ints(top)
	sort.Ints(middle)
	sort.Ints(bottom)

	ans := 0
	for i:=0;i<num;i++{
		a := sort.Search(num, func(n int) bool {
			return top[n] >= middle[i]
		})
		c := sort.Search(num, func(n int) bool {
			return bottom[n] > middle[i]
		})
		ans += a*(num-c)
	}
	fmt.Println(ans)
}