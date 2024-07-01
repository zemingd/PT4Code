package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	N := nextInt64()
	n := N
	c := 0

	c1 := 0
	for N%2 == 0 {
		c1++
		N = N / 2
	}
	c += count(c1)

	for i := int64(3); i*i <= n; i += 2 {
		c1 = 0
		for N%i == 0 {
			c1++
			N = N / i
		}
		c += count(c1)
	}
	if N == n && N != 1 {
		// 素数
		c++
	}

	fmt.Println(c)
}

func count(c int) int {
	ok := 0
	ng := math.MaxInt32

	for abs(ok-ng) != 1 {
		mid := (ng + ok) / 2

		if c >= mid*(mid+1)/2 {
			ok = mid
		} else {
			ng = mid
		}
	}

	return ok
}

func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
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
