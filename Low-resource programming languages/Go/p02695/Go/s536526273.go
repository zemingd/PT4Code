package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	n, m int
	ns   [][]int
)

func dfs(xs []int) {
	if len(xs) == n {
		ns = append(ns, xs)
		return
	}

	for i := xs[len(xs)-1]; i <= m; i++ {
		dfs(append(xs, i))
	}
}

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	iv, _ := strconv.Atoi(sc.Text())
	return iv
}

func init() {
	sc.Split(bufio.ScanWords)
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func main() {
	n, m = scanInt(), scanInt()
	q := scanInt()
	a := make([]int, q)
	b := make([]int, q)
	c := make([]int, q)
	d := make([]int, q)
	for i := 0; i < q; i++ {
		a[i], b[i], c[i], d[i] = scanInt(), scanInt(), scanInt(), scanInt()
	}

	ns = make([][]int, 0, 100000)
	for i := 1; i <= m; i++ {
		dfs([]int{i})
	}

	ans := 0
	for _, v := range ns {
		sum := 0
		for i := 0; i < q; i++ {
			if v[b[i]-1]-v[a[i]-1] == c[i] {
				sum += d[i]
			}
		}
		ans = max(ans, sum)
	}
	fmt.Println(ans)
}
