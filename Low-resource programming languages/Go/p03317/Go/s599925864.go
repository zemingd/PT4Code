package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	if n%k == 0 {
		fmt.Println((n - 1) / (k - 1))
	} else {
		fmt.Println((n-1)/(k-1) + 1)
	}
}
