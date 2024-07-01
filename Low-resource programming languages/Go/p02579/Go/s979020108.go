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
// All IO functions (read*() and [e]print*()) should write to OutputWriter
// instead of this.
var OutputBuffer *bufio.Writer

// Holds an io.Writer.  It must be initialized by SetOutput()
var OutputWriter io.Writer

// Set IO functions for interactive input/output.
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
func SetUnbufferedInput(r io.Reader) {
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

func debugf(f string, args ...interface{}) {
	if !DEBUG {
		return
	}
	fmt.Fprintf(os.Stderr, f, args...)
}

func debug(args ...interface{}) {
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
	SetInteractive(os.Stdout, os.Stdin)
}

var m [][]int
var h, w int

func main() {
	defer Flush()
	h, w = readi(), readi()
	ch, cw := readi(), readi()
	dh, dw := readi(), readi()
	m = make([][]int, h)
	DEBUG = false
	for i := 0; i < h; i++ {
		m[i] = make([]int, w)
		s := reads()
		for j := 0; j < w; j++ {
			m[i][j] = int(s[j])
		}
	}

	answer := solve(ch, cw, dh, dw)
	println(answer)
}

func solve(ch, cw, dh, dw int) int {
	move1(ch-1, cw-1, 0, false)
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if m[i][j] != '#' && m[i][j] != '.' {
				printmap()
				move2(i, j, m[i][j])
				printmap()
			}
		}
	}
	if m[dh-1][dw-1] == '.' {
		return -1
	}
	return m[dh-1][dw-1]
}

func printmap() {
	if DEBUG {
		println("*************")
		for i := 0; i < h; i++ {
			println(m[i])
		}
	}
}

func move1(x, y, point int, callMove2 bool) {
	for i := -1; i <= 1; i++ {
		for j := -1; j <= 1; j++ {
			if i != 0 && j != 0 {
				continue
			}
			if x+i >= 0 && x+i < h && y+j >= 0 && y+j < w {
				if m[x+i][y+j] == '.' {
					m[x+i][y+j] = point
					if callMove2 {
						move2(x+i, y+j, point)
					}
					move1(x+i, y+j, point, callMove2)

				}
			}
		}
	}
}

func notWall(x, y int) bool {
	return m[x][y] != '#'
}

func move2(x, y, point int) {
	// debugf("from %d %d point %d\n", x, y, point)
	for i := -2; i <= 2; i++ {
		for j := -2; j <= 2; j++ {
			// debugf("before check %d %d point %d in h %d w %d\n", x+i, y+j, h, w)
			if x+i >= 0 && x+i < h && y+j >= 0 && y+j < w {
				// debugf("check %d %d point %d\n", x+i, y+j, m[x+i][y+j])
				if m[x+i][y+j] == '.' || (notWall(x+i, y+j) && m[x+i][y+j] > point+1) {
					m[x+i][y+j] = point + 1
					move1(x+i, y+j, point+1, true)
					// move2(x, y, point+1)
				}
			}
		}
	}
}

/*
5 6
1 2
5 6
#.####
####.#
#..###
#..#..
#####.
*/
