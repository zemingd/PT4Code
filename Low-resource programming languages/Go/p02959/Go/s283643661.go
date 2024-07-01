package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	A := make([]int, N+1)

	for i := 0; i < N+1; i++ {
		A[i] = nextInt()
	}

	c := 0

	for i := 0; i < N; i++ {
		B := nextInt()

		if A[i] > B {
			c += B
			A[i] -= B
		} else {
			c += A[i]

			d := B - A[i]
			A[i] = 0

			if A[i+1] < d {
				c += A[i+1]
				A[i+1] = 0
			} else {
				c += d
				A[i+1] -= d
			}
		}
	}

	fmt.Println(c)
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
