package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
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

func nextInt64s(n int) []int64 {
	ret := make([]int64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt64()
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

type Combi struct {
	N int64
}

type Combis []Combi

func (f Combis) Len() int {
	return len(f)
}

func (f Combis) Less(i, j int) bool {
	return f[i].N < f[j].N
}

func (f Combis) Swap(i, j int) {
	f[i], f[j] = f[j], f[i]
}

func combi(a []Combi) []Combi {
	ans := make([]Combi, len(a)-1)
	for i := 0; i < len(a)-1; i++ {
		ans[i].N = a[0].N * a[i+1].N
	}
	if len(a) == 2 {
		return ans
	} else {
		return append(ans, combi(a[1:])...)
	}
}

// main
func main() {
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	c := make([]Combi, n)
	for i := 0; i < n; i++ {
		c[i].N = nextInt64()
	}
	ans := combi(c)
	sort.Sort(Combis(ans))
	fmt.Println(ans[k-1].N)
}
