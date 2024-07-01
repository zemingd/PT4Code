// ProblemURL : https://atcoder.jp/contests/abc142/tasks/abc142_d
// ---------------------------------------------
package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
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
func smallest(a, b, c int) (slst int) {
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
func isEven(n int) bool            { return n&1 == 0 }
func isOdd(n int) bool             { return n&1 == 1 }
func swap(a int, b int) (int, int) { return b, a }
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
func fact(x int) int {
	fact := 1
	for i := 1; i <= x; i++ {
		fact *= i
	}
	return fact
}
func sigmaK(n int) int  { return n * (n + 1) / 2 }
func sigmaKK(n int) int { return (n * (n + 1) / 2) * (2*n + 1) / 3 }
func euclideanDistance(a, b point) float64 {
	s := diff(a.x, b.x)
	s *= s
	t := diff(a.y, b.y)
	t *= t
	return math.Sqrt(float64(s) + float64(t))
}
func manhattanDistance(a, b point) int {
	s := diff(a.x, b.x)
	t := diff(a.y, b.y)
	return s + t
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
func chmax(a *int, b int) {
	if *a < b {
		*a = b
	}
}
func chmin(a *int, b int) {
	if *a > b {
		*a = b
	}
}
func cumSum(a []int) []int {
	b := append([]int{0}, a...)
	for i := 1; i < len(b); i++ {
		b[i] += b[i-1]
	}
	return b
}
func strUpperCase(s string) string { return strings.ToUpper(s) }
func strLowerCase(s string) string { return strings.ToLower(s) }
func strToInt(s string) int {
	i, err := strconv.Atoi(s)
	if err != nil {
		panic(err)
	}
	return i
}
func intToStr(i int) string  { return strconv.Itoa(i) }
func CalcMod(a, mod int) int { return (a%mod + mod) % mod }
func ModPow(x, y, mod int) int {
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
func ModFact(x, mod int) int {
	fact := 1
	for i := 1; i <= x; i++ {
		fact = fact * i % mod
	}
	return fact
}
func ModInv(x, mod int) int { return ModPow(x, mod-2, mod) }

var (
	sc = bufio.NewScanner(os.Stdin)
	bw = bufio.NewWriterSize(os.Stdout, bwBufSize)
)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1e7), 1e7)
}
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
func rf64() float64 {
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
func pints(a []int) {
	for _, v := range a {
		fmt.Fprintln(bw, v)
	}
}
func pintsol(a []int) {
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
func YESorNO(b bool) string {
	if b {
		return "YES"
	} else {
		return "NO"
	}
}
func YesOrNo(b bool) string {
	if b {
		return "Yes"
	} else {
		return "No"
	}
}
func main() {
	solve()
	bw.Flush()
}

const (
	bwBufSize = 1e6

	alphabetUpper = "abcdefghijklmnopqrstuvwxyz"
	alphabetLower = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

	// maxInt64  = 9223372036854775807  // 9e18
	// maxInt32  = 2147483647           // 2e9
	// maxUint64 = 18446744073709551615 // 1e19
	inf = 1 << 60
	mod = 1e9 + 7
)

type pair struct{ fi, se int }
type byFiSe []pair

func (p byFiSe) Len() int      { return len(p) }
func (p byFiSe) Swap(i, j int) { p[i], p[j] = p[j], p[i] }
func (p byFiSe) Less(i, j int) bool {
	if p[i].fi == p[j].fi {
		return p[i].se < p[j].se
	}
	return p[i].fi < p[j].fi
}

type point struct{ x, y int }

func divisors(n int) []int {
	res := make([]int, 0, 2*int(math.Cbrt((float64(n)))))
	for x := 1; x*x <= n; x++ {
		if n%x == 0 {
			res = append(res, x, n/x)
		}
	}
	if res[len(res)-1] == res[len(res)-2] {
		return res[:len(res)-1]
	}
	return res
}
func gcd(a, b int) int {
	for b != 0 {
		a, b = b, a%b
	}
	return a
}
func isCoprime(a, b int) bool { return gcd(a, b) == 1 }

func solve() {
	a, b := ri(), ri()
	cds := divisors(gcd(a, b))
	sort.Ints(cds)
	acc := 1
	ct := 0
	for i := range cds {
		if isCoprime(acc, cds[i]) {
			acc *= cds[i]
			ct++
		}
	}
	pln(ct)
}
