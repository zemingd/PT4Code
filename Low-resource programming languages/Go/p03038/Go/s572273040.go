package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, m int
	var a, b, c []int

	fmt.Scan(&n, &m)
	var tmp int
	for i := 0; i < n; i++ {
		fmt.Scan(&tmp)
		a = append(a, tmp)
	}
	for i := 0; i < m*2; i++ {
		fmt.Scan(&tmp)
		if i%2 == 0 {
			b = append(b, tmp)
		} else {
			c = append(c, tmp)
		}
	}

	sort.Ints(a)
	for i := 0; i < m; i++ {
		if a[0] > c[i] {
			continue
		}
		for j := 0; j < b[i]; j++ {
			if a[j] > c[i] {
				break
			}
			a[j] = c[i]
		}
		sort.Ints(a)
	}

	sum := 0
	for _, v := range a {
		sum += v
	}
	fmt.Println(sum)
}
