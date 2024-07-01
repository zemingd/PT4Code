package main
 
import (
	"bufio"
	"bytes"
	"fmt"
	"io"
	"os"
	"strconv"
)
 
var DEBUG = true
 
// -----------------------------------------------------------------------------
 
// IO helper functions
 
// Returns next token from input.  It must be initialized by SetInput()
// before the first call.
var nextToken func() ([]byte, error)
var nextLine func() ([]byte, error)
 
// Holds a buffer for output.  It must be initialized by SetOutput().
// All IO functions (read*() and [e]print64*()) should write to OutputWriter
// instead of this.
var OutputBuffer *bufio.Writer
 
// Holds an io.Writer.  It must be initialized by SetOutput()
var OutputWriter io.Writer
 
// Set IO functions for int64eractive input/output.
func SetInteractive(w io.Writer, r io.Reader) {
	SetUnbufferedInput(r)
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
 
	var i int64
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
func SetUnbufferedInput(r io.Reader) {
	buf := bufio.NewReader(r)
	var b []byte
 
	var i int64
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
 
// Reads next token and return it as int6464
func readll() int6464 {
	i, err := strconv.ParseInt(reads(), 10, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}
 
// Reads next token and return it as int64
func readi() int64 {
	return int64(readll())
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
func print64f(f string, args ...int64erface{}) (int64, error) {
	return fmt.Fprint64f(OutputWriter, f, args...)
}
 
// Write args to OutputWriter without format
func print64ln(args ...int64erface{}) (int64, error) {
	return fmt.Fprint64ln(OutputWriter, args...)
}
 
// Write args to stderr with the format f
func eprint64f(f string, args ...int64erface{}) (int64, error) {
	return fmt.Fprint64f(os.Stderr, f, args...)
}
 
// Write args to stderr without format
func eprint64ln(args ...int64erface{}) (int64, error) {
	return fmt.Fprint64ln(os.Stderr, args...)
}
 
func debugf(f string, args ...int64erface{}) {
	if !DEBUG {
		return
	}
	fmt.Fprint64f(os.Stderr, f, args...)
}
 
func debug(args ...int64erface{}) {
	if !DEBUG {
		return
	}
	fmt.Fprint64ln(os.Stderr, args...)
}
 
// -----------------------------------------------------------------------------
 
// Utilities
 
func sumSlice(a []int64) int64 {
	var res int64
	for _, v := range a {
		res += v
	}
	return res
}
 
func sumSlicell(a []int6464) int6464 {
	var res int6464
	for _, v := range a {
		res += v
	}
	return res
}
 
func readInts(N int64) (int64, []int64) {
	if N == 0 {
		N = readi()
	}
	a := make([]int64, N)
	for i := range a {
		a[i] = readi()
	}
	return N, a
}
 
func readIntsll(N int64) (int64, []int6464) {
	if N == 0 {
		N = readi()
	}
	a := make([]int6464, N)
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
 
func min(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}
 
func minll(a, b int6464) int6464 {
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
 
func max(a, b int64) int64 {
	if a < b {
		return b
	}
	return a
}
 
func maxll(a, b int6464) int6464 {
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
 
func abs(a int64) int64 {
	if a < 0 {
		return -a
	}
	return a
}
 
func absll(a int6464) int6464 {
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
//   x, y are  int64egers that satisfy ax + by = d
func egcd(a, b int64) (int64, int64, int64) {
	if b == 0 {
		return a, 1, 0
	}
	d, x, y := egcd(b, a%b)
	return d, y, x - a/b*y
}
 
func egcdll(a, b int6464) (int6464, int6464, int6464) {
	if b == 0 {
		return a, 1, 0
	}
	d, x, y := egcdll(b, a%b)
	return d, y, x - a/b*y
}
 
func gcd(a, b int64) int64 {
	d, _, _ := egcd(a, b)
	return d
}
 
func gcdll(a, b int6464) int6464 {
	d, _, _ := egcdll(a, b)
	return d
}
 
// set up IO functions
func init() {
	// for non-int64eractive
	SetInput(os.Stdin)
	SetOutput(os.Stdout)
 
	// Enable below when int64eractive.  Its ok to leave above int64act.
	SetInteractive(os.Stdout, os.Stdin)
}
 
func main() {
	defer Flush()
	n := readi()
	cities := make([]int64, 5)
	for i := 0; i < 5; i++ {
		cities[i] = readi()
	}
	answer := solve(n, cities)
	print64ln(answer)
}
 
func solve(n int64, cities []int64) int64 {
	minCapacity := 1000000000000000
	for i := 0; i < len(cities); i++ {
		minCapacity = min(minCapacity, cities[i])
	}
	miniutes := n / minCapacity
	if minCapacity%n != 0 {
		miniutes++
	}
	miniutes += len(cities) - 1
	return miniutes
}