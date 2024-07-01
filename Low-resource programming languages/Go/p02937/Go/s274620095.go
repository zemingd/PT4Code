package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	long := len(s)

	m := make([][]int, 26)
	for i, S := range s {
		x := S - rune("a"[0])
		// fmt.Println(x, i)
		m[x] = append(m[x], i+1)
	}
	// fmt.Println(m)
	var ans, before int
	for _, T := range t {
		val := m[T-rune("a"[0])]
		l := len(val)
		if l == 0 {
			fmt.Println(-1)
			return
		}
		for j := 0; j < l; j++ {
			if val[j] > before {
				ans += val[j] - before
				before = val[j]
				break
			} else if j == l-1 {
				ans += long + val[0] - before
				before = val[0]
			}
		}
	}
	fmt.Println(ans)
}
