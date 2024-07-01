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
func scanRunes() []rune { return []rune(scanString()) }
func scanInt() int { a,_ := strconv.Atoi(scanString()); return a }
func scanInt64() int64 { a,_ := strconv.ParseInt(scanString(),10,64); return a }
func scanFloat64() float64 { a,_ := strconv.ParseFloat(scanString(),64); return a }

func scanInts(n int) []int {
	res := make([]int, n); for i := 0; i < n; i++ { res[i] = scanInt() }; return res
}

func debug(a ...interface{}) { fmt.Fprintln(os.Stderr, a...) }

func abs(a int) int { if a<0 { return -a }; return a }
func min(a,b int) int { if a<b { return a }; return b }
func max(a,b int) int { if a>b { return a }; return b }

//•*¨*•.¸¸♪Main•*¨*•.¸¸♪(　-ω-)ノ　(　・ω・)

func main() {
	defer wr.Flush()
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 1001001)

	n := scanInt()
	h := scanInt()

	a := make([]int, n)
	b := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
		b[i] = scanInt()
	}

	sort.Ints(b)

	sum := make([]int, n+1)
	sum[0] = 0
	for i := 0; i < n; i++ {
		sum[i+1] = sum[i]+b[i]
	}

	ans := 1<<31-1
	
	for i := 0; i < n; i++ {
		idx := sort.Search(n, func(idx int) bool { return a[i]<=b[idx] }) 
		s := sum[n]-sum[idx]
		ans = min(ans, (h-s+a[i]-1)/a[i]+n-idx)
	}

	fmt.Fprintln(wr, ans)

}
