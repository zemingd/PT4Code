package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	a := make([]int, n)
	var d int
	for i := 0; i < k; i++ {
		fmt.Scan(&d)
		for j := 0; j < d; j++ {
			var aa int
			fmt.Scan(&aa)
			a[aa-1]++
		}
	}
	var ans int
	for _, e := range a {
		if e == 0 {
			ans++
		}
	}

	fmt.Println(ans)
}
