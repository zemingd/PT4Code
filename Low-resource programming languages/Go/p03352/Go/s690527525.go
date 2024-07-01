package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scan(&x)
	ans := 1
	for i := 2; i <= x; i++ {
		n := i * i
		for n <= x {
			if n > ans {
				ans = n
			}
			n *= i
		}
	}
	fmt.Println(ans)
}