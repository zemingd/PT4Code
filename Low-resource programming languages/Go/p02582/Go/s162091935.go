package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	rs := map[string]int{
		"RRR": 3,
		"RRS": 2,
		"RSR": 1,
		"RSS": 1,
		"SRR": 2,
		"SRS": 1,
		"SSR": 1,
		"SSS": 0,
	}
	fmt.Println(rs[s])
}
