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
	
	bits := make([]bit,n)
	for i := 0; i < n; i++ {
		bits[i] = make(bit, n+1)
	}

	for i := 0; i < m; i++ {
		l := scanInt()-1
		r := scanInt()-1
		for j := 0; j < l+1; j++ {
			bits[j].add(r,1)
		}
	}

	for i := 0; i < q; i++ {
		p := scanInt()-1
		q := scanInt()-1

		fmt.Fprintln(wr, bits[p].sum(q))
	}
	wr.Flush()
}

type bit []int

func (t bit) sum(i int) int {
	s := 0
	for i++; i > 0; i -= i & -i { s += t[i] }
	return s
}

func (t bit) add(i, x int) {
	for i++; i < len(t); i += i & -i { t[i] += x }
}

