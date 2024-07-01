package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var par []int

func main() {
	var N, M, K int
	fmt.Scan(&N, &M, &K)

	makeSet(N)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	dame := make([][]int, N)
	for i := 0; i < M; i++ {
		var a, b int
		sc.Scan()
		a, _ = strconv.Atoi(sc.Text())
		sc.Scan()
		b, _ = strconv.Atoi(sc.Text())
		a--
		b--
		dame[a] = append(dame[a], b)
		dame[b] = append(dame[b], a)
		unite(a, b)
	}
	for i := 0; i < K; i++ {
		var c, d int
		sc.Scan()
		c, _ = strconv.Atoi(sc.Text())
		sc.Scan()
		d, _ = strconv.Atoi(sc.Text())
		c--
		d--
		if root(c) != root(d) {
			continue
		}
		dame[c] = append(dame[c], d)
		dame[d] = append(dame[d], c)
	}
	for i := 0; i < N; i++ {
		total := -par[root(i)] - 1
		total -= len(dame[i])
		fmt.Printf("%d ", total)
	}
	fmt.Println()
}

func makeSet(N int) {
	par = make([]int, N)
	for i := range par {
		par[i] = -1
	}

}

func root(x int) int {
	if par[x] < 0 {
		return x
	}
	par[x] = root(par[x])
	return par[x]
}

func unite(x, y int) {
	x = root(x)
	y = root(y)
	if x == y {
		return
	}
	if par[x] > par[y] {
		x, y = y, x
	}
	par[x] += par[y]
	par[y] = x
}
