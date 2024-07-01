package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	n := len(s)
	m := make([]int, 2020)
	c := 0
	m[0] = 1
	for i := n - 1; i >= 0; i-- {
		t, _ := strconv.Atoi((s[i:]))
		t = t * 10 % 2019
		m[t]++
	}
	for _, v := range m {
		c += v * (v - 1) / 2
	}
	fmt.Println(c)
}
