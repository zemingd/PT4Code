package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdInScanner = bufio.NewScanner(os.Stdin)

func nextInt() int {
	stdInScanner.Scan()
	i, _ := strconv.Atoi(stdInScanner.Text())
	return i
}

func many(A []int, m int, a []int, b []int, c []int, d []int, deps int) int {
	if deps >= len(A)-1 {
		return score(A, a, b, c, d)
	}
	nextDeps := deps + 1

	first := 1
	if deps >= 0 {
		first = a[deps]
	}
	max := 0
	for i := first; i <= m; i++ {
		nextA := A
		nextA[nextDeps] = i
		score := many(nextA, m, a, b, c, d, nextDeps)
		if max < score {
			max = score
		}
	}
	return max
}

func score(A []int, a []int, b []int, c []int, d []int) int {
	score := 0
	for i := 0; i < len(a); i++ {
		if A[b[i]-1]-A[a[i]-1] == c[i] {
			score += d[i]
		}
	}
	return score
}

func main() {
	stdInScanner.Split(bufio.ScanWords)

	N := nextInt()
	M := nextInt()
	Q := nextInt()

	a := make([]int, Q)
	b := make([]int, Q)
	c := make([]int, Q)
	d := make([]int, Q)

	for i := 0; i < Q; i++ {
		a[i] = nextInt()
		b[i] = nextInt()
		c[i] = nextInt()
		d[i] = nextInt()
	}

	fmt.Println(many(make([]int, N), M, a, b, c, d, -1))
}
