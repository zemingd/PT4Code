package main

import "fmt"

func main() {
	var n, ans int
	fmt.Scan(&n)
	v := make([]int, n)
	c := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&v[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
	}
	for i := 0; i < n; i++ {
		if v[i]-c[i] > 0 {
			ans += v[i] - c[i]
		}
	}
	fmt.Println(ans)
}