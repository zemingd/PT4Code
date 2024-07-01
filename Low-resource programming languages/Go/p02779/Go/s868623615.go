package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	m := make(map[int]int)

	for i := 0; i < N; i++ {
		var v int
		fmt.Scan("%d", &v)
		if val, found := m[v]; found {
			m[val]++
			if m[val] > 1 {
				fmt.Println("NO")
				return
			}
		}
	}
	fmt.Println("YES")
}
