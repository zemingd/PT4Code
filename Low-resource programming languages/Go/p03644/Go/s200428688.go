package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int, N+1)
	i := 1
	maxn := 1
	for ; i <= N; i++ {
		n := i
		for {
			if n%2 == 1 {
				break
			} else {
				a[i]++
				n /= 2
				if a[i] > a[maxn] {
					maxn = i
				}
			}
		}
	}
	fmt.Println(maxn)
}
