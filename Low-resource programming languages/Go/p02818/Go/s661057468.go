package main

import "fmt"

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)
	if k > a && k-a >= b {
		fmt.Println(0, 0)
		return
	}
	if k >= a {
		fmt.Println(0, b-(k-a))
		return
	}
	fmt.Println(a-k, b)
}
