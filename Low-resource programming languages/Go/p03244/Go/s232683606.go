package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	e := make(map[int]int)
	o := make(map[int]int)
	var v int
	for i := 0; i < n; i++ {
		fmt.Scan(&v)
		if i%2 == 0 {
			e[v]++
		} else {
			o[v]++
		}
	}

	k1, v1 := maxVal(e)
	k2, v2 := maxVal(o)

	if k1 != k2 {
		fmt.Println(n - v1 - v2)
	} else {
		e[k1] = 0
		o[k2] = 0
		_, v3 := maxVal(e)
		_, v4 := maxVal(o)

		a := n - v1 - v4
		b := n - v2 - v3
		if b < a {
			a = b
		}
		fmt.Println(a)
	}
}

func maxVal(m map[int]int) (int, int) {
	val := 0
	key := 0
	for k, v := range m {
		if val < v {
			val = v
			key = k
		}
	}
	return key, val
}
