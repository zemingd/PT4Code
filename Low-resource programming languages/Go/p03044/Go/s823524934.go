package main

import (
	"fmt"
	"sort"
)

type ab struct {
	x int
	y int
	z int
}

func main() {
	var n int
	fmt.Scan(&n)
	ar := make(abs, n-1)
	for i := 0; i < n-1; i++ {
		var u, v, w int
		fmt.Scan(&u, &v, &w)
		var a ab
		if u < v {
			a.x = u
			a.y = v
		} else {
			a.x = v
			a.y = u
		}
		a.z = w
		ar = append(ar, a)
	}
	sort.Sort(ar)
	br := make([]int, n+1)
	br[1] = 1
	for _, v := range ar {
		va := br[v.x]
		if v.z%2 != 0 {
			if va == 1 {
				va = 2
			} else {
				va = 1
			}
		}
		br[v.y] = va
	}
	for i := 1; i <= n; i++ {
		fmt.Println(br[i])
	}
}

type abs []ab

func (d abs) Len() int {
	return len(d)
}

func (d abs) Swap(i, j int) {
	d[i], d[j] = d[j], d[i]
}

func (d abs) Less(i, j int) bool {
	return d[i].x < d[j].x
}
