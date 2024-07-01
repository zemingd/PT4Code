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
	m[0] = 0
	ts := make([]int, 0)
	ts = append(ts, 0)

	for count < K {
		last := ts[len(ts)-1]
		next := as[last]
		if p, ok := m[next]; ok {
			cycle := count - p + 1
			offset := (K - p) % cycle
			fmt.Println(ts[p+offset] + 1)
			return
		}
		count++
		m[next] = count
		ts = append(ts, next)
	}
	fmt.Println(ts[len(ts)-1] + 1)
}
