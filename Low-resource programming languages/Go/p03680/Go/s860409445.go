package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	ans := -1
	c := 0
	for i := 0; i < n; {
		c++
		t := a[i]
		a[i] = -1

		if t == 2 {
			ans = c
			break
		} else if t == -1 {
			break
		}
		i = t - 1
	}
	fmt.Println(ans)
}
