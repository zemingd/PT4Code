package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	m := make(map[int]bool)
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		m[a] = true
	}
	if len(m) == n {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
