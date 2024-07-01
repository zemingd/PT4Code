package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	var ans int64 = 0

	a := make([]int64, N, N)

	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}

	maxi := a[0]

	for i := 1; i < N; i++ {
		if a[i] < maxi {
			ans += maxi - a[i]
		} else {
			maxi = a[i]
		}
	}

	fmt.Println(ans)

}
