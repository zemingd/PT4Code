package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"
	"sort"
	"strconv"
)

func main() {
	x, y := readInt(), readInt()
	a, b, c := readInt(), readInt(), readInt()
	p, q, r := make([]int, a), make([]int, b), make([]int, c)
	for i := range p {
		p[i] = readInt()
	}
	for i := range q {
		q[i] = readInt()
	}
	for i := range r {
		r[i] = readInt()
	}
	sort.Sort(sort.Reverse(sort.IntSlice(p)))
	sort.Sort(sort.Reverse(sort.IntSlice(q)))
	sort.Sort(sort.Reverse(sort.IntSlice(r)))

	arr := make([]int, 0, x+y)
	for i := 0; i < x; i++ {
		arr = append(arr, p[i])
	}
	for i := 0; i < y; i++ {
		arr = append(arr, q[i])
	}
	arr = append(arr, r...)
	sort.Sort(sort.Reverse(sort.IntSlice(arr)))

	ans := 0
	for i := range arr[:x+y] {
		ans += arr[i]
	}
	fmt.Println(ans)
}

func main0() {
	x, y := readInt(), readInt()
	a, b, c := readInt(), readInt(), readInt()
	p, q, r := make([]int, a), make([]int, b), make([]int, c)
	for i := range p {
		p[i] = readInt()
	}
	for i := range q {
		q[i] = readInt()
	}
	for i := range r {
		r[i] = readInt()
	}
	sort.Sort(sort.Reverse(sort.IntSlice(p)))
	sort.Sort(sort.Reverse(sort.IntSlice(q)))
	sort.Sort(sort.Reverse(sort.IntSlice(r)))

	arr := make([]int, 0, x+y)
	for i := 0; i < x; i++ {
		arr = append(arr, p[i])
	}
	for i := 0; i < y; i++ {
		arr = append(arr, q[i])
	}

	// fmt.Println(p)
	// fmt.Println(q)
	// fmt.Println(r)

	sort.Ints(arr)
	for i := 0; i < min(len(arr)-1, c); i++ {
		if r[i] < arr[i] {
			break
		}
		arr[i] = r[i]
	}

	ans := 0
	for i := range arr {
		ans += arr[i]
	}
	fmt.Println(ans)
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

var (
	readString func() string
	readBytes  func() []byte
)

func init() {
	log.SetFlags(log.Lshortfile)
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

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func sum(a []int) int {
	var ret int
	for i := range a {
		ret += a[i]
	}
	return ret
}

func sumFloat64(a []float64) float64 {
	var ret float64
	for i := range a {
		ret += a[i]
	}
	return ret
}

func gcd(m, n int) int {
	for m%n != 0 {
		m, n = n, m%n
	}
	return n
}

func lcm(m, n int) int {
	return m / gcd(m, n) * n
}
