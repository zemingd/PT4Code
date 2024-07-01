package main

import (
	"fmt"
)

func main() {
	var n, a int
	fmt.Scan(&n)
	var b []int
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		b = append(b, a)
		b = reverse(b)
	}
	fmt.Println(b)
}
func reverse(t []int) []int {
	w := make([]int, len(t))
	for i := 0; i < len(t); i++ {
		w[i] = t[len(t)-1-i]
	}
	return w
}