package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

func dummy() {
	math.Abs(1.0)
}

/************I/O***********/

var (
	// ReadString returns a WORD string.
	readString func() string
	stdout     *bufio.Writer
)

func init() {
	readString = newReadString(os.Stdin)
	stdout = bufio.NewWriter(os.Stdout)
}

func newReadString(ior io.Reader) func() string {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	// Split sets the split function for the Scanner. The default split function is ScanLines.
	// Split panics if it is called after scanning has started.
	r.Split(bufio.ScanWords)

	return func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
}

// ReadInt returns an integer.
func readInt() int {
	return int(readInt64())
}

func readInt64() int64 {
	i, err := strconv.ParseInt(readString(), 0, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

// ReadIntSlice returns an integer slice that has n integers.
func readIntSlice(n int) []int {
	b := make([]int, n)
	for i := 0; i < n; i++ {
		b[i] = readInt()
	}
	return b
}

// ReadFloat64 returns an float64.
func readFloat64() float64 {
	f, err := strconv.ParseFloat(readString(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
}

// ReadFloatSlice returns an float64 slice that has n float64.
func readFloat64Slice(n int) []float64 {
	b := make([]float64, n)
	for i := 0; i < n; i++ {
		b[i] = readFloat64()
	}
	return b
}

// ReadRuneSlice returns a rune slice.
func readRuneSlice() []rune {
	return []rune(readString())
}

/*********math********/
func mod(val int, m int) int {
	res := val % m
	if res < 0 {
		res += m
	}
	return res
}

func absInt(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
func minInt(val ...int) int {
	res := val[0]
	for i := 1; i < len(val); i++ {
		if res > val[i] {
			res = val[i]
		}
	}
	return res
}
func maxInt(val ...int) int {
	res := val[0]
	for i := 1; i < len(val); i++ {
		if res > val[i] {
			res = val[i]
		}
	}
	return res
}

const MOD = 1000000007

func main() {
	n := readInt()
	k := readInt()
	h := readIntSlice(n)
	dp := make([]int64, n)
	dp[0] = 0
	for i := 0; i < n-1; i++ {
		mincost := int64(10000)
		for j := 1; j <= minInt(k, i+1); j++ {
			cost := dp[i-j+1] + int64(absInt(h[i+1]-h[i-j+1]))
			if mincost > cost {
				mincost = cost
			}
		}
		dp[i+1] = mincost
	}
	fmt.Println(dp[n-1])
}
