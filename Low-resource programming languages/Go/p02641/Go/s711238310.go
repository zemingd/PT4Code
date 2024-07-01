package main

import (
	"fmt"
)

func main() {
	var x, n int
	fmt.Scan(&x, &n)
	
	p := make(map[int]bool)
	
	num := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&num)
		p[num] = true
	}
	
	min := 101
	ans := 101
	for j := 101; j >= 0; j-- {
		if !p[j] {
			abs := Abs(x, j)
			if min >= abs {
				min = abs
				ans = j
			}
		}
	}
	fmt.Println(ans)
}

func Abs(num1, num2 int)int {
	if num1 < num2 {
		return num2 - num1
	}
	return num1 - num2
}
