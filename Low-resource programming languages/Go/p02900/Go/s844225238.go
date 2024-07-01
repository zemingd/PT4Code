package main

import (
	"bufio"
	"bytes"
	"fmt"
	"io"
	"os"
	"strconv"
)

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
	return b
}

// Reads next token and return it as string
func reads() string {
	return string(readb())
}

// Read next line as []byte
func readbln() []byte {
	b, err := nextLine()
	if err != nil {
		panic(err)
	}
	return b
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

func main() {
	defer Flush()

	A := readi()
	B := readi()
	d := gcd(A, B)
	if d == 1 {
		println(1)
		return
	}

	p := NewPrimes(d + 1)
	println(len(p.Factorize(d)) + 1)

}

type Primes struct {
	p []bool
	d []int
}

func NewPrimes(n int) Primes {
	m := n + 1
	p := Primes{
		p: make([]bool, m),
		d: make([]int, m),
	}
	p.d[1] = 1
	for i := 3; i < m; i += 2 {
		p.p[i] = true
		p.d[i-1] = 2
	}
	if n%2 == 0 {
		p.d[n] = 2
	}
	p.p[2] = true
	i := 3
	for ; i*i < m; i += 2 {
		if !p.p[i] {
			continue
		}
		p.d[i] = i
		for j := i * i; j < m; j += i {
			p.p[j] = false
			if p.d[j] == 0 {
				p.d[j] = i
			}
		}
	}

	for i = i - 2; i < m; i += 2 {
		if p.d[i] == 0 {
			p.d[i] = i
		}
	}

	return p
}

func (ps Primes) IsPrime(x int) bool {
	return ps.p[x]
}

func (ps Primes) Divisor(x int) int {
	return ps.d[x]
}

func (ps Primes) Factorize(x int) [][2]int {
	res := make([][2]int, 0)
	if x == 1 {
		res = append(res, [2]int{1, 1})
		return res
	}
	v := x
	for v != 1 {
		d := ps.d[v]
		if d == x {
			break
		}
		if 0 < len(res) && res[len(res)-1][0] == d {
			res[len(res)-1][1]++
		} else {
			res = append(res, [2]int{d, 1})
		}
		v /= d
	}
	return res
}

func (ps Primes) FactorizeMap(x int) map[int]int {
	m := make(map[int]int)
	for _, f := range ps.Factorize(x) {
		m[f[0]] = f[1]
	}
	return m
}

// newFactorial(n, p int) returns 2 functions.
// 1. factorial(x int) int: returns factorial x modulo p (0 <= x <= n)
// 2. combination(x, r int int: returns xCr modulo p (1 <= r <= x <= n)
func newFactorial(n, p int) (factorial func(int) int, combination func(int, int) int) {
	if n < 1 {
		panic("newFactorial: n must be more than 0")
	}

	fact := make([]int, n+1)
	fact[1] = 1
	for i := 2; i <= n; i++ {
		fact[i] = mul(fact[i-1], i, p)
	}

	ifact := make([]int, n+1)
	ifact[n] = inv(fact[n], p)
	for i := n - 1; 0 <= i; i-- {
		ifact[i] = mul(ifact[i+1], i+1, p)
	}

	factorial = func(i int) int {
		return fact[i]
	}
	combination = func(n, r int) int {
		return mul3(fact[n], ifact[n-r], ifact[r], p)
	}
	return
}

func mul(a, b, p int) int {
	return int(int64(a) * int64(b) % int64(p))
}

func mul3(a, b, c, p int) int {
	return int(int64(a) * int64(b) % int64(p) * int64(c) % int64(p))
}

func mulm(a, b int, rest ...int) int {
	n := len(rest) - 1
	p := int64(rest[n])
	rest = rest[:n]
	res := int64(a) * int64(b) % p
	for _, v := range rest {
		res = res * int64(v) % p
	}

	return int(res)
}

func div(n, d, p int) int {
	return mul(n, inv(d, p), p)
}

func inv(a, p int) int {
	return exp(a, p-2, p)
}

func exp(n, e, p int) int {
	if e == 0 {
		return 1
	}
	if e&1 == 1 {
		return mul(n, exp(n, e-1, p), p)
	} else {
		return square(exp(n, e/2, p), p)
	}
}

func square(a, p int) int {
	return mul(a, a, p)
}
