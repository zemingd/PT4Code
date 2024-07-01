package main

import "fmt"

func main() {
	var n, r int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}
	for i := 0; i < len(a); i++ {
		c := 0
		for a[i]%2 == 0 {
			c++
			a[i] /= 2
		}
		r += c
	}
	fmt.Println(r)
}