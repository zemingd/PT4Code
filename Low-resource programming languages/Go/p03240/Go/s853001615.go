package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func main() {
	log.SetFlags(log.Lshortfile)
	N := nextInt()
	x := make([]int, N)
	y := make([]int, N)
	h := make([]int, N)
	idx := 0
	for i := 0; i < N; i++ {
		x[i] = nextInt()
		y[i] = nextInt()
		h[i] = nextInt()
		if h[i] != 0 {
			idx = i
		}
	}
	for cx := 0; cx <= 100; cx++ {
		for cy := 0; cy <= 100; cy++ {
			check := true
			hypothesis := abs(x[idx]-cx) + abs(y[idx]-cy) + h[idx]
			for i := 1; i < N; i++ {
				if h[i] == 0 {
					continue
				}
				h := abs(x[i]-cx) + abs(y[i]-cy) + h[i]
				if hypothesis != h {
					check = false
					break
				}
			}
			if check {
				trueHigh := abs(cx-x[idx]) + abs(cy-y[idx]) + h[idx]
				for i := 0; i < N; i++ {
					if h[i] == 0 {
						continue
					}
					if h[i] != max(trueHigh-abs(x[i]-cx)-abs(y[i]-cy), 0) {
						// log.Println(cx, cy, "gotoNEXT")
						goto NEXT
					}
				}
				fmt.Println(cx, cy, trueHigh)
				return
			}
		NEXT:
		}
	}
	z := nextInt()
	log.Println(z)
}
func max(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r < a[i] {
			r = a[i]
		}
	}
	return r
}
func min(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r > a[i] {
			r = a[i]
		}
	}
	return r
}
func sum(a []int) (r int) {
	for i := range a {
		r += a[i]
	}
	return r
}
func minmax(a, b int) (int, int) {
	if a > b {
		return b, a
	}
	return a, b
}
func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

type Pair struct {
	a, b int
}

type Pairs []Pair

func (p Pairs) Len() int {
	return len(p)
}
func (p Pairs) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p Pairs) Less(i, j int) bool {
	return p[i].b < p[j].b
}

var nextReader func() string

func init() {
	nextReader = NewScanner()
}

func NewScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() string {
		r.Scan()
		return r.Text()
	}
}
func nextString() string {
	return nextReader()
}
func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
	return v
}
func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}
func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}
func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(nextReader(), 64)
	return f
}
