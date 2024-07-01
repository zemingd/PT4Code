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
	sa := strings.Split(s, "")
	ta := strings.Split(t, "")
	for i := 0; i < n; i++ {
		ans = append(ans, sa[i]+ta[i])
	}
	a := strings.Join(ans, "")
	fmt.Println(a)
}
