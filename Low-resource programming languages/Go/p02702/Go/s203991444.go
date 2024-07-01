package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	n := len(s)
	m := make([]int, 2019)
	c := 0
	for i := n; i >= 0; i-- {
		t, _ := strconv.Atoi((s[i:]))
		t = t % 2019
		m[t]++
	}
	for i := 0; i < 2019; i++ {
		c += m[i] * (m[i] - 1) / 2
	}
	fmt.Println(c)
}
