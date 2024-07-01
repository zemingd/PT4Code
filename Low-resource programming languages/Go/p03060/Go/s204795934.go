package main

import (
	"fmt"
)

func Solve(v, c []int) int {
	var n int
	for i := 0; i < len(v); i++ {
		if v[i] <= c[i] {
			continue
		}
		n += v[i] - c[i]
	}
	return n
}

func main() {
	var n int
	fmt.Scanf("%d", &n)
	v := make([]int, n)
	c := make([]int, n)
	args := make([]interface{}, len(v))
	for i := 0; i < len(v); i++ {
		args[i] = &v[i]
	}
	fmt.Scan(args...)
	args = make([]interface{}, len(c))
	for i := 0; i < len(v); i++ {
		args[i] = &c[i]
	}
	fmt.Scan(args...)
	result := Solve(v, c)
	fmt.Println(result)
}
