package main

import (
	"sort"
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc, wr = bufio.NewScanner(os.Stdin), bufio.NewWriter(os.Stdout)

func scanString() string { sc.Scan(); return sc.Text() }
func scanInt() int { a,_ := strconv.Atoi(scanString()); return a }
func scanInt64() int64 { a,_ := strconv.ParseInt(scanString(),10,64); return a }
func scanFloat64() float64 { a,_ := strconv.ParseFloat(scanString(),64); return a }

func scanInts(n int) []int {
	res := make([]int, n); for i := 0; i < n; i++ { res[i] = scanInt() }; return res
}

func abs(a int) int { if a<0 { return -a }; return a }
func min(a,b int) int { if a<b { return a }; return b }
func max(a,b int) int { if a>b { return a }; return b }

//•*¨*•.¸¸♪Main•*¨*•.¸¸♪(　-ω-)ノ　(　・ω・)

func main() {
	defer wr.Flush()
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 1001001)

	n := scanInt()
	r := make(robots, n)

	for i := 0; i < n; i++ {
		x := scanInt()
		l := scanInt()-1
		r[i] = robot{x-l,x+l}
	}

	sort.Sort(r)

	cnt := 0
	anc := int(-1e9)
	for i := 0; i < n; i++ {
		if anc < r[i].a {
			anc = r[i].b
		} else {
			cnt++
		}
	}

	fmt.Fprintln(wr, n-cnt)
	// fmt.Fprintln(wr, r)

}

type robot struct {
	a,b int
}

type robots []robot

func (a robots) Len() int           { return len(a) }
func (a robots) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a robots) Less(i, j int) bool { 
	if a[i].b==a[j].b {
		return a[i].a<a[j].a
	}
	return a[i].b < a[j].b
}
