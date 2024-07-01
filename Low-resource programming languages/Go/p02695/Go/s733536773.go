package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

const (
	initialBufSize = 10000
	maxBufSize     = 10000000
)

var (
	sc = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		sc.Split(bufio.ScanWords)
		return sc
	}()
)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

type item struct {
	A, B, C, D int
}

func max(x, y int) int {
	if x >= y {
		return x
	}
	return y
}

func dfs(n, m int, items []item, index int, a map[int]int, maxv *int) int {
	if index > len(items)-1 {
		return 0
	}

	it := items[index]
	var val, val2 int
	for i := 0; i < len(items); i++ {
		if _, ok := a[it.B]; (!ok && len(a) < n && a[it.A]+it.C <= m) ||
			a[it.B] == a[it.A]+it.C {
			a[it.B] = a[it.A] + it.C
			val = dfs(n, m, items, index+1, a, maxv) + it.D
			delete(a, it.B)
			if val > *maxv {
				*maxv = val
			}
		}
		if val2 := dfs(n, m, items, index+1, a, maxv); val2 > val && val > *maxv {
			*maxv = val2
		}
	}
	return max(val, val2)
}

func solve(n, m int, items []item) int {
	a := make(map[int]int)
	a[1] = 1
	maxv := math.MinInt64 / 2
	return dfs(n, m, items, 0, a, &maxv)
}

func main() {
	n, m, q := nextInt(), nextInt(), nextInt()
	items := make([]item, q)
	for i := 0; i < q; i++ {
		items[i] = item{nextInt(), nextInt(), nextInt(), nextInt()}
	}
	ans := solve(n, m, items)
	fmt.Println(ans)
}
