package main

import (
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
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 1000000)

	n := scanInt()
	k := scanInt()

	p := make([]float64, n)
	for i := 0; i < n; i++ {
		p[i] = scanFloat64()
	}
	vals := make([]float64, n)

	for i := 0; i < n; i++ {
		vals[i] = (p[i]+1)/2
	}

	sums := make([]float64, n+1)
	sums[0] = 0

	for i := 0; i < n; i++ {
		sums[i+1] = sums[i]+vals[i]
	}

	ans := float64(0)

	for i := 0; i < n-k+1; i++ {
		if ans < sums[i+k]-sums[i] {
			ans = sums[i+k]-sums[i]
		}
		// fmt.Println(sums[i+k]-sums[i])
	}
	// fmt.Println(sums)

	fmt.Println(ans)
}