package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	A := nextInt64()
	B := nextInt64()

	N := gcd(A, B)
	fmt.Println(len(factorize(N)) + 1)
}

func gcd(a, b int64) int64 {
	if b > a {
		a, b = b, a
	}
	for b != 0 {
		a, b = b, a%b
	}
	return a
}

// PrimeFactor は素因数と指数
type PrimeFactor struct {
	factor int64
	exp    int
}

func factorize(n int64) []PrimeFactor {
	factors := make([]PrimeFactor, 0)
	if n%2 == 0 {
		f := PrimeFactor{2, 0}
		factors = append(factors, f)

		for n%2 == 0 {
			n /= 2
			f.exp++
		}
	}
	for i := int64(3); i*i <= n; i++ {
		if n%i != 0 {
			continue
		}
		f := PrimeFactor{i, 0}
		factors = append(factors, f)

		for n%i == 0 {
			n /= i
			f.exp++
		}
	}

	if n != 1 {
		factors = append(factors, PrimeFactor{n, 1})
	}
	return factors
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
