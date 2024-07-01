package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	m := f(n)
	for i := 1; i <= n; i++ {
		fmt.Println(m[i])
	}
}

func f(n int) map[int]int {
	m := map[int]int{}
	for x := 1; x*x <= n; x++ {
		for y := 1; y*y <= n; y++ {
			for z := 1; z*z <= n; z++ {
				a := (x+y)*(x+y) + (y+z)*(y+z) + (z+x)*(z+x)
				if a%2 == 0 {
					m[a/2]++
				}
			}
		}
	}
	return m
}