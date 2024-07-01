package main

import "fmt"

func main() {
	var N, r int
	fmt.Scan(&N)
	a := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}
	p := 1
	var w []int
	for i := 0; i < N; i++ {
		if a[i] == p {
			w = append(w, p)
			p++
		} else {
			r++
		}
	}
	if len(w) == 0 {
		fmt.Println(-1)
	} else {
		fmt.Println(r)
	}
}