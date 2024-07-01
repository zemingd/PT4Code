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

func sameUnion(g [][]int, a int) map[int]struct{} {
	set := make(map[int]struct{}, len(g))
	st := make([]int, 0, len(g))
	st = append(st, a)
	for len(st) > 0 {
		current := st[0]
		st = st[1:]
		set[current] = struct{}{}
		for _, next := range g[current] {
			_, exist := set[next]
			if !exist {
				st = append([]int{next}, st...)
			}
		}
	}
	return set
}

// main
func main() {
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	g := make([][]int, n)
	bg := make([][]int, n)
	for i := 0; i < n; i++ {
		g[i] = make([]int, 0, n)
		bg[i] = make([]int, 0, n)
	}
	m := nextInt()
	k := nextInt()
	for i := 0; i < m; i++ {
		ai := nextInt()
		bi := nextInt()
		g[ai-1] = append(g[ai-1], bi-1)
		g[bi-1] = append(g[bi-1], ai-1)
	}
	for i := 0; i < k; i++ {
		ci := nextInt()
		di := nextInt()
		bg[ci-1] = append(bg[ci-1], di-1)
		bg[di-1] = append(bg[di-1], ci-1)
	}
	// fmt.Println(g)
	// fmt.Println(bg)
	unions := make([]map[int]struct{}, n)
	unionIds := make([]int, n)
	for i := 0; i < n; i++ {
		unionIds[i] = 1001001001
	}
	unionCount := 0
	for i := 0; i < n; i++ {
		if unionIds[i] == 1001001001 {
			u := sameUnion(g, i)
			unions[unionCount] = u
			for x := range u {
				unionIds[x] = unionCount
			}
			unionCount++
		}
	}
	ans := make([]string, n)
	for i := 0; i < n; i++ {
		u := unions[unionIds[i]]
		// fmt.Println(u)
		var fcount int
		for _, x := range g[i] {
			_, exist := u[x]
			if exist {
				fcount++
			}
		}
		var bcount int
		for _, x := range bg[i] {
			_, exist := u[x]
			if exist {
				bcount++
			}
		}
		ans[i] = strconv.Itoa(len(u) - fcount - bcount - 1)
	}
	fmt.Println(strings.Join(ans, " "))
}
