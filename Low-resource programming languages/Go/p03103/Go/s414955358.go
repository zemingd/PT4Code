package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	var m int64
	fmt.Scan(&n, &m)
	ar := make(drinks, n)
	for i := 0; i < n; i++ {
		var a, b int64
		fmt.Scan(&a, &b)
		ar[i].cost = a
		ar[i].count = b
	}
	sort.Sort(ar)
	var ans int64
	for _, d := range ar {
		if d.count <= m {
			m -= d.count
			ans += d.cost * d.count
		} else {
			ans += d.cost * m
			break
		}
	}
	fmt.Println(ans)
}

type drink struct {
	cost  int64
	count int64
}
type drinks []drink

func (d drinks) Len() int {
	return len(d)
}

func (d drinks) Swap(i, j int) {
	d[i], d[j] = d[j], d[i]
}

func (d drinks) Less(i, j int) bool {
	return d[i].cost < d[j].cost
}
