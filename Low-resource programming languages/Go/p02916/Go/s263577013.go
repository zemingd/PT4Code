package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	var as, bs, cs []int
	var a, b, c int
	for i := 0; i < n; i++ {
		fmt.Scanf("%d %d", &a, &b)
		as = append(as, a)
		as = append(bs, b)
		if i <= n-2 {
			fmt.Scan(&c)
			cs = append(cs, c)
		}
	}

	cnt := 0
	for i, a := range as {
		cnt = cnt + bs[a-1]

		if i == 0 {
			continue
		}

		if a-1 == as[i-1] {
			cnt = cnt + cs[i]
		}
	}

	fmt.Print(cnt)
}
