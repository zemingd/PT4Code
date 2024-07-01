package main

import (
	"fmt"
)

func main() {
	var (
		s string
		k int
	)
	fmt.Scan(&k)
	fmt.Scan(&s)
	if len(s) <= k {
		fmt.Println(s)
	} else {
		fmt.Println(s[:k] + "...")
	}
}
