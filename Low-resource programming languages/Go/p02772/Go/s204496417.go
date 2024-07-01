package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	A := make([]int, N)
	f := false
	for i, _ := range A {
		fmt.Scan(&A[i])
		if f {
			continue
		}
		if A[i]%2 == 0 && A[i]%3 != 0 && A[i]%5 != 0 {
			f = true
		}
	}
	if f {
		fmt.Println("DENIED")
	} else {
		fmt.Println("APPROVED")
	}
}
