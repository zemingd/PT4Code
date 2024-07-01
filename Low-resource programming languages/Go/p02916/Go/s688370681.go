package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int,n)
	b := make([]int,n)
	c := make([]int,n-1)

	for i := 0; i < n; i++ {
		var val int
		fmt.Scan(&val)
		a[i] = val
	}

	for i := 0; i < n; i++ {
		var val int
		fmt.Scan(&val)
		b[i] = val
	}

	for i := 0; i < n - 1; i++ {
		var val int
		fmt.Scan(&val)
		c[i] = val
	}

	tmp := a[0]
	var ans int
	for i := 0; i < n; i++ {
		ans += b[a[i] - 1]
		if a[i] == tmp + 1 {
			ans += c[a[i] - 2]
		}
		tmp = a[i]
	}
	fmt.Println(ans)
}