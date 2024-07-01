package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := nextInt64()

	if N%2 == 1 {
		fmt.Println(0)
		return
	}
	a5 := int64(0)
	n5 := int64(10)

	// 5の指数と対応
	// 10の倍数 + 50の倍数 + 250の倍数 + 1250の倍数 + ...
	for n5 <= N && n5 > 0 {
		a5 += N / n5
		n5 *= 5
	}

	a2 := int64(0)
	n2 := int64(2)

	for n2 <= N && n2 > 0 {
		a2 += N / n2
		n2 *= 2
	}

	fmt.Println(min(a5, a2))
}

func min(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
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
