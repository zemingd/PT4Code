package main

import (
	"fmt"
)

var a, b, k int64

func main() {
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&k)

	if a+b <= k {
		fmt.Print("0 0")
	} else if k <= a {
		fmt.Printf("%d %d", a-k, b)
	} else {
		fmt.Printf("0 %d", b-(k-a))
	}
}
