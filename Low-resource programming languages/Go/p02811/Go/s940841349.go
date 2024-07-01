// ProblemURL : https://atcoder.jp/contests/abc150/tasks/abc150_a
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
func intsMax(a []int) (val int) {
	if len(a) == 0 {
		panic("func intsMax: zero length slice")
	}
	val = a[0]
	for _, aa := range a {
		if aa > val {
			val = aa
		}
	}
	return
}
func intsMaxIdx(a []int) (idx, val int) {
	if len(a) == 0 {
		panic("func intsMaxIdx: zero length slice")
	}
	val = a[0]
	for i, aa := range a {
		if aa > val {
			idx, val = i, aa
		}
	}
	return
}
func intsMin(a []int) (val int) {
	if len(a) == 0 {
		panic("func intsMin: zero length slice")
	}
	val = a[0]
	for _, aa := range a {
		if aa < val {
			val = aa
		}
	}
	return
}
func intsMinIdx(a []int) (idx, val int) {
	if len(a) == 0 {
		panic("func intsMinIdx: zero length slice")
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
func intsAve(s []int) float64 {
	return float64(intsSum(s)) / float64(len(s))
}
func intsAdd(a *[]int, x int)       { *a = append(*a, x) }
func intsDelete(a *[]int, i int)    { *a = append((*a)[:i], (*a)[i+1:]...) }
func intsJoin(a, b []int) []int     { return append(a, b...) }
func intsClear(a []int) []int       { return a[:0] }
func intsCopy(a []int) []int        { return append([]int(nil), a...) }
func intsCopySortAsc(a []int) []int { s := intsCopy(a); sort.Ints(s); return s }
func intsCopySortDesc(a []int) []int {
	s := intsCopy(a)
	sort.Sort(sort.Reverse(sort.IntSlice(s)))
	return s
}
func intsReverse(a []int) {
	for i, j := 0, len(a)-1; i < j; i, j = i+1, j-1 {
		a[i], a[j] = a[j], a[i]
	}
}
func intsNew(length int, initialValue int) []int {
	a := make([]int, length)
	intsFill(a, initialValue)
	return a
}
func intsFill(a []int, val int) {
	for i := 0; i < len(a); i++ {
		a[i] = val
	}
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
func intsPopBack(a *[]int) int {
	if len(*a) == 0 {
		panic("func popBack: zero length slice")
	}
	t := (*a)[len(*a)-1]
	*a = (*a)[:len(*a)-1]
	return t
}
func intsPopFront(a *[]int) int {
	if len(*a) == 0 {
		panic("func popFront: zero length slice")
	}
	h := (*a)[0]
	*a = (*a)[1:]
	return h
}
func intsPushBack(a *[]int, x int) { *a = append(*a, x) }
func intsPushFront(a *[]int, x int) {
	*a = append(*a, 0)
	copy((*a)[1:], (*a)[0:])
	(*a)[0] = x
}
func intsAppendSentinelHead(a *[]int, sentinel int) { intsPushFront(a, sentinel) }
func intsAppendSentinelTail(a *[]int, sentinel int) { intsPushBack(a, sentinel) }
func intsAppendSentinels(a *[]int, sentinel int) {
	intsPushFront(a, sentinel)
	intsPushBack(a, sentinel)
}
func intsIota(n int) []int {
	as := make([]int, n)
	for i := range as {
		as[i] = i
	}
	return as
}
func intsHaveDuplicateElm(a []int) bool {
	m := make(map[int]bool, len(a))
	for _, aa := range a {
		if _, exists := m[aa]; exists {
			return true
		} else {
			m[aa] = true
		}
	}
	return false
}
func isEven(n int) bool         { return n&1 == 0 }
func isOdd(n int) bool          { return n&1 == 1 }
func floor(x float64) int       { return int(x) }
func ceil(x float64) int        { return int(math.Ceil(x)) }
func ceilDiv(x, y int) int      { return ((x) + (y) - 1) / (y) }
func floorDiv(x, y int) int     { return (x) / (y) }
func floatDiv(x, y int) float64 { return float64(x) / float64(y) }
func pow(x, y int) int {
	if y < 0 {
		panic("Exponent must be a natural number")
	}
	z := 1
	for ; y != 0; y >>= 1 {
		if y&1 == 1 {
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
func swap(a, b *int) { *a, *b = *b, *a }
func chmax(a *int, b int) bool {
	if *a < b {
		*a = b
		return true
	}
	return false
}
func chmin(a *int, b int) bool {
	if *a > b {
		*a = b
		return true
	}
	return false
}
func cumsumBuild(a []int) []int {
	b := append([]int{0}, a...)
	for i := 1; i < len(b); i++ {
		b[i] += b[i-1]
	}
	return b
}
func bytesAdd(bytes *[]byte, x byte) { *bytes = append(*bytes, x) }
func bytesJoin(a, b []byte) []byte   { return append(a, b...) }
func bytesCopy(a []byte) []byte      { return append([]byte(nil), a...) }

type sortBytes []byte

func (s sortBytes) Less(i, j int) bool  { return s[i] < s[j] }
func (s sortBytes) Swap(i, j int)       { s[i], s[j] = s[j], s[i] }
func (s sortBytes) Len() int            { return len(s) }
func bytesSortAsc(s []byte)             { sort.Sort(sortBytes(s)) }
func bytesSortDesc(s []byte)            { sort.Sort(sort.Reverse(sortBytes(s))) }
func bytesCopySortAsc(s []byte) []byte  { t := bytesCopy(s); bytesSortAsc(t); return t }
func bytesCopySortDesc(s []byte) []byte { t := bytesCopy(s); bytesSortDesc(t); return t }
func bytesReverse(a []byte) {
	for i, j := 0, len(a)-1; i < j; i, j = i+1, j-1 {
		a[i], a[j] = a[j], a[i]
	}
}
func strIsUpperAlphabet(s string) bool {
	if len(s) != 1 {
		panic("wrong arg")
	}
	t := s[0]
	return 'A' <= t && t <= 'Z'
}
func strIsLowerAlphabet(s string) bool {
	if len(s) != 1 {
		panic("wrong arg")
	}
	t := s[0]
	return 'a' <= t && t <= 'z'
}
func strToUpperCase(s string) string { return strings.ToUpper(s) }
func strToLowerCase(s string) string { return strings.ToLower(s) }
func strAlphaUpperCaseToInt(s string) int {
	if len(s) != 1 {
		panic("wrong arg")
	}
	t := s[0]
	if !('A' <= t && t <= 'Z') {
		panic("arg must be upper case alphabet")
	}
	return int(t - 'A')
}
func strAlphaLowerCaseToInt(s string) int {
	if len(s) != 1 {
		panic("wrong arg")
	}
	t := s[0]
	if !('a' <= t && t <= 'z') {
		panic("arg must be lower case alphabet")
	}
	return int(t - 'a')
}
func strCountAlphabetsLower(alphaLower string) (ctAlphas [26]int) {
	ct := [26]int{}
	for _, ss := range alphaLower {
		if !('a' <= ss && ss <= 'z') {
			panic("func strCountAlphabetsLower: argument must be lowercase string")
		}
		ct[ss-'a']++
	}
	return ct
}
func strCountAlphabetsUpper(alphaUpper string) (ctAlphas [26]int) {
	ct := [26]int{}
	for _, ss := range alphaUpper {
		if !('A' <= ss && ss <= 'Z') {
			panic("func strCountAlphabetsUpper: argument must be uppercase string")
		}
		ct[ss-'A']++
	}
	return ct
}
func strReverse(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < j; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}
func runeIsUpperAlphabet(r rune) bool { return 'A' <= r && r <= 'Z' }
func runeIsLowerAlphabet(r rune) bool { return 'a' <= r && r <= 'z' }
func runesAdd(runes *[]rune, x rune)  { *runes = append(*runes, x) }
func runesJoin(a, b []rune) []rune    { return append(a, b...) }
func runesCopy(a []rune) []rune       { return append([]rune(nil), a...) }

type sortRunes []rune

func (s sortRunes) Less(i, j int) bool  { return s[i] < s[j] }
func (s sortRunes) Swap(i, j int)       { s[i], s[j] = s[j], s[i] }
func (s sortRunes) Len() int            { return len(s) }
func runesSortAsc(s []rune)             { sort.Sort(sortRunes(s)) }
func runesSortDesc(s []rune)            { sort.Sort(sort.Reverse(sortRunes(s))) }
func runesCopySortAsc(s []rune) []rune  { t := runesCopy(s); runesSortAsc(t); return t }
func runesCopySortDesc(s []rune) []rune { t := runesCopy(s); runesSortDesc(t); return t }
func runesReverse(a []rune) {
	for i, j := 0, len(a)-1; i < j; i, j = i+1, j-1 {
		a[i], a[j] = a[j], a[i]
	}
}
func strToInt(s string) int {
	i, err := strconv.Atoi(s)
	if err != nil {
		panic(err)
	}
	return i
}
func intToStr(i int) string     { return strconv.Itoa(i) }
func CalcMod(a, mod int) int    { return (a%mod + mod) % mod }
func ModSum(a *int, b, mod int) { *a = (((*a) % mod) + mod + (b % mod)) % mod }
func ModMul(a *int, b, mod int) { *a = (((*a) % mod) * (b % mod)) % mod }
func ModPow(x, y, mod int) int {
	if y < 0 {
		panic("Exponent must be a natural number")
	}
	z := 1
	for ; y != 0; y >>= 1 {
		if y&1 == 1 {
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
func initMatrixBool(parentSize, childSize int, initialValue bool) *[][]bool {
	res := make([][]bool, parentSize)
	for i := range res {
		res[i] = make([]bool, childSize)
		for j := range res[i] {
			res[i][j] = initialValue
		}
	}
	return &res
}
func initMatrixInt(parentSize, childSize int, initialValue int) *[][]int {
	res := make([][]int, parentSize)
	for i := range res {
		res[i] = make([]int, childSize)
		for j := range res[i] {
			res[i][j] = initialValue
		}
	}
	return &res
}

var (
	sc = bufio.NewScanner(os.Stdin)
	bw = bufio.NewWriterSize(os.Stdout, bwBufSize)
)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 3e6+10), 3e6+10)
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
func rbs() []byte {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}
	return sc.Bytes()
}
func rrs() []rune {
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
func riis(n int) ([]int, []int) {
	s := make([]int, n)
	t := make([]int, n)
	for i := range s {
		s[i] = ri()
		t[i] = ri()
	}
	return s, t
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
func pF64(x float64) { pf("%.10f\n", x) }
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
func dbgMatrix(a []interface{}) {
	for i := 0; i < len(a); i++ {
		dbg(a[i])
	}
}
func flush() {
	if err := bw.Flush(); err != nil {
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
	flush()
}

const (
	bwBufSize = 1e6

	alphabetLower = "abcdefghijklmnopqrstuvwxyz"
	alphabetUpper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

	// maxInt64  = 9223372036854775807  // 9e18
	// maxInt32  = 2147483647           // 2e9
	// maxUint64 = 18446744073709551615 // 1e19
	i32Inf = 1 << 30
	i64Inf = 1 << 60
	inf    = 1 << 60
	mod    = 1e9 + 7
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

func solve() {
	k, x := ri(), ri()
	pln(YesOrNo(k*500 >= x))
}
