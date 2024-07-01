package main

import "fmt"

func main() {
	var a, b, c, k int64
	fmt.Scan(&a, &b, &c, &k)
	if a >= k {
		fmt.Println(k)
	} else {
		fmt.Println(a - (k-(a+b)))
	}
}