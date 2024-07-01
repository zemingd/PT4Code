package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// input scanner
var sc = bufio.NewScanner(os.Stdin)

const (
	initialBufSize = 10e4
	maxBufSize     = 10e6
)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextInt64() int64 {
	a, _ := strconv.ParseInt(next(), 10, 64)
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextFloat64()
	}
	return ret
}
func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

// util
func max(l []int) (int, int) {
	idx := 0
	ans := l[idx]
	for i, n := range l {
		if n > ans {
			idx = i
			ans = n
		}
	}
	return idx, ans
}

func min(l []int) (int, int) {
	idx := 0
	ans := l[idx]
	for i, n := range l {
		if n < ans {
			idx = i
			ans = n
		}
	}
	return idx, ans
}

// main
func main() {
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	x := nextInt()
	y := nextInt()
	g := make(map[int][]int, n)
	for i := 0; i < n; i++ {
		g[i] = []int{}
		if i != 0 {
			g[i] = append(g[i], i-1)
		}
		if i != n-1 {
			g[i] = append(g[i], i+1)
		}
		if i == x-1 {
			g[i] = append(g[i], y-1)
		}
		if i == y-1 {
			g[i] = append(g[i], x-1)
		}
	}
	anss := make([]string, n-1)
	for k := 1; k < n; k++ {
		var ans int
		for i := 0; i < n; i++ {
			q := make([]int, 0)
			q = append(q, i)
			c := make(map[int]int, n)
			c[q[0]] = 0
			for len(q) > 0 {
				current := c[q[0]]
				for _, next := range g[q[0]] {
					_, exist := c[next]
					if !exist {
						c[next] = current + 1
						if c[next] == k {
							ans++
						} else {
							q = append(q, next)
						}
					}
				}
				q = q[1:]
			}
		}
		anss[k-1] = strconv.Itoa((ans / 2))
	}
	fmt.Println(strings.Join(anss, "\n"))
}
