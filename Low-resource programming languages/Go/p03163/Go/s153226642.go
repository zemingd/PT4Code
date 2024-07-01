package main

import (
	"fmt"
)

type Thing struct {
	w, v int
}

func getMax(a, b int) int {
	if a < b {
		return b
	} else {
		return a
	}
}

func getValue(i, w int) int {
	value1 := values[i-1][w]
	value2 := 0
	preWeight := w - things[i].w
	if preWeight >= 0 {
		value2 = values[i-1][preWeight] + things[i].v
	}
	return getMax(value1, value2)
}

var values [][]int
var N, W int
var things []Thing

func main() {
	fmt.Scan(&N, &W)
	things = make([]Thing, N)
	var w, v int
	for i := 0; i < N; i++ {
		fmt.Scan(&w, &v)
		things[i] = Thing{w: w, v: v}
	}
	values = make([][]int, N)
	for i := 0; i < N; i++ {
		values[i] = make([]int, W+1)
	}

	for w := 0; w < W; w++ {
		if things[0].w <= w {
			values[0][w] = things[0].v
		} else {
			values[0][w] = 0
		}
	}

	for i := 1; i < N; i++ {
		for w := 0; w <= W; w++ {
			values[i][w] = getValue(i, w)
		}
	}
	fmt.Println(values[N-1][W])
}
