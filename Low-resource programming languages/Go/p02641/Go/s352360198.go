package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	X := nextInt()
	N := nextInt()

	ok := make([]bool, 102)
	for i := 0; i < len(ok); i++ {
		ok[i] = true
	}

	for i := 0; i < N; i++ {
		p := nextInt()
		ok[p] = false
	}

	m := 999
	k := -1

	for x := 0; x <= 101; x++ {
		if !ok[x] {
			continue
		}

		if abs(X-x) < m {
			m, k = abs(X-x), x
		}
	}

	fmt.Println(k)
}

func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
}

func min(a, b int) int {
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

func debug(args ...interface{}) {
	fmt.Fprintln(os.Stderr, args)
}
