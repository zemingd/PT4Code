package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)
	for n := range h {
		fmt.Scan(&h[n])
	}
	fmt.Println(garden(h))
}

func garden(h []int) int {
	//  全ての山の増加分の和
	var c, p int
	for _, v := range h {
		if p <= v {
			c += v - p
		}
		p = v
	}
	return c
}
