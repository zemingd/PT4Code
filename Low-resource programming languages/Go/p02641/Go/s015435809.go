package main

import (
	"fmt"
)

func abs(x int) int {
	if x < 0 {
		return x * (-1)
	}
	return x
}
func main() {
	var x, n, t int
	fmt.Scan(&x, &n)
	var mp [101]int
	for i := 0; i < n; i++ {
		fmt.Scan(&t)
		mp[t] = 1
	}
	res := 101
	an := 0
	for i := 1; i < 201; i++ {
		if abs(int(x-i)) < res && mp[i] == 0 {
			an = i
			res = x - i
		}
	}
	fmt.Println(an)
}
