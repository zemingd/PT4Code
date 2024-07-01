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

// -----------------------------------------------------------------------------

// IO functions

var (
	nextToken    func() ([]byte, error)
	OutputBuffer *bufio.Writer
	OutputWriter io.Writer
)

func init() {
	// for non-interactive
	SetInput(os.Stdin)
	SetOutput(os.Stdout)

	// Enable below when interactive.  Its ok to leave above intact.
	// SetInteractive(os.Stdout, os.Stdin)
}

func SetInteractive(w io.Writer, r io.Reader) {
	SetUnbefferedInput(r)
	OutputBuffer = nil
	OutputWriter = w
}

func SetOutput(w io.Writer) {
	OutputBuffer = bufio.NewWriter(w)
	OutputWriter = OutputBuffer
}

func Flush() {
	if OutputBuffer != nil {
		OutputBuffer.Flush()
	}
}

func IsSpace(c byte) bool {
	switch c {
	case '\t', '\n', '\v', '\f', '\r', ' ':
		return true
	}
	return false
}

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

func readb() []byte {
	b, err := nextToken()
	if err != nil {
		panic(err)
	}
	return b
}
func reads() string {
	return string(readb())
}

func readll() int64 {
	i, err := strconv.ParseInt(reads(), 10, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readi() int {
	return int(readll())
}

func readf() float64 {
	f, err := strconv.ParseFloat(reads(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
}

func printf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(OutputWriter, f, args...)
}

func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(OutputWriter, args...)
}

func eprintf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(os.Stderr, f, args...)
}

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

func main() {
	defer Flush()
	N := readi()
	v := make([]float64, N)
	for i := range v {
		v[i] = readf()
	}
	Sort(v, func(i, j int) bool { return v[i] < v[j] })
	var ans float64
	ans = v[0]
	for i := 1; i < len(v); i++ {
		ans = (ans + v[i]) / 2.0
	}
	println(ans)

}

// =============================================================================

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// name of functions are changed

// The function panics if the provided interface is not a slice.
func Sort(slice interface{}, less func(i, j int) bool) {
	rv := reflect.ValueOf(slice)
	swap := _sort_Swapper(slice)
	length := rv.Len()
	_sort_quickSort_func(_sort_lessSwap{less, swap}, 0, length, _sort_maxDepth(length))
}

func _sort_maxDepth(n int) int {
	var depth int
	for i := n; i > 0; i >>= 1 {
		depth++
	}
	return depth * 2
}

type _sort_lessSwap struct {
	Less func(i, j int) bool
	Swap func(i, j int)
}

// Auto-generated variant of sort.go:insertionSort
func _sort_insertionSort_func(data _sort_lessSwap, a, b int) {
	for i := a + 1; i < b; i++ {
		for j := i; j > a && data.Less(j, j-1); j-- {
			data.Swap(j, j-1)
		}
	}
}

// Auto-generated variant of sort.go:siftDown
func _sort_siftDown_func(data _sort_lessSwap, lo, hi, first int) {
	root := lo
	for {
		child := 2*root + 1
		if child >= hi {
			break
		}
		if child+1 < hi && data.Less(first+child, first+child+1) {
			child++
		}
		if !data.Less(first+root, first+child) {
			return
		}
		data.Swap(first+root, first+child)
		root = child
	}
}

// Auto-generated variant of sort.go:heapSort
func _sort_heapSort_func(data _sort_lessSwap, a, b int) {
	first := a
	lo := 0
	hi := b - a
	for i := (hi - 1) / 2; i >= 0; i-- {
		_sort_siftDown_func(data, i, hi, first)
	}
	for i := hi - 1; i >= 0; i-- {
		data.Swap(first, first+i)
		_sort_siftDown_func(data, lo, i, first)
	}
}

// Auto-generated variant of sort.go:medianOfThree
func _sort_medianOfThree_func(data _sort_lessSwap, m1, m0, m2 int) {
	if data.Less(m1, m0) {
		data.Swap(m1, m0)
	}
	if data.Less(m2, m1) {
		data.Swap(m2, m1)
		if data.Less(m1, m0) {
			data.Swap(m1, m0)
		}
	}
}

// Auto-generated variant of sort.go:doPivot
func _sort_doPivot_func(data _sort_lessSwap, lo, hi int) (midlo, midhi int) {
	m := int(uint(lo+hi) >> 1)
	if hi-lo > 40 {
		s := (hi - lo) / 8
		_sort_medianOfThree_func(data, lo, lo+s, lo+2*s)
		_sort_medianOfThree_func(data, m, m-s, m+s)
		_sort_medianOfThree_func(data, hi-1, hi-1-s, hi-1-2*s)
	}
	_sort_medianOfThree_func(data, lo, m, hi-1)
	pivot := lo
	a, c := lo+1, hi-1
	for ; a < c && data.Less(a, pivot); a++ {
	}
	b := a
	for {
		for ; b < c && !data.Less(pivot, b); b++ {
		}
		for ; b < c && data.Less(pivot, c-1); c-- {
		}
		if b >= c {
			break
		}
		data.Swap(b, c-1)
		b++
		c--
	}
	protect := hi-c < 5
	if !protect && hi-c < (hi-lo)/4 {
		dups := 0
		if !data.Less(pivot, hi-1) {
			data.Swap(c, hi-1)
			c++
			dups++
		}
		if !data.Less(b-1, pivot) {
			b--
			dups++
		}
		if !data.Less(m, pivot) {
			data.Swap(m, b-1)
			b--
			dups++
		}
		protect = dups > 1
	}
	if protect {
		for {
			for ; a < b && !data.Less(b-1, pivot); b-- {
			}
			for ; a < b && data.Less(a, pivot); a++ {
			}
			if a >= b {
				break
			}
			data.Swap(a, b-1)
			a++
			b--
		}
	}
	data.Swap(pivot, b-1)
	return b - 1, c
}

// Auto-generated variant of sort.go:quickSort
func _sort_quickSort_func(data _sort_lessSwap, a, b, maxDepth int) {
	for b-a > 12 {
		if maxDepth == 0 {
			_sort_heapSort_func(data, a, b)
			return
		}
		maxDepth--
		mlo, mhi := _sort_doPivot_func(data, a, b)
		if mlo-a < b-mhi {
			_sort_quickSort_func(data, a, mlo, maxDepth)
			a = mhi
		} else {
			_sort_quickSort_func(data, mhi, b, maxDepth)
			b = mlo
		}
	}
	if b-a > 1 {
		for i := a + 6; i < b; i++ {
			if data.Less(i, i-6) {
				data.Swap(i, i-6)
			}
		}
		_sort_insertionSort_func(data, a, b)
	}
}

// ----------------------------------------------------------------------------

func _sort_Swapper(slice interface{}) func(i, j int) {
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
