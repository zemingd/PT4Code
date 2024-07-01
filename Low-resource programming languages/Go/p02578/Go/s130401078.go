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

	var ans int
	var now int
	var used bool
	var b int
	for i := 0; i < len(a)-1; i++ {
		b = a[i]
		if used {
			b = a[i] + now
		}
		if b > a[i+1] {
			ans += b - a[i+1]
			now = b - a[i+1]
			used = true
		} else {
			used = false
		}
	}

	fmt.Println(ans)
}
