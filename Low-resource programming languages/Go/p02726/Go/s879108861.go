package main

import (
	"fmt"
)

var n, x, y int
var ps [][]int
var cs []int

func main() {
	fmt.Scan(&n, &x, &y)
	x--
	y--
	ps = make([][]int, n)
	for i := 0; i < n-1; i++ {
		ps[i] = append(ps[i], i+1)
		ps[i+1] = append(ps[i+1], i)
	}
	ps[x] = append(ps[x], y)
	ps[y] = append(ps[y], x)

	cs = make([]int, n-1)

	for i := 0; i < n; i++ {
		nqs := make([]int, 0)
		nqs = append(nqs, i)
		cnt := 0
		cj := make([]bool, n)
		for len(nqs) > 0 {
			qs := make([]int, len(nqs))
			for l := range nqs {
				qs[l] = nqs[l]
			}
			nqs = make([]int, 0)
			for len(qs) > 0 {
				q := qs[0]
				qs = qs[1:]
				for _, j := range ps[q] {
					if cj[j] || i == j {
						continue
					}
					cj[j] = true
					cs[cnt]++
					//fmt.Println("i,j,cnt: ", i+1, j+1, cnt+1)
					nqs = append(nqs, j)
				}
			}
			cnt++
		}
	}
	for i := range cs {
		fmt.Println(cs[i] / 2)
	}
}
