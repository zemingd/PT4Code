package main

import (
	"bufio"
	"fmt"
	"os"
)

var graph [][]int64
var fill []int

const white int = -1 //出力時は0
const black int = 1

func main() {
	r := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()

	var n int
	fmt.Fscan(r, &n)

	graph = make([][]int64, n)
	for i := 0; i < n; i++ {
		graph[i] = make([]int64, n)
	}

	for i := 0; i < n-1; i++ {
		var u, v int
		var weight int64
		fmt.Fscan(r, &u, &v, &weight)
		graph[u-1][v-1] = weight
		graph[v-1][u-1] = weight
	}

	fill = make([]int, n)
	// fill[0] = white

	dfs(0, white)

	for i := 0; i < n; i++ {
		switch fill[i] {
		case white:
			fmt.Fprintln(w, 0)
		case black:
			fmt.Fprintln(w, 1)
		}

	}
}

func useColor(myColor int, weight int64) int {
	if weight%2 == 0 {
		return myColor
	}
	return -myColor
}

func dfs(v int, color int) {
	if fill[v] != 0 {
		return
	}

	// fmt.Println(v, color)
	fill[v] = color
	for i := 0; i < len(fill); i++ {
		if i == v || fill[i] != 0 {
			continue
		}

		weight := graph[v][i]
		if weight == 0 {
			continue
		}

		dfs(i, useColor(color, weight))
	}
}
