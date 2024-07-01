package main

import (
	"bufio"
	"fmt"
	"io"
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

// O(n log n)
func solve(k int, a []int) (ans int) {
	sort.Slice(a, func(i, j int) bool { return Abs(a[i]) < Abs(a[j]) })
	ans = 1
	if isNegative(k, a) {
		for i := 0; i < k; i++ {
			ans *= Abs(a[i])
			ans %= mod
		}
		return mod - ans
	}

	pNums, nNums := []int{}, []int{}
	for i := len(a) - 1; i >= 0; i-- {
		if a[i] >= 0 {
			pNums = append(pNums, a[i])
		} else {
			nNums = append(nNums, a[i])
		}
	}

	if k%2 == 1 {
		ans *= pNums[0]
		ans %= mod
		pNums = pNums[1:]
		k--
	}

	nums := []int{}
	for i := 1; i < len(pNums); i += 2 {
		nums = append(nums, pNums[i-1]*pNums[i]%mod)
	}
	for i := 1; i < len(nNums); i += 2 {
		nums = append(nums, nNums[i-1]*nNums[i]%mod)
	}
	sort.Slice(nums, func(i, j int) bool { return nums[i] > nums[j] })
	for i := 0; 2*i < k; i++ {
		ans *= nums[i]
		ans %= mod
	}
	return ans
}

func isNegative(k int, a []int) bool {
	count := make(map[bool]int, 2)
	for _, v := range a {
		count[v >= 0]++
	}
	return (len(a) == k || count[true] == 0) && k%2 == 1
}

const mod = 1e9 + 7

// O(nk): TLE

// Abs retuns absolutevalue of input
func Abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

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
