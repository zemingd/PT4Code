package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	count := make(map[string]int)
	for n > 0 {
		n--
		var s string
		fmt.Scan(&s)
		count[s]++
	}
	ss := []string{"AC", "WA", "TLE", "RE"}
	for _, s := range ss {
		fmt.Printf("%s x %d\n", s, count[s])
	}
}
