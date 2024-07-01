package main

import (
	"fmt"
	"sort"
)

type P struct {
	A int
	B int
}

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	v := []P{}
	for i := 0; i < N; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		v = append(v, P{A: a, B: b})
	}
	sort.Slice(v, func(i, j int) bool {
		return v[i].A < v[j].A
	})

	sumbuy := 0
	money := 0
	for i := 0; i < N; i++ {
		nokori := M - sumbuy
		buy := min(v[i].B, nokori)
		money += v[i].A * buy
		sumbuy += buy
	}
	fmt.Println(money)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
