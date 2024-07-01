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

// Setup nextToken with input buffer.
func SetInput(r io.Reader) {
	buf := new(bytes.Buffer)
	var b []byte

	var i int
	rest := func() ([]byte, error) {
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
	initial := func() ([]byte, error) {
		io.Copy(buf, r)
		b = buf.Bytes()
		nextToken = rest
		return rest()
	}
	nextToken = initial
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

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func min64(a, b int64) int64 {
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

func max64(a, b int64) int64 {
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

func abs64(a int64) int64 {
	if a < 0 {
		return -a
	}
	return a
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func gcd64(a, b int64) int64 {
	if b == 0 {
		return a
	}
	return gcd64(b, a%b)
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
	N := readi()
	a := make([][]bool, N)
	c := make([][]bool, N)
	for i := range a {
		A := readi()
		a[i] = make([]bool, N)
		c[i] = make([]bool, N)
		for j := 0; j < A; j++ {
			x := readi() - 1
			y := readi()
			c[i][x] = true
			if y == 1 {
				a[i][x] = true
			}
		}
	}

	var ans int

	DoWithExhaustiveBits(N, func(b []bool) {
		for i := 0; i < N; i++ {
			if b[i] {
				for j := range a[i] {
					if !c[i][j] {
						continue
					}
					if a[i][j] != b[j] {
						return
					}
				}
			}
			//else {
			//	for j := range a[i] {
			//		if !c[i][j] {
			//			continue
			//		}
			//		if a[i][j] == b[j] {
			//			return
			//		}
			//	}
			//}
		}
		tmp := 0
		for _, r := range b {
			if r {
				tmp++
			}
		}
		ans = max(ans, tmp)
	})
	println(ans)

}

// DoWithExhaustiveBits(n, fn) calls fn with []bool for each n-bit true/false pattern
// e.g.
// DoWithExhaustiveBits(10, func(b []bool) { fmt.Println(b) }
// -> [false, false, false, false, false, false, false, false, false, false]
//    [true, false, false, false, false, false, false, false, false, false]
//    [false, true, false, false, false, false, false, false, false, false]
//    [true, true, false, false, false, false, false, false, false, false]
//    [false, false, true, false, false, false, false, false, false, false]
//    ...
func DoWithExhaustiveBits(n int, fn func([]bool)) {
	N := 1 << uint(n)
	a := make([]bool, n)
	for i := 0; i < N; i++ {
		for j := 0; j < n; j++ {
			k := n - j - 1
			if i&(1<<uint(j)) == 0 {
				a[k] = false
			} else {
				a[k] = true
			}
		}
		fn(a)
	}
}

// DoWithExhaustive01(n, fn) calls fn with []int for each n-bit 0/1 pattern
// e.g.
// DoWithExhaustive01(10, func(b []int) { fmt.Println(b) }
// -> [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
//    [1, 0, 0, 0, 0, 0, 0, 0, 0, 0]
//    [0, 1, 0, 0, 0, 0, 0, 0, 0, 0]
//    [1, 1, 0, 0, 0, 0, 0, 0, 0, 0]
//    [0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
//    ...
func DoWithExhaustive01(n int, fn func([]int)) {
	N := 1 << uint(n)
	a := make([]int, n)
	for i := 0; i < N; i++ {
		for j := 0; j < n; j++ {
			k := n - j - 1
			if i&(1<<uint(j)) == 0 {
				a[k] = 0
			} else {
				a[k] = 1
			}
		}
		fn(a)
	}
}
