package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var a, b, s int
	for i := 0; i < n; i++ {
		fmt.Scan(&a, &b)
		s += b
		if k <= s {
			fmt.Println(a)
			return
		}
	}
}
