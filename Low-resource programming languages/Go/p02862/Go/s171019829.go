package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var mod int = 1e9 + 7
var maxMove int = 1e6
var fac = make([]int, maxMove)
var ifac = make([]int, maxMove)

func powMod(x, n int) int {
	if n == 0 {
		return 1
	}
	if n%2 == 0 {
		t := powMod(x, n>>1)
		return t * t % mod
	}
	return x * powMod(x, n-1) % mod
}

func preprocess() {
	fac[0] = 1
	for i := 1; i < maxMove; i++ {
		fac[i] = fac[i-1] * i % mod
	}

	for i := range ifac {
		ifac[i] = powMod(fac[i], mod-2)
	}
}

func main() {
	x, y := readInt(), readInt()

	preprocess()

	if (x+y)%3 != 0 || y > 2*x || 2*y < x {
		fmt.Println(0)
		return
	}

	totalMove := (x + y) / 3
	diff := abs(x - y)
	move := (totalMove - diff) / 2

	fmt.Println(fac[totalMove] * ifac[move] % mod * ifac[totalMove-move] % mod)
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
