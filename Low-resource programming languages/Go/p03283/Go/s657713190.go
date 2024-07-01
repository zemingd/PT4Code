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
	sc.Buffer(make([]byte, 10000), 1001001)

	n := scanInt()
	m := scanInt()
	q := scanInt()
	
	a := make([][]int, n)
	for i := 0; i < n; i++ {
		a[i] = make([]int, n)
	}

	for i := 0; i < m; i++ {
		l := scanInt()-1
		r := scanInt()-1
		a[r][l]++
	}

	sum := make([][]int, n+1)
	for i := 0; i < n+1; i++ {
		sum[i] = make([]int, n+1)
	}

	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			sum[i+1][j+1] = sum[i+1][j] + a[i][j]
		}
		for j := 0; j < n; j++ {
			sum[i+1][j+1] += sum[i][j+1]
		}
		// fmt.Fprintln(os.Stderr, sum[i+1])
	}

	for i := 0; i < q; i++ {
		p := scanInt()
		q := scanInt()

		fmt.Fprintln(wr, sum[q][q]-sum[q][p-1]-sum[p-1][q]+sum[p-1][p-1])
	}

	wr.Flush()
}


