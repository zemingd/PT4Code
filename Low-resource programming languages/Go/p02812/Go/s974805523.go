package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	var count int
	for i := 0; i < n-2; i++ {
		if s[i:i+3] == "ABC" {
			count++
			i += 2
		}
	}
	fmt.Println(count)
}