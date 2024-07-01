package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	as := make([][][]int, n)
	for i := range as {
		var a int
		fmt.Scan(&a)
		as[i] = make([][]int, 0)
		for j := 0; j < a; j++ {
			var x, y int
			fmt.Scan(&x, &y)
			x--
			as[i] = append(as[i], []int{x, y})
		}
	}

	var ans int
	for i := 0; i < 1<<uint(n); i++ {
		var ng bool
		var cnt int
		for j := 0; j < n; j++ {
			if i&(1<<uint(j)) > 0 {
				for k := range as[j] {
					if i&(1<<uint(as[j][k][0])) > 0 {
						if as[j][k][1] == 0 {
							ng = true
						}
					} else {
						if as[j][k][1] == 1 {
							ng = true
						}
					}
				}
				cnt++
			}
		}
		if !ng && cnt > ans {
			ans = cnt
		}
	}

	fmt.Println(ans)
}
