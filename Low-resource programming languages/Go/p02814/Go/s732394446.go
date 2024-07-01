package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	M := nextInt()

	a := make([]int, N)

	for i := 0; i < N; i++ {
		a[i] = nextInt() / 2
	}
	// 最小公倍数を探す
	l := a[0]
	for i := 1; i < N; i++ {
		l = lcm(l, a[i])
	}

	// lの奇数倍で得られるもののみとする
	if l > M {
		fmt.Println(0)
	} else {
		fmt.Println(1 + (M-l)/(l*2))
	}
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}

func gcd(a, b int) int {
	if b > a {
		a, b = b, a
	}
	for b != 0 {
		a, b = b, a%b
	}
	return a
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
