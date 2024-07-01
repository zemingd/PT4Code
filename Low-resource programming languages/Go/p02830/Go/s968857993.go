package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	var s, t []byte
	fmt.Scan(&s, &t)

	for i := 0; i < n; i++ {
		fmt.Print(string([]byte{s[i]}))
		fmt.Print(string([]byte{t[i]}))
	}
	fmt.Println()
}
