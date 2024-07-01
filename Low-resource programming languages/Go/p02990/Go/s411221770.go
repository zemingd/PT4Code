package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	mod := int64(math.Pow10(9) + 7)
	N := nextInt64()
	K := nextInt64()
	M := N - K

	for i := int64(1); i <= K; i++ {
		fmt.Println(combi(M+1, i, mod) * combi(K-1, i-1, mod) % mod)
	}
}

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)

	return i
}

var combiMemo = map[int64]map[int64]int64{}

func combi(n, r, mod int64) int64 {
	if n < r {
		return 0
	}

	m, ok1 := combiMemo[n]

	if !ok1 {
		m = map[int64]int64{}
		combiMemo[n] = m
	}

	var c int64 = 1

	for i := n; i >= (n - r + 1); i-- {
		c = mulm(c, i, mod)
	}
	for i := r; i >= 1; i-- {
		c = divm(c, i, mod)
	}
	combiMemo[n][r] = c
	return c % mod
}

func addm(a, b, mod int64) int64 {
	return (a + b) % mod
}

func subm(a, b, mod int64) int64 {
	return (a - b + mod) % mod
}

func mulm(a, b, mod int64) int64 {
	return (a * b) % mod
}

func divm(a, b, mod int64) int64 {
	return mulm(a, invm(b, mod), mod)
}

func invm(a, mod int64) int64 {
	b := mod
	u := int64(1)
	v := int64(0)

	for b > 0 {
		t := a / b

		a -= t * b
		a, b = b, a

		u -= t * v
		u, v = v, u
	}

	return (u + mod) % mod
}
