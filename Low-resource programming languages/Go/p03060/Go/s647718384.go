package main

import "fmt"

func readline(n int) []int {
	var a = make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	return a
}

func main() {
	var n int
	fmt.Scan(&n)
	v := readline(n)
	c := readline(n)
	res := 0
	for i := 0; i < n; i++ {
		if v[i]-c[i] > 0 {
			res += v[i] - c[i]
		}
	}
	fmt.Println(res)
}
