package main

import "fmt"

func main() {
	var a, b, m int
	fmt.Scan(&a, &b, &m)

	am := int(1e9)
	as := make([]int, a)
	for i := 0; i < a; i++ {
		fmt.Scan(&as[i])
		am = min(am, as[i])
	}

	bm := int(1e9)
	bs := make([]int, b)
	for i := 0; i < b; i++ {
		fmt.Scan(&bs[i])
		bm = min(bm, bs[i])
	}

	ans := am + bm
	var x, y, c int
	for i := 0; i < m; i++ {
		fmt.Scan(&x, &y, &c)
		x--
		y--
		ans = min(ans, as[x]+bs[y]-c)
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
