package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	d := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&d[i])
	}
	p := make(map[int]int)
	for v := range d {
		p[d[v]]++
	}
	fmt.Println(len(p))
}
