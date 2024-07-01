package main

import (
	"bufio"
	"bytes"
	"fmt"
	"io"
	"math"
	"math/rand"
	"os"
	"sort"
	"strconv"
)

var DEBUG = true

func main0() {
	defer Flush()
	N := readi()
	K := readi()
	_, A := readInts(N)
	println(solve(N, K, A))
}

func main1() {
	defer Flush()
	N := 6
	for ok := true; ok; {
		a := make([]int, N)
		for i := range a {
			a[i] = rand.Int()%9 - 4
		}
		for k := 1; k <= N; k++ {
			dbg("checking", k, "for", a)
			x := solveEx(N, k, a)
			y := solve(N, k, a)
			if x != y {
				println("WA")
				println("solveEx", x)
				println("solve", y)
				return
			}
		}
	}
}

func main() {
	main0()
}

func solveEx(N, K int, A []int) int {
	ans := math.MinInt64
	b := make([]int, N)
	for i := 0; i < K; i++ {
		b[i] = 1
	}
	for ok := true; ok; ok = PrevPermutation(b) {
		t := 1
		for i := range A {
			if b[i] == 1 {
				t *= A[i]
			}
		}
		ans = max(ans, t)
	}
	if ans < 0 {
		return INF + ans
	}
	return ans
}

func solve(N, K int, A []int) int {
	p := INF
	pos := make([]int, 0)
	zero := make([]int, 0)
	neg := make([]int, 0)
	for _, v := range A {
		if 0 < v {
			pos = append(pos, v)
		} else if v < 0 {
			neg = append(neg, -v)
		} else {
			zero = append(zero, v)
		}
	}

	if len(pos)+len(neg) < K {
		return 0
	}
	if len(pos) == 0 && K%2 == 1 {
		if 0 < len(zero) {
			return 0
		}
		sort.Slice(neg, func(i, j int) bool {
			return neg[i] < neg[j]
		})
		//dbg("neg", neg)
		ans := 1
		for i := 0; i < K; i++ {
			ans = ans * neg[i] % p
		}
		//dbg("ans", ans)
		return p - ans
	}

	sort.Slice(pos, func(i, j int) bool {
		return pos[i] > pos[j]
	})
	sort.Slice(neg, func(i, j int) bool {
		return neg[i] > neg[j]
	})

	ans := 1
	if K%2 == 1 {
		ans = pos[0]
		pos = pos[1:]
		K--
	}

	update := func(a []int) []int {
		ans *= a[0]
		ans %= p
		ans *= a[1]
		ans %= p
		return a[2:]
	}

	for i := 0; i < K; i += 2 {
		//dbg("ans", ans)
		//dbg("i", i)
		//dbg("K", K)
		//dbg("pos", pos)
		//dbg("neg", neg)
		if len(neg) < 2 && len(pos) < 2 {
			ans *= pos[0]
			ans %= p
			ans *= neg[0]
			ans %= p
			pos = pos[1:]
			neg = neg[1:]
			ans = p - ans
			if 0 < len(zero) {
				ans = 0
			}
		} else if len(pos) < 2 {
			neg = update(neg)
		} else if len(neg) < 2 {
			pos = update(pos)
		} else {
			x := pos[0] * pos[1]
			y := neg[0] * neg[1]
			if x < y {
				neg = update(neg)
			} else {
				pos = update(pos)
			}
		}
	}

	return ans
}

// Call the function fn for each pattern of the permutation of the slice.
// The slice must be sorted on a call, otherwise it doesn't cover all partterns
// of its permutations.
// Note that the slice will be modified in place for each call.
func DoPermutation(a []int, fn func([]int)) {
	for ok := true; ok; ok = NextPermutation(a) {
		fn(a)
	}
}

// Call function fn for each pattern of the permutation of a slice [0, 1, 2, ..., n-1].
func DoPermutation0n(n int, fn func([]int)) {
	a := make([]int, n)
	for i := range a {
		a[i] = i
	}
	DoPermutation(a, fn)
}

// Modify the slice to the next pattern of its permutations in lexicographic order.
// It returns true if it has next permutation.
// Otherwise, the slice is the last pattern of permutations, it returns false.
//
// Example:
//
//   a := make([]int, 4)
//   for i :=range a {
//       a[i] = i+1
//   }
//
//   for ok := true; ok ; ok = NextPermutation(a) {
//       fmt.Println(a)
//   }
//
func NextPermutation(a []int) bool {
	return _permutation_pandita(a, _permutation_less)
}

// Modify the slice to the previous pattern of its permutations in lexicographic order.
func PrevPermutation(a []int) bool {
	return _permutation_pandita(a, _permutation_more)
}

// Narayana Pandita's algorithm whitch generates lexicographic permutations
func _permutation_pandita(a []int, less func(x, y int) bool) bool {
	i := len(a) - 2
	// Find the right most incresing elements a[i] and a[i+1]
	for 0 <= i && !less(a[i], a[i+1]) {
		i--
	}
	if i == -1 {
		return false
	}

	j := i + 1
	// Find the smallest element that is greater than a[i] in a[i+1:]
	for k := j + 1; k < len(a); k++ {
		// a[i] < a[k] && a[k] <= a[j]
		if less(a[i], a[k]) && !less(a[j], a[k]) {
			j = k
		}
	}

	a[i], a[j] = a[j], a[i]

	_permutation_reverse(a[i+1:])

	return true
}

func _permutation_less(x, y int) bool {
	return x < y
}

func _permutation_more(x, y int) bool {
	return y < x
}

func _permutation_reverse(a []int) {
	for i, j := 0, len(a)-1; i < j; i, j = i+1, j-1 {
		a[i], a[j] = a[j], a[i]
	}
}

// Heap's algorithm which generates non-lexicographic permutations.
// It less swaps elements than Narayana Pandita's algorithm.
func DoPermutationHeap(a []int, fn func([]int)) {
	n := len(a)
	c := make([]int, n)
	i := 0
	swap := func(i, j int) {
		a[i], a[j] = a[j], a[i]
	}

	fn(a)

	for i < n {
		if c[i] < i {
			if i%2 == 0 {
				swap(0, i)
			} else {
				swap(c[i], i)
			}
			fn(a)
			c[i]++
			i = 0
		} else {
			c[i] = 0
			i++
		}
	}
}

// -----------------------------------------------------------------------------

// IO helper functions

// Returns next token from input.  It must be initialized by SetInput()
// before the first call.
var nextToken func() ([]byte, error)
var nextLine func() ([]byte, error)

// Holds a buffer for output.  It must be initialized by SetOutput().
// All IO fucntions (read*() and [e]print*()) should write to OutputWriter
// instead of this.
var OutputBuffer *bufio.Writer

// Holds an io.Writer.  It must be initialized by SetOutput()
var OutputWriter io.Writer

// Set IO functions for interactive input/output.
func SetInteractive(w io.Writer, r io.Reader) {
	SetUnbefferedInput(r)
	OutputBuffer = nil
	OutputWriter = w
}

// Setup OutputBuffer and OutputWriter.
func SetOutput(w io.Writer) {
	OutputBuffer = bufio.NewWriter(w)
	OutputWriter = OutputBuffer
}

// Flushes OutputBuffer
func Flush() {
	if OutputBuffer != nil {
		OutputBuffer.Flush()
	}
}

// Returns true if c is a white space
func IsSpace(c byte) bool {
	switch c {
	case '\t', '\n', '\v', '\f', '\r', ' ':
		return true
	}
	return false
}

func IsNewLine(c byte) bool {
	switch c {
	case '\n', '\r':
		return true
	}
	return false
}

// Setup nextToken with input buffer.
func SetInput(r io.Reader) {
	buf := new(bytes.Buffer)
	var b []byte

	var i int
	rest := func() ([]byte, error) {
		for i < len(b) && IsSpace(b[i]) {
			i++
		}
		if i == len(b) {
			return nil, io.ErrUnexpectedEOF
		}
		j := i
		for i < len(b) && !IsSpace(b[i]) {
			i++
		}
		return b[j:i], nil
	}
	initial := func() ([]byte, error) {
		io.Copy(buf, r)
		b = buf.Bytes()
		nextToken = rest
		return rest()
	}
	nextToken = initial

	restLn := func() ([]byte, error) {
		for i < len(b) && IsNewLine(b[i]) {
			i++
		}
		if i == len(b) {
			return nil, io.ErrUnexpectedEOF
		}
		j := i
		for i < len(b) && !IsNewLine(b[i]) {
			i++
		}
		return b[j:i], nil
	}

	initialLn := func() ([]byte, error) {
		io.Copy(buf, r)
		b = buf.Bytes()
		nextLine = restLn
		return restLn()
	}
	nextLine = initialLn
}

// Setup nextToken without input buffer.
func SetUnbefferedInput(r io.Reader) {
	buf := bufio.NewReader(r)
	var b []byte

	var i int
	nextToken = func() ([]byte, error) {
		var err error
		if i == len(b) {
			b, err = buf.ReadBytes('\n')
			if err != nil {
				return nil, err
			}
			i = 0
			j := len(b) - 1
			for 0 <= j && IsSpace(b[j]) {
				j--
			}
			b = b[0 : j+1]
		}
		for i < len(b) && IsSpace(b[i]) {
			i++
		}
		j := i
		for i < len(b) && !IsSpace(b[i]) {
			i++
		}
		if i == j {
			return nil, io.ErrUnexpectedEOF
		}
		return b[j:i], nil
	}
}

// -----------------------------------------------------------------------------

// IO functions

// Reads next token and return it as []byte
func readb() []byte {
	b, err := nextToken()
	if err != nil {
		panic(err)
	}
	return b[:len(b):len(b)]
}

// Reads next token and return it as string
func reads() string {
	return string(readb())
}

// Read next line as []byte.  Trailing '\n' will not be included.
// See also comments on readb()
func readbln() []byte {
	b, err := nextLine()
	if err != nil {
		panic(err)
	}
	return b[:len(b):len(b)]
}

// Read next line as string
func readsln() string {
	return string(readbln())
}

// Reads next token and return it as int64
func readll() int64 {
	i, err := strconv.ParseInt(reads(), 10, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

// Reads next token and return it as int
func readi() int {
	return int(readll())
}

// Reads next token and return it as float64
func readf() float64 {
	f, err := strconv.ParseFloat(reads(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
}

// Write args to OutputWriter with the format f
func printf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(OutputWriter, f, args...)
}

// Write args to OutputWriter without format
func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(OutputWriter, args...)
}

// Write args to stderr with the format f
func eprintf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(os.Stderr, f, args...)
}

// Write args to stderr without format
func eprintln(args ...interface{}) (int, error) {
	return fmt.Fprintln(os.Stderr, args...)
}

func dbgf(f string, args ...interface{}) {
	if !DEBUG {
		return
	}
	fmt.Fprintf(os.Stderr, f, args...)
}

func dbg(args ...interface{}) {
	if !DEBUG {
		return
	}
	fmt.Fprintln(os.Stderr, args...)
}

// -----------------------------------------------------------------------------

// Utilities

func sumSlice(a []int) int {
	var res int
	for _, v := range a {
		res += v
	}
	return res
}

func sumSlicell(a []int64) int64 {
	var res int64
	for _, v := range a {
		res += v
	}
	return res
}

func readInts(N int) (int, []int) {
	if N == 0 {
		N = readi()
	}
	a := make([]int, N)
	for i := range a {
		a[i] = readi()
	}
	return N, a
}

func readIntsll(N int) (int, []int64) {
	if N == 0 {
		N = readi()
	}
	a := make([]int64, N)
	for i := range a {
		a[i] = readll()
	}
	return N, a
}

// -----------------------------------------------------------------------------

// Simple math functions

const (
	// big prime
	INF  = 1000000007
	INF2 = 1000000009
	INF3 = 998244353
)

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func minll(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

func minf(a, b float64) float64 {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func maxll(a, b int64) int64 {
	if a < b {
		return b
	}
	return a
}

func maxf(a, b float64) float64 {
	if a < b {
		return b
	}
	return a
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func absll(a int64) int64 {
	if a < 0 {
		return -a
	}
	return a
}

func absf(a float64) float64 {
	if a < 0 {
		return -a
	}
	return a
}

// egcd(a, b) returns d, x, y:
//   d is gcd(a,b)
//   x, y are  integers that satisfy ax + by = d
func egcd(a, b int) (int, int, int) {
	if b == 0 {
		return a, 1, 0
	}
	d, x, y := egcd(b, a%b)
	return d, y, x - a/b*y
}

func egcdll(a, b int64) (int64, int64, int64) {
	if b == 0 {
		return a, 1, 0
	}
	d, x, y := egcdll(b, a%b)
	return d, y, x - a/b*y
}

func gcd(a, b int) int {
	d, _, _ := egcd(a, b)
	return d
}

func gcdll(a, b int64) int64 {
	d, _, _ := egcdll(a, b)
	return d
}

// set up IO functions
func init() {
	// for non-interactive
	SetInput(os.Stdin)
	SetOutput(os.Stdout)

	// Enable below when interactive.  Its ok to leave above intact.
	// SetInteractive(os.Stdout, os.Stdin)
}
