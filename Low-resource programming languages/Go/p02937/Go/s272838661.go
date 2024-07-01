package main

import (
	"fmt"
	"sort"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	ss := s + s
	cs := make(map[string][]int)
	for i := 0; i < len(ss); i++ {
		c := string(ss[i])
		cs[c] = append(cs[c], i)
	}

	n := len(s)
	ans := 0
	p := 0
	for i := 0; i < len(t); i++ {
		c := string(t[i])
		a := cs[c]
		if len(a) == 0 {
			fmt.Println(-1)
			return
		}

		x := sort.Search(len(a), func(i int) bool {
			return p <= a[i]
		})
		p = a[x] + 1
		if n <= p {
			p -= n
			ans += n
		}
	}
	ans += p

	fmt.Println(ans)
}
