package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	var k int
	fmt.Scan(&k)

	var s string
	fmt.Scan(&s)

	ss := make([]string, 0, n)
	ss = strings.Split(s, "")

	for idx, item := range ss {
		if idx == k-1 {
			ss[idx] = strings.ToLower(item)
		}
	}

	fmt.Println(strings.Join(ss, ""))
}
