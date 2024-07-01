package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

/* ======IO====== */
var (
	InputString func() string
)

func init() {
	InputString = newInputString(os.Stdin)
}

func newInputString(ior io.Reader) func() string {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	return func() string {
		if !r.Scan() {
			panic("error scan")
		}
		return r.Text()
	}
}

func InputInt() int {
	return int(readInt64())
}
func InputInt2() (int, int) {
	return int(readInt64()), int(readInt64())
}
func InputInt3() (int, int, int) {
	return int(readInt64()), int(readInt64()), int(readInt64())
}
func InputInt4() (int, int, int, int) {
	return int(readInt64()), int(readInt64()), int(readInt64()), int(readInt64())
}

func readInt64() int64 {
	i, err := strconv.ParseInt(InputString(), 0, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func InputIntSlice(n int) []int {
	b := make([]int, n)
	for i := 0; i < n; i++ {
		b[i] = InputInt()
	}
	return b
}

func InputFloat64() float64 {
	return float64(inputFloat64())
}

func inputFloat64() float64 {
	f, err := strconv.ParseFloat(InputString(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
}

func InputFloat64Slice(n int) []float64 {
	b := make([]float64, n)
	for i := 0; i < n; i++ {
		b[i] = InputFloat64()
	}
	return b
}

func InputRuneSlice() []rune {
	return []rune(InputString())
}

/* ======Math====== */
func Max(integers ...int) int {
	m := integers[0]
	for i, integer := range integers {
		if i == 0 {
			continue
		}
		if m < integer {
			m = integer
		}
	}
	return m
}

func Min(integers ...int) int {
	m := integers[0]
	for i, integer := range integers {
		if i == 0 {
			continue
		}
		if m > integer {
			m = integer
		}
	}
	return m
}

func Sum(integers ...int) int {
	s := 0

	for _, i := range integers {
		s += i
	}

	return s
}

func AbsInt(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func Round(f float64) float64 {
	return math.Floor(f + .5)
}

/* ======Heap====== */

type IntHeap []int

func (h IntHeap) Len() int { return len(h) }

// default minimum heap
func (h IntHeap) Less(i, j int) bool  { return h[i] < h[j] }
func (h IntHeap) Swap(i, j int)       { h[i], h[j] = h[j], h[i] }
func (h *IntHeap) Push(x interface{}) { *h = append(*h, x.(int)) }
func (h *IntHeap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

/* ======Util====== */

func Strtoi(s string) int {
	if i, err := strconv.Atoi(s); err != nil {
		panic("strtoi error")
	} else {
		return i
	}
}

//
//type sortable [][]int
//
//func (s sortable) Len() int { return len(s) }
//
//func (s sortable) Less(i, j int) bool { return s[i][0] < s[j][0] }
//
//func (s sortable) Swap(i, j int) { s[i], s[j] = s[j], s[i] }

func main() {
	N := InputInt()
	Bs := InputIntSlice(N - 1)
	ans := make([]int, N)
	ans[0] = Bs[0]
	for i := 1; i < N-2; i++ {
		ans[i] = Min(Bs[i], Bs[i+1])
	}
	ans[N-1] = Bs[N-2]
	fmt.Print(Sum(ans...))
}
