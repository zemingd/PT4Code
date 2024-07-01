package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

var (
	readString func() string
	readBytes  func() []byte
	stdout     *bufio.Writer
)

func init() {
	readString, readBytes = newReadString(os.Stdin)
	stdout = bufio.NewWriter(os.Stdout)
}

func newReadString(ior io.Reader) (func() string, func() []byte) {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), math.MaxInt32)
	r.Split(bufio.ScanWords)

	f1 := func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
	f2 := func() []byte {
		return []byte(f1())
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

func printf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(stdout, f, args...)
}

func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(stdout, args...)
}

func eprintln(args ...interface{}) (int, error) {
	return fmt.Fprintln(os.Stderr, args...)
}

func eprintf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(os.Stderr, f, args...)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func min64(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func max64(a, b int64) int64 {
	if a < b {
		return b
	}
	return a
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func abs64(a int64) int64 {
	if a < 0 {
		return -a
	}
	return a
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func gcd64(a, b int64) int64 {
	if b == 0 {
		return a
	}
	return gcd64(b, a%b)
}

// readString() string
// readInt() int
// readInt64() int64
// readFloat64() float64

// -----------------------------------------------------------------------------

func fact(n int) int {
	if n == 1 {
		return 1
	}
	return n * fact(n-1)
}

func main() {
	defer stdout.Flush()
	N := readInt()
	x := make([]float64, N)
	y := make([]float64, N)
	for i := range x {
		x[i] = readFloat64()
		y[i] = readFloat64()
	}

	a := make([]int, N)
	for i := range a {
		a[i] = i
	}
	count := float64(fact(N))
	var ans float64
	for v := range next_permutation(a) {
		var sum float64
		for i := 1; i < N; i++ {
			j := v[i-1]
			k := v[i]
			xd := x[j] - x[k]
			yd := y[j] - y[k]
			sum += math.Sqrt(xd*xd + yd*yd)
		}
		ans += sum / count
	}
	println(ans)

}

// -----------------------------------------------------------------------------

// Heap's algorithm
func DoPermutation(a []int, fn func([]int)) {
	n := len(a)
	c := make([]int, n)
	i := 0
	swap := func(i, j int) {
		a[i], a[j] = a[j], a[i]
	}

	fn(a)

	for i < n {
		if c[i] < i {
			if i%2 == 0 {
				swap(0, i)
			} else {
				swap(c[i], i)
			}
			fn(a)
			c[i]++
			i = 0
		} else {
			c[i] = 0
			i++
		}
	}
}

func DoPermutation0n(n int, fn func([]int)) {
	a := make([]int, n)
	for i := range a {
		a[i] = i
	}
	DoPermutation(a, fn)
}

func next_permutation(a []int) chan []int {
	ch := make(chan []int)
	go func() {
		DoPermutation(a, func(x []int) {
			ch <- x
		})
		close(ch)
	}()
	return ch
}
