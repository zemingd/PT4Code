package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var s, t string
	fmt.Scan(&n, &s, &t)
	var ans []string
	for i := 0; i < n; i++ {
		ans = append(ans, string(s[i]))
		ans = append(ans, string(t[i]))
	}
	fmt.Println(strings.Join(ans, ""))
}
