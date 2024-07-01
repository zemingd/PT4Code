package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type Row []string

type Data []Row

func main() {
	nextReader = newScanner()
	N := nextInt64()
	ans := int64(0)
	for n := int64(1); n <= N; n++ {
		if n%3 != 0 && n%5 != 0 {
			ans += n
		}
	}
	fmt.Print(ans)
}

var nextReader func() string

func newScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	// r.Split(bufio.ScanLines)
	return func() string {
		r.Scan()
		return r.Text()
	}
}

func CustomScan(data []byte, atEOF bool) (advance int, token []byte, err error) {
	for i := 0; i < len(data); i++ {
		if data[i] == ' ' {
			return i + 1, data[:i], nil
		}
	}
	fmt.Println(data)
	return 0, data, bufio.ErrFinalToken
}

func nextStrings() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	// r.Split(bufio.ScanWords)
	r.Split(CustomScan)
	return func() string {
		r.Scan()
		return r.Text()
	}
}

func nextString() string {
	return nextReader()
}
func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
	return v
}
func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}
func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}
func nextInt64s(n int) []int64 {
	r := make([]int64, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt64()
	}
	return r
}
func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(nextReader(), 64)
	return f
}

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}
