package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	min := 1
	max := n
	for i := 0; i < m; i++ {
		var l, r int
		fmt.Scan(&l, &r)
		if min < l {
			min = l
		}
		if r < max {
			max = r
		}
	}
	ans := max - min + 1
	if ans < 0 {
		fmt.Println(0)
		return
	}
	fmt.Println(ans)
}
