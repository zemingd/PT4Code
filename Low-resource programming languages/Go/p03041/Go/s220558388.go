package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, k int
	var s []string

	fmt.Scan(&n, &k)
	var tmpS string
	fmt.Scan(&tmpS)
	s = strings.Split(tmpS, "")

	s[k-1] = strings.ToLower(s[k-1])
	fmt.Println(strings.Join(s, ""))
}
