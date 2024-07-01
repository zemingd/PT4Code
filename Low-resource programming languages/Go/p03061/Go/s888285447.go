package main

import (
	"fmt"
)

func gcd(a, b int) int {
	for b != 0 {
		a, b = b, a%b
	}
	return a
}

func Solve(a []int) int {
	var r int
	indexes := make([]int, 0, len(a)-1)
	for i := 0; i < len(a); i++ {
		indexes = indexes[:0]
		for j := 0; j < len(a); j++ {
			if len(a) > 2 && i == j {
				continue
			}
			indexes = append(indexes, j)
		}
		c := gcd(a[indexes[0]], a[indexes[1]])
		for _, j := range indexes[2:] {
			c = gcd(c, a[j])
		}
		if c > r {
			r = c
		}
	}
	return r
}

func main() {
	var n int
	fmt.Scanf("%d", &n)
	a := make([]int, n)
	args := make([]interface{}, len(a))
	for i := 0; i < len(a); i++ {
		args[i] = &a[i]
	}
	fmt.Scan(args...)
	result := Solve(a)
	fmt.Println(result)
}
