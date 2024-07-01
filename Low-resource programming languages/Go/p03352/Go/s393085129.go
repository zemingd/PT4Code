package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scan(&x)
	if x <= 3 {
		fmt.Println(1)
		return
	}
	ans := 1
	for i := 2; i <= x; i++ {
		v := i * i
		for v <= x {
			if ans < v {
				ans = v
			}
			v *= i
		}
	}
	fmt.Println(ans)
}
