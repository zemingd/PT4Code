// ProblemURL : https://atcoder.jp/contests/abc139/tasks/abc139_d
// ---------------------------------------------
package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
func larger(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func smaller(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func largest(a, b, c int) (lgst int) {
	if a > b {
		lgst = a
	} else {
		lgst = b
	}
	if c > lgst {
		lgst = c
	}
	return
}
func smallerst(a, b, c int) (slst int) {
	if a < b {
		slst = a
	} else {
		slst = b
	}
	if c < slst {
		slst = c
	}
	return
}
func max(a []int) (idx, val int) {
	if len(a) == 0 {
		panic("func max requires at least one argument")
	}
	val = a[0]
	for i, aa := range a {
		if aa > val {
			idx, val = i, aa
		}
	}
	return
}
func min(a []int) (idx, val int) {
	if len(a) == 0 {
		panic("func min requires at least one argument")
	}
	val = a[0]
	for i, aa := range a {
		if aa < val {
			idx, val = i, aa
		}
	}
	return
}
func sum(a []int) int {
	res := 0
	for _, v := range a {
		res += v
	}
	return res
}
func isEven(n int) bool            { return n&1 == 0 }
func isOdd(n int) bool             { return n&1 == 1 }
func swap(a int, b int) (int, int) { return b, a }
func fill(a []int, val int) {
	for i := 0; i < len(a); i++ {
		a[i] = val
	}
	return
}
func calcMod(n int) int   { return n % mod }
func sigma(x int) int     { return x * (x + 1) / 2 }
func powInt(a, b int) int { return int(math.Pow(float64(a), float64(b))) }

var (
	sc = bufio.NewScanner(os.Stdin)
	bw = bufio.NewWriter(os.Stdout)
)

func init() {}
func ru() (n int) {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}
func ri() (n int) {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}
	b := sc.Bytes()
	neg := false
	if b[0] == 45 {
		neg = true
	}
	for _, v := range b {
		n = n*10 + int(v-48)
	}
	if neg {
		n = -n
	}
	return
}
func rs() string {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}
	return sc.Text()
}
func rb() []byte {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}
	return sc.Bytes()
}
func pf(format string, a ...interface{}) {
	if _, err := fmt.Fprintf(bw, format, a...); err != nil {
		panic(err)
	}
}
func pln(a ...interface{}) {
	if _, err := fmt.Fprintln(bw, a...); err != nil {
		panic(err)
	}
}
func pall(a []int) {
	for _, v := range a {
		fmt.Fprintln(bw, v)
	}
}
func pallol(a []int) {
	s := fmt.Sprint(a)
	if _, err := fmt.Fprintln(bw, s[1:len(s)-1]); err != nil {
		panic(err)
	}
}
func debug(a ...interface{}) {
	s := fmt.Sprint(a)
	if _, err := fmt.Fprintln(os.Stderr, s[1:len(s)-1]); err != nil {
		panic(err)
	}
}
func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1e7), 1e7)
	solve()
	bw.Flush()
}

const (
	// maxInt64  = 9223372036854775807  // 9e18
	// maxInt32  = 2147483647           // 2e9
	// maxUint64 = 18446744073709551615 // 1e19
	inf = 1 << 60
	mod = 1e9 + 7
)

type pair struct{ a, b int }
type point struct{ x, y int }

func solve() {
	n := ri()
	pln(sigma(n - 1))
}
