package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
		a[i]--
	}
	c := 0
	now := 0
	for i := 0; i < N; i++ {
		if now == 1 {
			fmt.Println(c)
			return
		} else {
			now = a[now]
			c++
		}
	}
	fmt.Println(-1)
}