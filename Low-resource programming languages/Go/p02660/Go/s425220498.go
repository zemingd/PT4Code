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

	for i := int64(2); i*i <= N; i++ {
		c1 := 0
		for n%i == 0 {
			c1++
			n = n / i
		}
		c += count(c1)
	}
	if n == N && n != 1 {
		// 素数
		fmt.Println(1)
	} else {
		fmt.Println(c)
	}
}

// n*(n+1) / 2 <= cとなる最大のn
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
