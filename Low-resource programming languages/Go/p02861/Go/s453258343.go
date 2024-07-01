package main

import (
	"fmt"
	"math"
	"os"
)

type point struct {
	x int64
	y int64
}

func calc(i, j point) float64 {
	x := i.x - j.x
	y := i.y - j.y
	return math.Sqrt(float64(x*x + y*y))
}

func remove(a []point, i int) []point {
	o := make([]point, 0)
	for j := 0; j < len(a); j++ {
		if j == i {
			continue
		}
		o = append(o, a[j])
	}
	return o
}

func permutation(a []point, x []point, xx [][]point) [][]point {
	if len(a) == 0 {
		x2 := make([]point, len(x))
		copy(x2, x)
		return append(xx, x2)
	}

	for i, c := range a {
		xx = permutation(remove(a, i), append(x, c), xx)
	}
	return xx
}

func run2(a []point, n int) int {
	p := permutation(a, make([]point, 0, n), make([][]point, 0))
	f := len(p)
	var total float64
	for _, x := range p {
		var sum float64
		for i := 1; i < len(x); i++ {
			c := calc(x[i-1], x[i])
			sum += c
		}
		total += sum / float64(f)
	}
	fmt.Println(total)
	return 0
}

func run() int {
	var n int
	var a []point
	fmt.Scanln(&n)
	for i := 0; i < n; i++ {
		var p point
		fmt.Scanf("%d %d\n", &p.x, &p.y)
		a = append(a, p)
	}
	return run2(a, n)
}

func main() {
	os.Exit(run())
}
