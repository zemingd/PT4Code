package main

import (
	"fmt"
)

func main() {
	var (
		n int64
	)
	fmt.Scan(&n)
	a := make([]int64, n)
	for i := int64(0); i < n; i++ {
		fmt.Scan(&a[i])
	}
	ans := int64(0)
	for i := int64(0); i < n; i++ {
		for j := i + a[i] + 1; j < n; j++ {
          if a[i]+a[j] == j-i {
				ans++
			}
		}
	}
	fmt.Println(ans)
}
