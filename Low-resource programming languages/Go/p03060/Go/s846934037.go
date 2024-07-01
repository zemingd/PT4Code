package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	vs, cs := make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		vs[i] = tmp
	}
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		cs[i] = tmp
	}
	sum := 0
	for i := 0; i < n; i++ {
		if vs[i] - cs[i] > 0 {
			sum += vs[i] - cs[i]
		}
	}
	fmt.Println(sum)
}