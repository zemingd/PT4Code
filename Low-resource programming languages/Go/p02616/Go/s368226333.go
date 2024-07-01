package main

import (
	"bufio"
	"fmt"
	"io"
	"math/big"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	io := NewIo(os.Stdin, os.Stdout)
	defer io.Flush()
	n, k := io.NextInt(), io.NextInt()
	a := io.NextInts(n)
	ans := solve(k, a)
	io.Println(ans)
}

func solve(k int, a []int) (ans *big.Int) {
	sort.Slice(a, func(i, j int) bool { return Abs(a[i]) < Abs(a[j]) })
	ans = big.NewInt(1)
	if !canBePositive(k, a) {
		for i := 0; i < k; i++ {
			ans.Mul(ans, big.NewInt(int64(a[i])))
		}
		return ans.Mod(ans, big.NewInt(mod))
	}

	var prevPos, prevNeg int
	var nextPos, nextNeg int
	for i := 0; i < k; i++ {
		ans.Mul(ans, big.NewInt(int64(a[len(a)-1-i])))
		if a[len(a)-1-i] >= 0 {
			prevPos = a[len(a)-1-i]
		} else {
			prevNeg = a[len(a)-1-i]
		}
	}
	if ans.Cmp(big.NewInt(0)) >= 0 {
		return ans.Mod(ans, big.NewInt(mod))
	}

	for i := k; i < len(a); i++ {
		if a[i] >= 0 {
			nextPos = a[i]
			break
		}
	}
	for i := k; i < len(a); i++ {
		if a[i] < 0 {
			nextNeg = a[i]
			break
		}
	}
	ans1, ans2 := new(big.Int).Set(ans), new(big.Int).Set(ans)
	ans1.Div(ans1, big.NewInt(int64(prevNeg)))
	ans1.Mul(ans1, big.NewInt(int64(nextPos)))
	ans2.Div(ans2, big.NewInt(int64(prevPos)))
	ans2.Mul(ans2, big.NewInt(int64(nextNeg)))
	if ans1.Cmp(ans2) == -1 {
		return ans2.Mod(ans2, big.NewInt(mod))
	}
	return ans1.Mod(ans1, big.NewInt(mod))
}

func canBePositive(k int, a []int) bool {
	count := make(map[int]int, 2)
	for _, v := range a {
		if v >= 0 {
			count[1]++
		} else {
			count[-1]++
		}
	}
	return count[1] > 0 || k%2 == 0
}

const mod = 1e9 + 7

// O(nk): TLE

// Io is I/O object
type Io struct {
	reader    *bufio.Reader
	writer    *bufio.Writer
	tokens    []string
	nextToken int
}

// NewIo returns a new Io instance
func NewIo(r io.Reader, w io.Writer) *Io {
	return &Io{
		reader: bufio.NewReader(r),
		writer: bufio.NewWriter(w),
	}
}

// Flush flushes writer
func (io *Io) Flush() {
	err := io.writer.Flush()
	if err != nil {
		panic(err)
	}
}

// NextLine scans a line from stdin
func (io *Io) NextLine() string {
	var buffer []byte
	for {
		line, isPrefix, err := io.reader.ReadLine()
		if err != nil {
			panic(err)
		}
		buffer = append(buffer, line...)
		if !isPrefix {
			break
		}
	}
	return string(buffer)
}

// Next return a word from stdin
func (io *Io) Next() string {
	for io.nextToken >= len(io.tokens) {
		line := io.NextLine()
		io.tokens = strings.Fields(line)
		io.nextToken = 0
	}
	r := io.tokens[io.nextToken]
	io.nextToken++
	return r
}

// NextInt returns an integer from stdin
func (io *Io) NextInt() int {
	i, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return i
}

// NextInts returns n integers from stdin
func (io *Io) NextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = io.NextInt()
	}
	return ret
}

// Println is a wrapper of fmt.Fprintln
func (io *Io) Println(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

// Abs retuns absolutevalue of input
func Abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
