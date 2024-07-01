package main

import "fmt"

func main() {
	var n, k, x, y int
	fmt.Scan(&n, &k, &x, &y)
	if n <= k {
		fmt.Println(n * x)
	} else {
		fmt.Println((k * x) + ((n - k) * y))
	}
}
