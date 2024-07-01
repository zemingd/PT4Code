package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	ar := make([]int, n)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	ans := 999999999
	for i := 0; i < n-1; i++ {
		left := 0
		for j := 0; j <= i; j++ {
			left += ar[j]
		}
		right := 0
		for j := i + 1; j < n; j++ {
			right += ar[j]
		}
		v := left - right
		if v < 0 {
			v = -v
		}
		if v < ans {
			ans = v
		}
	}
	fmt.Println(ans)
}
