package main

import (
	"fmt"
	"os"
	"sort"
)

type arr []int

func (a arr) Len() int {
	return len(a)
}

func (a arr) Swap(i, k int) {
	a[i], a[k] = a[k], a[i]
}

func (a arr) Less(i, k int) bool {
	return a[i] < a[k]
}

func main() {
	x, p := input()
	sort.Sort(p)

	m := 0
	if len(p) <= 0 {
		fmt.Println(x)
		os.Exit(0)
	}
	if x < p[0] {
		fmt.Println(x)
		os.Exit(0)
	}
	if p[len(p)-1] < x {
		fmt.Println(x)
		os.Exit(0)
	}
	for i, v := range p {
		if x <= v {
			m = i
			break
		}
	}
	if p[m] != x {
		fmt.Println(x)
		os.Exit(0)
	}
	for i := 0; i < len(p); i++ {
		if m-i < 0 {
			fmt.Println(x - i)
			os.Exit(0)
		}
		if p[m-i] != x-i {
			fmt.Println(x - i)
			os.Exit(0)
		}
		if m+i >= len(p) {
			fmt.Println(x + i)
			os.Exit(0)
		}
		if p[m+i] != x+i {
			fmt.Println(x + i)
			os.Exit(0)
		}
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
