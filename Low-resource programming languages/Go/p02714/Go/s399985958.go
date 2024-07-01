package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	r := make([]int, 0, n)
	g := make([]int, 0, n)
	b := make([]int, 0, n)
	for i := 0; i < n; i++ {
		if s[i] == 'R' {
			r = append(r, i+1)

		} else if s[i] == 'G' {
			g = append(g, i+1)

		} else {
			b = append(b, i+1)
		}
	}

	ans := 0
	ans += f(r, g, b)
	ans += f(r, b, g)
	ans += f(g, r, b)
	ans += f(g, b, r)
	ans += f(b, r, g)
	ans += f(b, g, r)
	fmt.Println(ans)
}

func f(r, g, b []int) int {
	ret := 0
	for i := 0; i < len(r); i++ {
		for j := 0; j < len(g); j++ {
			if r[i] >= g[j] {
				continue
			}
			ret += len(b) - sort.Search(len(b), func(k int) bool { return b[k] > g[j] })
			same := sort.Search(len(b), func(k int) bool { return b[k] >= g[j]+g[j]-r[i] })
			if same < len(b) && b[same] == g[j]+g[j]-r[i] {
				ret -= 1
			}
		}
	}
	return ret
}
