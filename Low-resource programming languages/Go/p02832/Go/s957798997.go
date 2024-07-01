package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&as[i])
	}

	x := 1
	ct := 0
	for i := range as {
		if as[i] == x {
			x++
		} else {
			ct++
		}
	}
	if ct == n {
		fmt.Println(-1)
	} else {
		fmt.Println(ct)
	}
}
