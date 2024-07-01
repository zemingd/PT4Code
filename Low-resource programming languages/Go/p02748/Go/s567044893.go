package main

import "fmt"

func main() {
	var a, b, m int
	fmt.Scan(&a, &b, &m)

	amin := int(1e9)
	bmin := int(1e9)

	as := make([]int, a)
	for i := 0; i < a; i++ {
		fmt.Scan(&as[i])
		amin = min(amin, as[i])
	}
	bs := make([]int, b)
	for i := 0; i < b; i++ {
		fmt.Scan(&bs[i])
		bmin = min(bmin, bs[i])
	}

	ans := amin + bmin
	var x, y, c int
	for i := 0; i < m; i++ {
		fmt.Scan(&x, &y, &c)
		x, y = x-1, y-1

		p := as[x] + bs[y] - c

		ans = min(ans, p)
	}

	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
