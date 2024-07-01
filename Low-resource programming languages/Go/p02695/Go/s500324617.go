package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var w = bufio.NewWriter(os.Stdout)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func tmp(t []int, N int, M int) [][]int {
	if len(t) == N {
		o := [][]int{}
		return append(o, t)
	}
	o := [][]int{}
	for j := t[len(t)-1]; j <= M; j++ {
		x := tmp(append(t, j), N, M)
		o = append(o, x...)
	}
	return o
}

func main() {
	defer w.Flush()

	sc.Split(bufio.ScanWords)
	N := nextInt()
	M := nextInt()
	Q := nextInt()

	o := [][]int{}
	p := [][]int{}

	for i := 1; i <= M; i++ {
		t := make([]int, 1)
		t[0] = i
		o = append(o, tmp(t, N, M)...)
	}

	u := make([]int, 4)
	for i := 0; i < Q; i++ {
		q := make([]int, 4)
		for j := range q {
			q[j] = nextInt()
		}
		u = make([]int, 4)
		copy(u, q)
		p = append(p, u)
	}

	max := 0
	total := 0

	for oi := range o {
		total = 0
		for pi := range p {
			if (o[oi][p[pi][1]-1] - o[oi][p[pi][0]-1]) == p[pi][2] {
				total = total + p[pi][3]
			}
		}
		if total > max {
			max = total
		}
	}
	fmt.Fprintln(w, max)
}
