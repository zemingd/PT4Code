package main

import "fmt"

type BIT []int

func (b BIT) Sum(i int) int {
	if i == 0 {
		return 0
	}
	return b[i] + b.Sum(i-(i&-i))
}

func (b BIT) Add(i, x int) {
	if i >= len(b) {
		return
	}
	b[i] += x
	b.Add(i+(i&-i), x)
}

func main() {
	var N, M, Q int
	fmt.Scan(&N, &M, &Q)

	lower := BIT(make([]int, N+1, N+1))
	upper := BIT(make([]int, N+1, N+1))

	for i := 0; i < M; i++ {
		var l, r int
		fmt.Scan(&l, &r)
		var min, max int
		if r > l {
			min = l
			max = r
		} else {
			min = r
			max = l
		}

		lower.Add(min, 1)
		upper.Add(N-max+1, 1)
	}

	for i := 0; i < Q; i++ {
		var p, q int
		fmt.Scan(&p, &q)
		ret1 := lower.Sum(p - 1)
		ret2 := upper.Sum(N - q)
		fmt.Println(M - ret1 - ret2)
	}
}
