package main

import (
	"fmt"
	"os"
)

func main() {
	nums := ScanNums(2)
	for _, n := range nums {
		if n%2 == 0 {
			fmt.Print("No")
			os.Exit(1)
		}
	}
	fmt.Print("Yes")
}

func ScanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}