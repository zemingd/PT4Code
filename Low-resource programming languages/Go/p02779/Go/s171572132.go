package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	A := make([]int, N)
	for i, _ := range A {
		fmt.Scan(&A[i])
	}

	m := make(map[int]int)
	for _, a := range A {
		_, c := m[a]
		if c {
			fmt.Println("NO")
			return
		} else {
			m[a] = 1
		}
	}
	fmt.Println("YES")
}
