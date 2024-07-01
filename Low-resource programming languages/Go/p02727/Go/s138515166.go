package main

import (
	"fmt"
	"sort"
)

func main() {
	var x, y, a, b, c, ans int
	fmt.Scan(&x)
	fmt.Scan(&y)
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	p := make([]int, a)
	q := make([]int, b)
	r := make([]int, c)
	for i := 0; i < a; i++ {
		fmt.Scan(&p[i])
	}
	for i := 0; i < b; i++ {
		fmt.Scan(&q[i])
	}
	for i := 0; i < c; i++ {
		fmt.Scan(&r[i])
	}

	sort.Ints(p)
	sort.Ints(q)
	sort.Ints(r)

	for i := 0; i < x; i++ {
		if p[len(p)-1] > r[len(r)-1] {
			ans += p[len(p)-1]
			p = p[:len(p)-1]
		} else {
			ans += r[len(r)-1]
			r = r[:len(r)-1]
		}
	}
	for i := 0; i < y; i++ {
		if q[len(q)-1] > r[len(r)-1] {
			ans += q[len(q)-1]
			q = q[:len(q)-1]
		} else {
			ans += r[len(r)-1]
			r = r[:len(r)-1]
		}
	}
	fmt.Println(ans)
}
