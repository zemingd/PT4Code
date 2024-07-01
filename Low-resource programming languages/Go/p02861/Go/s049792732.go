package main

import (
	"fmt"
	"math"
)

var used []bool
var perm []int
var tot float64
var pat int

type point struct {
	x, y float64
}

var points []point

func dist(a, b point) float64 {
	d := math.Sqrt((b.x-a.x)*(b.x-a.x) + (b.y-a.y)*(b.y-a.y))
	return d
}

func permutation1(pos, n int) {
	if pos == n {
		var d float64
		for i := 0; i+1 < len(perm); i++ {
			d += dist(points[perm[i+1]], points[perm[i]])
		}
		tot += d
		pat++
		return
	}
	for i := 0; i < n; i++ {
		if !used[i] {
			perm[pos] = i
			used[i] = true
			permutation1(pos+1, n)
			used[i] = false
		}
	}
	return
}

func main() {
	var n int
	fmt.Scan(&n)
	used = make([]bool, n)
	perm = make([]int, n)
	points = make([]point, n)
	for i := range points {
		fmt.Scan(&points[i].x, &points[i].y)
	}
	permutation1(0, n)
	fmt.Println(tot / float64(pat))
}
