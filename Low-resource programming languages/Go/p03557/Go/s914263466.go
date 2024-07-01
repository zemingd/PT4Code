package main

import (
	"bufio"
	"bytes"
	"fmt"
	"io"
	"math"
	"os"
	"sort"
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

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
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

// INF 大きな数
const INF int = 1000_000_010

// MOD 余りの計算用
const MOD int = 1000_000_007

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
	A := make([]int, N)
	B := make([]int, N)
	C := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = readi()
	}
	for i := 0; i < N; i++ {
		B[i] = readi()
	}
	for i := 0; i < N; i++ {
		C[i] = readi()
	}
	sort.Slice(A, func(i, j int) bool { return A[i] < A[j] })
	sort.Slice(C, func(i, j int) bool { return C[i] < C[j] })
	ans, index1, index2 := 0, 0, 0
	for i := 0; i < N; i++ {
		index1 = binarySearchLeftMax(A, false, B[i])
		if index1 < 0 {
			continue
		}
		index2 = binarySearchRightMin(C, false, B[i])
		if index2 >= N {
			continue
		}
		ans += (index1 + 1) * (N - index2)
		// printf("B[%d] = %d  index1 = %d  index2 = %d  --> ans = %d\n",
		// 	i, B[i], index1, index2, ans)
	}
	println(ans)
}

// 配列のバイナリーサーチ　１
func isRightMin(a []int, f bool, index int, key int) bool {
	if f && a[index] >= key {
		return true // 以上
	} else if !f && a[index] > key {
		return true // より大きい
	} else {
		return false
	}
}

// 配列 a の中で key 以上（f=true)または、より大きく（f=false)、一番小さい値を返す（なければ a.length を返す）
func binarySearchRightMin(a []int, f bool, key int) int {
	ng := -1
	ok := len(a)

	for abs(ok-ng) > 1 {
		mid := (ok + ng) / 2
		if isRightMin(a, f, mid, key) {
			ok = mid // 下半分を対象とする
		} else {
			ng = mid // 上半分を対象とする
		}
	}
	return ok // ←　ここで返すのは　isOK() が true の時にセットする方（ok / ng)
}

// 配列のバイナリーサーチ　２
func isLeftMax(a []int, f bool, index int, key int) bool {
	if f && a[index] <= key {
		return true // 以下
	} else if !f && a[index] < key {
		return true // より小さい
	} else {
		return false
	}
}

// 配列 a の中で key 以下（f=true)または、より小さい（f=false)、一番大きい値を返す（なければ -1 を返す）
func binarySearchLeftMax(a []int, f bool, key int) int {
	ng := -1
	ok := len(a)

	for abs(ok-ng) > 1 {
		mid := (ok + ng) / 2
		if isLeftMax(a, f, mid, key) {
			ng = mid // 上半分を対象とする
		} else {
			ok = mid // 下半分を対象とする
		}
	}
	return ng // ←　ここで返すのは　isOK() が true の時にセットする方（ok / ng)
}

// =============================================================================
