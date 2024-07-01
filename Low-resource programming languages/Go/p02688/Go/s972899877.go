package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n)
	fmt.Scan(&k)

	c := make([]int, n, n)

	for i := 1; i <= k; i++ {
		var d int
		fmt.Scan(&d)
		for j := 1; j <= d; j++ {
			var a int
			fmt.Scan(&a)
			c[a-1]++
		}
	}

	answer := 0
	for i := 0; i < n; i++ {
		if c[i] == 0 {
			answer++
		}
	}
	fmt.Println(answer)
}
