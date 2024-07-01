package main

import (
	"fmt"
	"os"
	"sort"
)

var x int

type arr []int

func (a arr) Len() int {
	return len(a)
}

func (a arr) Swap(i, k int) {
	a[i], a[k] = a[k], a[i]
}

func (a arr) Less(i, k int) bool {
	d1 := a[i] - x
	d2 := a[k] - x
	if d1 < 0 {
		d1 *= -1
	}
	if d2 < 0 {
		d2 *= -1
	}
	if d1 == d2 {
		return a[i] < a[k]
	}
	if d1 < d2 {
		return true
	}
	return false
}

func main() {
	c, p := input()
	x = c
	sort.Sort(p)
	if len(p) <= 0 {
		fmt.Println(x)
		os.Exit(0)
	}
	if p[0] != x {
		fmt.Println(x)
		os.Exit(0)
	}
	d := 1
	for i := 1; i < len(p); i++ {
		if p[i] != x-d {
			fmt.Println(x - d)
			os.Exit(0)
		}
		i++
		if p[i] != x+d {
			fmt.Println(x + d)
			os.Exit(0)
		}
		d++
	}
	if len(p)%2 == 0 {
		fmt.Println(x - len(p) - 1)
	} else {
		fmt.Println(x + len(p))
	}
}

func input() (int, arr) {
	var x, n int
	fmt.Scan(&x, &n)
	p := make([]int, n, n)
	for i := range p {
		fmt.Scan(&p[i])
	}
	return x, p
}
