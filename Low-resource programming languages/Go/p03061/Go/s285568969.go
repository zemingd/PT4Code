package main

import (
	"fmt"
)

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func Solve(a []int) int {
	var r int
	l := make([]int, len(a)-1)
	for i := 0; i < len(a); i++ {
		copy(l, a[:i])
		copy(l[i:], a[i+1:])
		c := gcd(l[0], l[1])
		for _, v := range l {
			c := gcd(c, v)
			if c > r {
				r = c
			}
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
