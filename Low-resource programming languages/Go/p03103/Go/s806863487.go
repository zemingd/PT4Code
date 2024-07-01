package main

import (
	"fmt"
	"sort"
)

type shop struct {
	price int
	cap   int
}

func main() {
	var n, m int

	fmt.Scan(&n, &m)

	var p, c int
	var shops = []shop{}
	for i := 0; i < n; i++ {
		fmt.Scan(&p, &c)

		shops = append(shops, shop{price: p, cap: c})
	}

	sort.Slice(shops, func(i, j int) bool { return shops[i].price < shops[j].price })

	var sum = 0
	for i := 0; i < len(shops); i++ {
		if shops[i].cap < m {
			sum += shops[i].cap * shops[i].price
			m -= shops[i].cap
		} else {
			sum += m * shops[i].price
			m = 0

			break
		}
	}

	fmt.Println(sum)

}
