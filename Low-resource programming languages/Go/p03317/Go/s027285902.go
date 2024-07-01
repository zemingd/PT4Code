package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	for i := 0; i < n; i++ {
		fmt.Scan()
	}
	x, y := n-1, k-1
	fmt.Println((x + y - 1) / y)
}
