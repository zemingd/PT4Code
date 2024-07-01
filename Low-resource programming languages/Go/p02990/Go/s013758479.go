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

func main() {
	defer stdout.Flush()
	N := readInt64()
	K := readInt64() // blue
	J := N - K       // red

	if K == 1 {
		println(J + 1)
		return
	}

	_, _, comb := newFactorial(N+10, 1000000007)
	x := J + 1
	y := K - 1
	//eprintf("K(blue):%d J(red):%d\n", K, J)
	//eprintf("x:%d y:%d\n", x, y)
	for i := int64(1); i <= K; i++ {
		// K をi 個に分けて、 Jの間のi個隙間に入れる
		if x < i {
			println(0)
			continue
		}
		//eprintf("i:%d\n", i)
		v1 := comb(x, i) // 隙間のパターン数
		v2 := comb(y, i-1)
		println(v1 * v2 % 1000000007)
	}
}

// -----------------------------------------------------------------------------

// newFactorial(n, p int64) returns 3 functions.
// 1. factorial(x int64) int64: returns factorial x modulo p (0 <= x <= n)
// 2. invFactorial(x int64) int64: returns inverse of factorial x modulo p (0 <= x <= n)
// 3. combination(x, r int64 int64: returns xCr modulo p (1 <= r <= x <= n)
func newFactorial(n, p int64) (factorial func(int64) int64, invFactorial func(int64) int64, combination func(int64, int64) int64) {
	if n < 1 {
		panic("newFactorial: n must be more than 0")
	}

	fact := make([]int64, n+1)
	fact[1] = 1
	for i := int64(2); i <= n; i++ {
		fact[i] = fact[i-1] * i % p
	}

	ifact := make([]int64, n+1)
	ifact[n] = expMod(fact[n], p-2, p)
	for i := int64(n - 1); i >= 0; i-- {
		ifact[i] = ifact[i+1] * (i + 1) % p
	}

	factorial = func(i int64) int64 {
		return fact[i]
	}
	invFactorial = func(i int64) int64 {
		return ifact[i]
	}
	combination = func(n, r int64) int64 {
		return fact[n] * ifact[n-r] % p * ifact[r] % p
	}
	return
}

func expMod(n, e, m int64) int64 {
	square := func(a int64) int64 {
		return a * a
	}
	if e == 0 {
		return 1
	}
	if e&1 == 1 {
		return n * expMod(n, e-1, m) % m
	} else {
		return square(expMod(n, e/2, m)) % m
	}
}
