package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	m := make([]int, n)
	b := make([]int, 0)
	for i := n; i > 0; i-- {
		sum := 0
		for j := i; j <= n; j += i {
			if m[j-1] == 1 {
				sum += j
			}
		}
		if sum%2 != a[i-1] {
			m[i-1] = 1
			b = append([]int{i}, b...)
		}
	}

	fmt.Println(len(b))
	if len(b) > 0 {
		fmt.Println(strings.Trim(fmt.Sprint(b), "[]"))
	}
}
