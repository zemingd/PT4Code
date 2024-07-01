package main

import "fmt"

func main()  {
	var n int
	fmt.Scan(&n)
	nums := ScanNums(n)
	var ans float64
	for i := 0; i < n; i++ {
		ans += 1 / float64(nums[i])
	}
	fmt.Println(1  / ans)
}

func ScanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
