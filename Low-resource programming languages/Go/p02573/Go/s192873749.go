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
	var uf UnionFind // ユニオンファインド
	uf.UfInit(N)
	M := readi()
	var a, b int
	for i := 0; i < M; i++ {
		a = readi() - 1
		b = readi() - 1
		uf.UfConnect(a, b)
	}
	ans := 0
	for i := 0; i < N; i++ {
		ans = max(ans, uf.UfMemberCnt(i))
	}
	println(ans)
}

// UnionFind ユニオンファインド　グループを管理する
type UnionFind struct {
	gcnt int   // グループ数
	par  []int // [子番号] = 親番号(親の場合、メンバ数のマイナス値)
	// [1]=3 [2]=-1 [3]=-2  なら　１　と　３　は　同じグループ
}

// UfInit ユニオンファインドの初期化
func (UF *UnionFind) UfInit(n int) {
	UF.gcnt = n
	UF.par = make([]int, n)
	for i := 0; i < n; i++ {
		UF.par[i] = -1 // 全部が親で、メンバ数を　１　とする
	}
}

// UfRoot 親の番号を返す（この中で親に直接つなぎ変えている）
func (UF *UnionFind) UfRoot(x int) int {
	if UF.par[x] < 0 {
		return x // 親の場合はマイナスが入っている
	} else {
		UF.par[x] = UF.UfRoot(UF.par[x])
		return UF.par[x]
	}
}

// UfSame 同じグループなら true を返す
func (UF *UnionFind) UfSame(x, y int) bool {
	return UF.UfRoot(x) == UF.UfRoot(y)
}

// UfGroupCnt グループ数を返す
func (UF *UnionFind) UfGroupCnt() int {
	return UF.gcnt
}

// UfSize メンバ数を返す
func (UF *UnionFind) UfMemberCnt(x int) int {
	return -UF.par[UF.UfRoot(x)]
}

// UfMember メンバのリストを返す
func (UF *UnionFind) UfMember(x int) []int {
	ans := []int{}
	root := UF.UfRoot(x)
	for i := 0; i < len(UF.par); i++ {
		if UF.UfRoot(i) == root {
			ans = append(ans, i)
		}
	}
	return ans
}

// UfConnect 同じ親につなげる
func (UF *UnionFind) UfConnect(x, y int) {
	xP := UF.UfRoot(x) // 親を取得する
	yP := UF.UfRoot(y) // 親を取得する
	if xP == yP {
		return // 同じなので処理しない
	}
	if UF.UfMemberCnt(xP) > UF.UfMemberCnt(yP) { // メンバ数が多い方にくっつける
		UF.par[xP] += UF.par[yP] //   メンバ数を更新する
		UF.par[yP] = xP          //   親番号を設定する
	} else {
		UF.par[yP] += UF.par[xP]
		UF.par[xP] = yP
	}
	UF.gcnt--
}

// UfDump ダンプ
func (UF *UnionFind) UfDump() {
	for i := 0; i < len(UF.par); i++ {
		printf("par[%d] = %d\n", i, UF.par[i])
	}
}

// =============================================================================
