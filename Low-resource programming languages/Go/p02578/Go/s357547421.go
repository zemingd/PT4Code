package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&as[i])
	}

	ans := 0
	m := as[0]
	for i := 1; i < n; i++ {
		if m > as[i] {
			ans += m - as[i]
		} else {
			m = as[i]
		}
	}

	fmt.Println(ans)
}
