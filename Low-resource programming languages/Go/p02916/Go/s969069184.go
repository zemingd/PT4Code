package main

import "fmt"

func main()  {
	var n int
	fmt.Scan(&n)
	dishes := ScanNums(n)
	satisfactions := ScanNums(n)
	extraSatisfactions := ScanNums(n-1)
	totalSatisfaction := 0
	lastDishIndex := -1
	for i := 0; i < n; i++ {
		dishIndex := dishes[i]-1
		totalSatisfaction += satisfactions[dishIndex]
		if lastDishIndex >= 0 && lastDishIndex+1 == dishIndex {
			totalSatisfaction += extraSatisfactions[dishIndex-1]
		}
		lastDishIndex = dishIndex
	}
	fmt.Println(totalSatisfaction)
}

func ScanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
