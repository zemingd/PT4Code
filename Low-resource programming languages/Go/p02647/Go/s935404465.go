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
// before the key call.
var nextToken func() ([]byte, error)

// OutputBuffer Holds a buffer for output.  It must be initialized by SetOutput().
// All IO fucntions (read*() and [e]print*()) should write to OutputWriter
// instead of this.
var OutputBuffer *bufio.Writer

// OutputWriter Holds an io.Writer.  It must be initialized by SetOutput()
var OutputWriter io.Writer

// SetInteractive SetInteractive Set IO functions for interactive input/output.
func SetInteractive(w io.Writer, r io.Reader) {
	SetUnbefferedInput(r)
	OutputBuffer = nil
	OutputWriter = w
}

// SetOutput Setup OutputBuffer and OutputWriter.
func SetOutput(w io.Writer) {
	OutputBuffer = bufio.NewWriter(w)
	OutputWriter = OutputBuffer
}

// Flush Flushes OutputBuffer
func Flush() {
	if OutputBuffer != nil {
		OutputBuffer.Flush()
	}
}

// IsSpace Returns true if c is a white space
func IsSpace(c byte) bool {
	switch c {
	case '\t', '\n', '\v', '\f', '\r', ' ':
		return true
	}
	return false
}

// SetInput Setup nextToken with input buffer.
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

// SetUnbefferedInput Setup nextToken without input buffer.
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

// =============================================================================
func init() {
	// for non-interactive
	// SetInput(os.Stdin)
	// SetOutput(os.Stdout)

	// Enable below when interactive.  Its ok to leave above intact.
	SetInteractive(os.Stdout, os.Stdin)
}

func main() {
	defer Flush()

	N := readi()
	K := readi()
	A := make([][]int, 2)
	A[0] = make([]int, N+2)
	A[1] = make([]int, N+2)
	for i := 1; i <= N; i++ {
		A[0][i] = readi()
	}
	from, to, index, sv := 0, 1, 0, 0
	var f bool
Label:
	for zz := 0; zz < K; zz++ {
		for i := 1; i <= N; i++ {
			index = i - A[from][i]
			if index < 0 {
				index = 0
			}
			A[to][index]++
			index = i + A[from][i] + 1
			if index > N {
				index = N + 1
			}
			A[to][index]--
		}
		// for i := 0; i <= N+1; i++ {
		// 	printf("A[%d] = %d\n", i, A[to][i])
		// }
		// println("=====================")
		for i := 0; i <= N; i++ {
			A[to][i+1] += A[to][i]
			// printf("A[%d] = %d\n", i, A[to][i])
		}
		// printf("A[%d] = %d\n", (N + 1), A[to][N+1])
		f = true
		for i := 0; i <= N; i++ {
			if A[to][i] != N {
				f = false
				break
			}
		}
		if f {
			sv = to
			break Label
		}
		for i := 0; i <= N+1; i++ {
			A[from][i] = 0
		}
		sv = to
		to = from
		from = sv
	}
	for i := 1; i <= N; i++ {
		printf("%d ", A[sv][i])
	}
	println("")
}

// =============================================================================
