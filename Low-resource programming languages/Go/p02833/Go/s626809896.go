package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	if n%2 == 1 {
		fmt.Println(0)
		return
	}
	n /= 2
	var cnt int
	mul := 5
	for i := 0; i <= 25; i++ {
		num := int(n / mul)
		if num > 0 {
			cnt += num
		}
		mul *= 5
	}
	fmt.Println(cnt)
}
