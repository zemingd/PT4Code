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
	pNums, nNums := []int{}, []int{}
	for i := len(a) - 1; i >= 0; i-- {
		if a[i] >= 0 {
			pNums = append(pNums, a[i])
		} else {
			nNums = append(nNums, a[i])
		}
	}

	ok := false
	if len(pNums) > 0 {
		if len(a) == k {
			ok = len(nNums)%2 == 0
		} else {
			ok = true
		}
	} else {
		ok = k%2 == 0
	}

	if !ok {
		ans = 1
		for i := 0; i < k; i++ {
			ans = ModMul(ans, (a[i]+mod)%mod, mod)
		}
		return ans
	}

	ans = 1
	if k%2 == 1 {
		ans = ModMul(ans, pNums[0], mod)
		pNums = pNums[1:]
	}
	nums := []int{}
	for len(pNums) >= 2 {
		nums = append(nums, pNums[0]*pNums[1])
		pNums = pNums[2:]
	}
	for len(nNums) >= 2 {
		nums = append(nums, nNums[0]*nNums[1])
		nNums = nNums[2:]
	}
	sort.Slice(nums, func(i, j int) bool { return nums[i] > nums[j] })
	for i := 0; i < k/2; i++ {
		ans = ModMul(ans, nums[i], mod)
	}
	return ans
}

const mod = 1e9 + 7

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

// ModMul returns a*b with mod
func ModMul(a, b, mod int) int {
	a, b = a%mod, b%mod
	if b == 0 {
		return 0
	}
	if a*b/b == a {
		return a * b % mod
	}
	panic("overflow")
}
