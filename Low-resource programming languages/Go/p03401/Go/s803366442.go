package main

import "fmt"

func diff(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n, n+2)
	for i := 0; i < n; i++ {
		fmt.Scan(&as[i])
	}
	as = append([]int{0}, as...)
	as = append(as, 0)
	sum := 0
	for i := 0; i < len(as)-1; i++ {
		sum += diff(as[i], as[i+1])
	}
	for i := 1; i < len(as)-1; i++ {
		ans := sum
		ans -= diff(as[i-1], as[i]) + diff(as[i], as[i+1])
		ans += diff(as[i-1], as[i+1])
		fmt.Println(ans)
	}
}
