package main

import (
	"fmt"
)

func main() {
	var s int
	fmt.Scan(&s)

	M := 1000000
	a := make([]int, M)

	for i := 1; i < M; i++ {
		if i == 1 {
			a[i] = s
		} else if a[i-1]%2 == 0 {
			a[i] = a[i-1] / 2
		} else {
			a[i] = 3*a[i-1] + 1
		}

		if a[i] == 4 || a[i] == 2 || a[i] == 1 {
			fmt.Println(i + 3)
			break
		}
	}
}
