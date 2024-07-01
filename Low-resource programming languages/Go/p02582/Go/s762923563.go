package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	ans := 0
	if strings.Contains(s, "RRR") {
		ans = 3
	} else if strings.Contains(s, "RR") {
		ans = 2
	} else if strings.Contains(s, "R") {
		ans = 1
	}
	fmt.Println(ans)
}
