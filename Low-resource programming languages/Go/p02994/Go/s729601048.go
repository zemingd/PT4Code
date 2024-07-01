package main

import "fmt"

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

type min struct {
	mi  int
	abs int
}

func main() {
	var N, L int
	fmt.Scan(&N, &L)

	p := min{301, 301}

	all := 0
	for i := 0; i < N; i++ {
		mi := L + i
		all += mi
		if abs(mi) < p.abs {
			p.mi = mi
			p.abs = abs(mi)
		}
	}
	if p.abs < 301 {
		all -= p.mi
	}
	fmt.Println(all)
}
