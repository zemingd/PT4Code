// ProblemURL : https://atcoder.jp/contests/abc103/tasks/abc103_c
// ---------------------------------------------
package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
func diff(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
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
func intsMax(a []int) (idx, val int) {
	if len(a) == 0 {
		panic("func max: argument slice length must not be zero")
	}
	val = a[0]
	for i, aa := range a {
		if aa > val {
			idx, val = i, aa
		}
	}
	return
}
func intsMin(a []int) (idx, val int) {
	if len(a) == 0 {
		panic("func min: argument slice length must not be zero")
	}
	val = a[0]
	for i, aa := range a {
		if aa < val {
			idx, val = i, aa
		}
	}
	return
}
func intsSum(a []int) int {
	res := 0
	for _, v := range a {
		res += v
	}
	return res
}
func intsSigma(x int) int          { return x * (x + 1) / 2 }
func isEven(n int) bool            { return n&1 == 0 }
func isOdd(n int) bool             { return n&1 == 1 }
func swap(a int, b int) (int, int) { return b, a }
func calcMod(n int) int            { return n % mod }
func ceil(x float64) int           { return int(math.Ceil(x)) }
func pow(x, y int) int {
	if y < 0 {
		panic("Exponent must be a natural number")
	}
	z := 1
	for i := y; i != 0; i >>= 1 {
		if i&1 == 1 {
			z *= x
		}
		x *= x
	}
	return z
}
func powMod(x, y int) int {
	if y < 0 {
		panic("Exponent must be a natural number")
	}
	z := 1
	for i := y; i != 0; i >>= 1 {
		if i&1 == 1 {
			z = (z * x) % mod
		}
		x = (x * x) % mod
	}
	return z
}
func intsJoin(a, b []int) []int { return append(a, b...) }
func intsClear(a []int) []int   { return a[:0] }
func intsCopy(a []int) []int    { return append([]int(nil), a...) }
func intsSorted(a []int) []int {
	s := intsCopy(a)
	sort.Ints(s)
	return s
}
func intsReverse(a []int) {
	for i, j := 0, len(a)-1; i < j; i, j = i+1, j-1 {
		a[i], a[j] = a[j], a[i]
	}
	return
}
func intsFill(a []int, val int) {
	for i := 0; i < len(a); i++ {
		a[i] = val
	}
	return
}
func intsPeekBack(a []int) int {
	if len(a) == 0 {
		panic("func peekBack: zero length slice")
	}
	return a[len(a)-1]
}
func intsPeekFront(a []int) int {
	if len(a) == 0 {
		panic("func peekFront: zero length slice")
	}
	return a[0]
}
func intsPopBack(a []int) (int, []int) {
	if len(a) == 0 {
		panic("func popBack: zero length slice")
	}
	return a[len(a)-1], a[:len(a)-1]
}
func intsPopFront(a []int) (int, []int) {
	if len(a) == 0 {
		panic("func popFront: zero length slice")
	}
	return a[0], a[1:]
}
func intsPushBack(a []int, x int) []int  { return append(a, x) }
func intsPushFront(a []int, x int) []int { return append([]int{x}, a...) }

var (
	sc = bufio.NewScanner(os.Stdin)
	bw = bufio.NewWriterSize(os.Stdout, maxBufSize)
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
		b = b[1:]
	}
	for _, v := range b {
		n = n*10 + int(v-48)
	}
	if neg {
		n = -n
	}
	return
}
func ri64() (n int64) {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}
	b := sc.Bytes()
	neg := false
	if b[0] == 45 {
		neg = true
		b = b[1:]
	}
	for _, v := range b {
		n = n*10 + int64(v-48)
	}
	if neg {
		n = -n
	}
	return
}
func rf() float64 {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}
	f, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err)
	}
	return f
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
func rr() []rune {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}
	return []rune(sc.Text())
}
func ris(n int) []int {
	s := make([]int, n)
	for i := range s {
		s[i] = ri()
	}
	return s
}
func risZeroBased(n int) []int {
	s := make([]int, n)
	for i := range s {
		s[i] = ri() - 1
	}
	return s
}
func ri64s(n int) []int64 {
	s := make([]int64, n)
	for i := range s {
		s[i] = ri64()
	}
	return s
}
func rss(n int) []string {
	s := make([]string, n)
	for i := range s {
		s[i] = rs()
	}
	return s
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
func dbg(a ...interface{}) {
	if _, err := fmt.Fprintln(os.Stderr, a...); err != nil {
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
	maxBufSize = 1e6

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
	as := ris(n)

	ans := 0
	for i := range as {
		ans += as[i] - 1
	}
	pln(ans)
}
