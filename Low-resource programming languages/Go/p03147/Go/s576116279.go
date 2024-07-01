package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)
	for n := range h {
		fmt.Scan(&h[n])
	}
	fmt.Println(garden(n, h))
}

func garden(n int, h []int) int {
	var add int
	for _, v := range h {
		if v == 0 {
			add++
		}
	}
	return reduce(h) + add
}

func reduce(h []int) int {
	var c int
	for {
		if clear(h) {
			break
		}
		c++
		for i, v := range h {
			h[i] = v - 1
		}
		for i, v := range h {
			if v < 1 {
				c += reduce(h[:i+1])
				c += reduce(h[i+1:])
			}
		}
	}
	return c
}

func clear(h []int) bool {
	var ov int
	for _, v := range h {
		if v > 0 {
			ov++
		}
	}
	if ov == 0 {
		return true
	}
	return false
}
