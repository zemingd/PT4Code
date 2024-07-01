package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	as := make([]int, N)
	for i := range as {
		fmt.Scan(&as[i])
		as[i]--
	}

	var count int
	m := make(map[int]int)
	ts := make([]int, 0)
	m[0] = 0
	ts = append(ts, 0)

	for count < K {
		next := ts[len(ts)-1]
		if p, ok := m[next]; ok {
			cycle := count - p + 1
			offset := (K - p) % cycle
			fmt.Println(ts[p+offset] + 1)
			return
		}
		m[next] = count
		count++
		ts = append(ts, as[next])
	}

}
