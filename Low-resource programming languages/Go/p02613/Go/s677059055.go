package main

import "fmt"

var anss = [...]string{"AC", "WA", "TLE", "RE"}

func main() {
	n := 0
	r := make(map[string]int)
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		var s string
		fmt.Scan(&s)
		r[s]++
	}

	for _, ans := range anss {
		fmt.Println(ans, "x", r[ans])
	}
}
