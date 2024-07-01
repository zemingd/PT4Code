package main

import "fmt"

func main() {
	var n int
	var s string

	fmt.Scan(&n)
	fmt.Scan(&s)

	t := "ABC"
	var count int
	for i := 0; i < n-len(t); i++ {
		if s[i:i+len(t)] == t {
			count++
		}
	}
	fmt.Println(count)
}