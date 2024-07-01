package main

import (
	"fmt"
	"math"
)

var n int
var xs, ys []int
var went []bool
var total float64
var count int

func main() {
	fmt.Scan(&n)
	xs = make([]int, n)
	ys = make([]int, n)
	went = make([]bool, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&xs[i], &ys[i])
	}
	for i := 0; i < n; i++ {
		went[i] = true
		dfs([]int{i})
		went[i] = false
	}
	fmt.Println(total / float64(count))
}

func dfs(vs []int) {
	if len(vs) == n {
		calc(vs)
		return
	}
	for i := 0; i < n; i++ {
		if went[i] {
			continue
		}
		went[i] = true
		dfs(append(vs, i))
		went[i] = false
	}
}

func calc(vs []int) {
	sum := 0.0
	for i := 0; i < n-1; i++ {
		src, target := vs[i], vs[i+1]
		dx := xs[target] - xs[src]
		dy := ys[target] - ys[src]
		sum += math.Sqrt(float64(dx*dx + dy*dy))
	}
	count++
	total += sum
}
