package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var a, b, c, k int
	fmt.Scan(&a, &b, &c, &k)
	var ret int
	if a > k {
		ret = k
	} else if a+b > k {
		ret = a
	} else {
		ret = a - (k - a - b)
	}
	fmt.Println(ret)
}
