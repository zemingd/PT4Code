package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
)

const (
	BUFSIZE   = 10000000
	MOD       = 1000000007
	INF_INT   = math.MaxInt32
	INF_INT64 = math.MaxInt64
)

var rdr *bufio.Reader
var mI, pI int

func main() {
	rdr = bufio.NewReaderSize(os.Stdin, BUFSIZE)
	solve()
}

func solve() {
	N, K := readint2()
	A := readIntSlice(N)
	plus := make([]int, 0)
	minus := make([]int, 0)
	for _, v := range A {
		if v >= 0 {
			plus = append(plus, v)
		} else {
			minus = append(minus, v)
		}
	}
	sort.Slice(plus, func(i, j int) bool {
		return plus[i] > plus[j]
	})
	sort.Slice(minus, func(i, j int) bool {
		return minus[i] < minus[j]
	})

	if N == K {
		ans := 1
		for _, v := range A {
			ans = mod(v*ans, MOD)
		}
		fmt.Println(ans)
		os.Exit(0)
	}

	if K%2 == 1 && len(minus) == N {
		ans := 1
		for i := 0; i < K; i++ {
			ans = mod(ans*minus[N-1-i], MOD)
		}
		fmt.Println(ans)
		os.Exit(0)
	}

	// ans := 1
	l, r := 0, N-1
	ans := 1
	sort.Slice(A, func(i, j int) bool {
		return A[i] > A[j]
	})
	if K%2 == 1 {
		ans = mod(ans*A[0], MOD)
		l += 1
		K -= 1
	}

	for i := 0; i < K/2; i++ {
		lv := A[l] * A[l+1]
		rv := A[r] * A[r-1]
		if rv > lv {
			ans = mod(mod(rv, MOD)*ans, MOD)
			r -= 2
		} else {
			ans = mod(mod(lv, MOD)*ans, MOD)
			l += 2
		}
	}
	fmt.Println(ans)
}

func readline() string {
	buf := make([]byte, 0, 16)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			fmt.Println(e.Error())
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func readIntSlice(size int) []int {
	slice := make([]int, size)
	lines := strings.Split(readline(), " ")
	for i, v := range lines {
		slice[i] = s2i(v)
	}
	return slice
}

func readInt64Slice(size int) []int64 {
	slice := make([]int64, size)
	lines := strings.Split(readline(), " ")
	for i, v := range lines {
		slice[i] = s2i64(v)
	}
	return slice
}

func readint() int {
	return s2i(readline())
}

func readint2() (int, int) {
	lines := strings.Split(readline(), " ")
	return s2i(lines[0]), s2i(lines[1])
}

func readint64() int64 {
	return s2i64(readline())
}

// For int64
func b2i64(b bool) int64 {
	if b {
		return 1
	}
	return 0
}

func abs64(v int64) int64 {
	if v < 0 {
		return -v
	}
	return v
}

func min64(values ...int64) int64 {
	ret := int64(INF_INT64)
	for _, v := range values {
		if ret > v {
			ret = v
		}
	}
	return ret
}

func max64(values ...int64) int64 {
	ret := -int64(INF_INT64)
	for _, v := range values {
		if ret < v {
			ret = v
		}
	}
	return ret
}

func s2i64(s string) int64 {
	v, ok := strconv.ParseInt(s, 10, 64)
	if ok != nil {
		panic("Faild : " + s + " can't convert to int64")
	}
	return v
}

// For int
func b2i(b bool) int {
	if b {
		return 1
	}
	return 0
}

func abs(v int) int {
	if v < 0 {
		return -v
	}
	return v
}

func mod(x, y int) int {
	m := x % y
	if m < 0 {
		return m + y
	}
	return m
}

func pow(x, y int) int {
	return int(math.Pow(float64(x), float64(y)))
}

func min(values ...int) int {
	ret := INF_INT
	for _, v := range values {
		if ret > v {
			ret = v
		}
	}
	return ret
}

func max(values ...int) int {
	ret := -INF_INT
	for _, v := range values {
		if ret < v {
			ret = v
		}
	}
	return ret
}

func s2i(s string) int {
	v, ok := strconv.Atoi(s)
	if ok != nil {
		panic("Faild : " + s + " can't convert to int")
	}
	return v
}

func lcm(v1, v2 int) int {
	if v1 > v2 {
		v1, v2 = v2, v1
	}
	for v1 != 0 {
		v1, v2 = v2%v1, v1
	}
	return v2
}

func gcd(v1, v2 int) int {
	return v1 * v2 / lcm(v1, v2)
}

func bit(size int) [][]bool {
	bSize := int(math.Pow(2, float64(size)))
	b := make([][]bool, bSize)
	for i := 0; i < bSize; i++ {
		b[i] = make([]bool, size)
		for j := 0; j < size; j++ {
			if i>>j&1 == 1 {
				b[i][j] = true
			} else {
				b[i][j] = false
			}
		}
	}
	return b
}

/* ------------------------------------------------ */
/* Data stracture                                   */
/* ------------------------------------------------ */
type IntHeap []int

func (h *IntHeap) Push(x interface{}) {
	*h = append(*h, x.(int))
}

func (h *IntHeap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

func (h IntHeap) Len() int           { return len(h) }
func (h IntHeap) Less(i, j int) bool { return h[i] < h[j] }
func (h IntHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }
