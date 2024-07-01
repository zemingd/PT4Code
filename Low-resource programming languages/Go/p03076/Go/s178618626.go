package main

import (
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

	arr := scanInts(5)

	ans := 1 << 31-1
	permutationSearch(5, func(a []int) {
		sum := 0
		for i := 0; i < 4; i++ {
			sum += ((arr[a[i]]+9)/10)*10
		}
		ans = min(ans, sum+arr[a[4]])
	})

	fmt.Fprintln(wr, ans)
}


func permutationSearch(n int, fn func(a []int)) {
	a := make([]int, n)
	for i := 0; i < n; i++ { a[i] = i }
	swap := func(i,j int) { a[i],a[j] = a[j],a[i] }

	fn(a)
	for i := n-2; i >= 0; i-- {
		if a[i] > a[i+1] { continue }
		for j := n-1; j >= 0; j-- {
			if a[i] > a[j] { continue }
			swap(i,j)
			for k := i+1; k < (n+i+1)/2; k++ { swap(k,n-(k-i)) }
			fn(a)
			i = n-1
			break
		}
	}
}
