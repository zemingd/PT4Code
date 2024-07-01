package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	b := make([]int, n)
	ans := make([]int, 0, n)
	for i := len(a); i >= 1; i-- {
		x := 0
		for j := 2; j <= n; j++ {
			if i*j > n {
				break
			}
			x ^= b[i*j-1]
		}
		b[i-1] = x ^ a[i-1]
		if b[i-1] == 1 {
			ans = append(ans, i)
		}
	}

	fmt.Println(len(ans))
	for i, v := range ans {
		if i == len(ans)-1 {
			fmt.Println(v)
			continue
		}
		fmt.Printf("%d ", v)
	}
}
