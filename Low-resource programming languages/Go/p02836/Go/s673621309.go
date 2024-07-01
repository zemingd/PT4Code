package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	a := strings.Split(s, "")
	len := len(a)
	var cnt int
	for i, c := range a {
		if i == len/2 {
			break
		}

		if c != a[len-i-1] {
			cnt++
		}
	}
	fmt.Println(cnt)
}
