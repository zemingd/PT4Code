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
	m[0] = 1
	for i := n - 1; i >= 0; i-- {
		t, _ := strconv.Atoi((s[i:]))
		m[t%2019]++
	}
	for i := 0; i < 2019; i++ {
		c += m[i] * (m[i] - 1) / 2
	}
	fmt.Println(c)
}
