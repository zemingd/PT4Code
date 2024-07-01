package main

import (
	"fmt"
	"math"
)

func main() {
	var s string
	var t string
	fmt.Scan(&s, &t)
	var cnt int
	for i := 0; i < 3; i++ {
		if s[i] == t[i] {
			cnt++
		}
	}
	fmt.Println(cnt)
}
