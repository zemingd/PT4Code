package main

import (
	"fmt"
)

func main() {
	nums := ScanNums(5)
	minModulo := 10
	totalMin := 0
	for _, num := range nums {
		modulo := num % 10
		if modulo == 0 {
			totalMin += num
		} else {
			if modulo < minModulo {
				minModulo = modulo
			}
			totalMin += num + 10 - modulo
		}
	}
	
	fmt.Println(totalMin - (10 - minModulo))
}

func ScanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
