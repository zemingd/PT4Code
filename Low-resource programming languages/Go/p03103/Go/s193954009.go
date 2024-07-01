package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, m int
	l := make(map[int]int)

	fmt.Scan(&n, &m)
	for i := 0; i < n; i++ {
		var tmpA, tmpB int
		fmt.Scan(&tmpA, &tmpB)
		l[tmpA] = tmpB
	}

	var keys []int
	for k := range l {
		keys = append(keys, k)
	}
	sort.Ints(keys)

	var bought int
	var sum int
	for _, v := range keys {
		for i := 0; i < l[v]; i++ {
			if bought >= m {
				break
			}
			bought++
			sum += v
		}
	}

	fmt.Println(sum)
}
