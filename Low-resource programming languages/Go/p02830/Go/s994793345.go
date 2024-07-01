package main

import (
	"bufio"
	"container/list"
	"fmt"
	"math"
	"os"
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

func main() {
	rdr = bufio.NewReaderSize(os.Stdin, BUFSIZE)
	solve()
}

func solve() {
	N := readint()
	var S, T string
	fmt.Scanf("%s %s", &S, &T)
	row := strings.Split(readline(), " ")
	S = row[0]
	T = row[1]
	ans := list.New()

	for i := 0; i < N; i++ {
		ans.PushBack(string(S[i]))
		ans.PushBack(string(T[i]))
	}

	for e := ans.Front(); e != nil; e = e.Next() {
		fmt.Print(e.Value)
	}
	fmt.Println()
}

func readline() string {
	buf := make([]byte, 0, BUFSIZE)
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
