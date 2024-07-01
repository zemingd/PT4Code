package main

import "fmt"

func main() {
	var n, k int
	var s string
	fmt.Scan(&n, &k, &s)
	for i, c := range s {
		if i == k-1 {
			fmt.Printf("%c", c+0x20)
		} else {
			fmt.Printf("%c", c)
		}
	}
	fmt.Printf("\n")
}
