package main

import (
	"bufio"
	"bytes"
	"fmt"
	"io"
	"os"
	"reflect"
	"strconv"
	"unsafe"
)

var DEBUG = true

func main() {
	defer Flush()

	N, A := readInts(0)
	M := N + 2
	L := make([]int, M)
	for i := range A {
		L[i+1] = gcd(L[i], A[i])
	}
	Reverse(A)
	R := make([]int, M)
	for i := range A {
		R[i+1] = gcd(R[i], A[i])
	}
	Reverse(A)
	Reverse(R)

	ans := 1
	for i := range A {
		d := gcd(L[i], R[i+2])
		ans = max(ans, d)
	}

	println(ans)

}

// =============================================================================

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// these functions are derived from sort in Go source.
// name of functions are changed

// The function panics if the provided interface is not a slice.
func Reverse(slice interface{}) {
	rv := reflect.ValueOf(slice)
	swap := _reverse_Swapper(slice)
	length := rv.Len()
	for i, j := 0, length-1; i < j; i, j = i+1, j-1 {
		swap(i, j)
	}
}

func _reverse_Swapper(slice interface{}) func(i, j int) {
	v := reflect.ValueOf(slice)
	vdata := v.Pointer()
	vlen := v.Len()
	vcap := v.Cap()

	sz := int(v.Type().Elem().Size())

	// for typical small elements
	switch sz {
	case 24: // for slice
		var s [][3]int64
		h := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		h.Data = vdata
		h.Len = vlen
		h.Cap = vcap
		return func(i, j int) { s[i], s[j] = s[j], s[i] }
	case 16: // for string
		var s [][2]int64
		h := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		h.Data = vdata
		h.Len = vlen
		h.Cap = vcap
		return func(i, j int) { s[i], s[j] = s[j], s[i] }
	case 8:
		var s []int64
		h := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		h.Data = vdata
		h.Len = vlen
		h.Cap = vcap
		return func(i, j int) { s[i], s[j] = s[j], s[i] }
	case 4:
		var s []int32
		h := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		h.Data = vdata
		h.Len = vlen
		h.Cap = vcap
		return func(i, j int) { s[i], s[j] = s[j], s[i] }
	case 2:
		var s []int16
		h := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		h.Data = vdata
		h.Len = vlen
		h.Cap = vcap
		return func(i, j int) { s[i], s[j] = s[j], s[i] }
	case 1:
		var s []int8
		h := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		h.Data = vdata
		h.Len = vlen
		h.Cap = vcap
		return func(i, j int) { s[i], s[j] = s[j], s[i] }
	}

	// for large elements
	if sz%16 == 0 {
		m := sz / 16
		var s [][2]int64
		h := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		h.Data = vdata
		h.Len = vlen * m
		h.Cap = vcap * m
		return func(i, j int) {
			for k := 0; k < m; k++ {
				ri := i*m + k
				rj := j*m + k
				s[ri], s[rj] = s[rj], s[ri]
			}
		}
	}
	if sz%8 == 0 {
		m := sz / 8
		var s []int64
		h := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		h.Data = vdata
		h.Len = vlen * m
		h.Cap = vcap * m
		return func(i, j int) {
			for k := 0; k < m; k++ {
				ri := i*m + k
				rj := j*m + k
				s[ri], s[rj] = s[rj], s[ri]
			}
		}
	}
	if sz%4 == 0 {
		m := sz / 4
		var s []int32
		h := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		h.Data = vdata
		h.Len = vlen * m
		h.Cap = vcap * m
		return func(i, j int) {
			for k := 0; k < m; k++ {
				ri := i*m + k
				rj := j*m + k
				s[ri], s[rj] = s[rj], s[ri]
			}
		}
	}
	if sz%2 == 0 {
		m := sz / 2
		var s []int16
		h := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		h.Data = vdata
		h.Len = vlen * m
		h.Cap = vcap * m
		return func(i, j int) {
			for k := 0; k < m; k++ {
				ri := i*m + k
				rj := j*m + k
				s[ri], s[rj] = s[rj], s[ri]
			}
		}
	} else {
		m := sz
		var s []int8
		h := (*reflect.SliceHeader)(unsafe.Pointer(&s))
		h.Data = vdata
		h.Len = vlen * m
		h.Cap = vcap * m
		return func(i, j int) {
			for k := 0; k < m; k++ {
				ri := i*m + k
				rj := j*m + k
				s[ri], s[rj] = s[rj], s[ri]
			}
		}
	}
}

// =============================================================================

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
