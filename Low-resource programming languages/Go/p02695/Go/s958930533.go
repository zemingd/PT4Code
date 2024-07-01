package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!caution!!!! you must use Fprint(out, ) not Print()
	/* --- code --- */
	n, m, q := nextInt(), nextInt(), nextInt()
	var a, b, c, d []int

	point := func(wl []int) int {
		p := 0
		for i := 0; i < q; i++ {
			if wl[b[i]-1]-wl[a[i]-1] == c[i] {
				p += d[i]
			}
		}
		//fmt.Fprintln(out, "[DEBUG]", wl, p)
		return p
	}
	for i := 0; i < q; i++ {
		a = append(a, nextInt())
		b = append(b, nextInt())
		c = append(c, nextInt())
		d = append(d, nextInt())
	}

	ans := search(0, make([]int, n), n, m, point)

	fmt.Fprintln(out, ans)
}
func search(i int, wl []int, n, m int, point func([]int) int) int {
	if i == n {
		return point(wl)
	}
	var start int
	if i == 0 {
		start = 1
	} else {
		start = wl[i-1]
	}
	wmax := 0
	for j := start; j <= m; j++ {
		wl[i] = j
		wans := search(i+1, wl, n, m, point)
		if wmax < wans {
			wmax = wans
		}
	}
	return wmax
}

// -*-*-*-*-*-*-*-*-
// * I/O utilities *
// -*-*-*-*-*-*-*-*-

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
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

func chars(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}
