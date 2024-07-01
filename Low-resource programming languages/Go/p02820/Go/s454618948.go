package main

import (
	"fmt"
)

func main() {
	var n, k, r, s, p int
	var t string
	fmt.Scan(&n)
	fmt.Scan(&k)
	fmt.Scan(&r)
	fmt.Scan(&s)
	fmt.Scan(&p)
	fmt.Scan(&t)

	score := map[byte]int{'r': p, 's': r, 'p': s}
	ans := 0

	for start := 0; start < k; start++ {
		i := start
		for i < n {
			l := 1
			for i+k < n && t[i+k] == t[i] {
				i += k
				l++
			}

			ans += (l+1)/2 * score[t[i]]
			i += k
		}
	}

	fmt.Println(ans)
}