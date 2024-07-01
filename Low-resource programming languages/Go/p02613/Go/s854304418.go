package main

import "fmt"

func main() {
	var n int
	m := make(map[string]int)
	fmt.Scan(&n)
	for ; n > 0; n-- {
		var s string
		fmt.Scan(&s)
		m[s]++
	}

	for _, s := range []string{"AC", "WA", "TLE", "RE"} {
		fmt.Println(s, " x ", m[s])
	}
}
