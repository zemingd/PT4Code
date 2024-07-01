package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	var sum int
	for i := n - 1; i >= 1; i-- {
		if s[i:i+1] == "." {
			if s[i-1:i] == "#" {
				sum++
			}
		}
	}
	fmt.Println(sum)
}
