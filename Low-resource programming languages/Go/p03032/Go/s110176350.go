package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

var (
	readString func() string
	readBytes  func() []byte
)

func init() {
	readString, readBytes = newReadString(os.Stdin)
}

func newReadString(ior io.Reader) (func() string, func() []byte) {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	f1 := func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
	f2 := func() []byte {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Bytes()
	}
	return f1, f2
}

func readInt() int {
	return int(readInt64())
}

func readInt64() int64 {
	i, err := strconv.ParseInt(readString(), 10, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readFloat64() float64 {
	f, err := strconv.ParseFloat(readString(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func maxInt64(a, b int64) int64 {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
}

// sort ------------------------------------------------------------

type xxx struct {
	x int
}

type sortArray []xxx

func (s sortArray) Len() int           { return len(s) }
func (s sortArray) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s sortArray) Less(i, j int) bool { return s[i].x < s[j].x }

// -----------------------------------------------------------------

type int64arr []int64

func (s int64arr) Len() int           { return len(s) }
func (s int64arr) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s int64arr) Less(i, j int) bool { return s[i] < s[j] }

func calc(l, r, e int64) int64 {
	var a []int64
	if v, ok := m1[l][r]; ok {
		a = v
	} else {
		a = make([]int64, 0, n)
		a = append(a, V[:l]...)
		a = append(a, V[n-r:]...)
		sort.Sort(int64arr(a))
		m1[l] = map[int64][]int64{l: a}
	}
	var ans int64
	for _, v := range a[e:] {
		ans += v
	}
	return ans
}

var V []int64
var m1 map[int64]map[int64][]int64
var n int64

func main() {
	m1 = make(map[int64]map[int64][]int64)
	n = readInt64()
	k := readInt64()
	V = make([]int64, n)
	for i := range V {
		V[i] = readInt64()
	}

	var kk, i, j, l, r, ans int64
	for kk = 0; kk <= k; kk++ {
		for i = kk; i > 0; i-- {
			if i > n {
				continue
			}
			j = kk - i
			if j > i {
				break
			}
			for l = 0; l <= i; l++ {
				r = i - l
				ans = maxInt64(ans, calc(l, r, j))
			}
		}
	}
	fmt.Println(ans)
}

/*
6 10
-10 8 2 1 2 6
*/
