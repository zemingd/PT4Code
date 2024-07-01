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
	B := make([]int, N+1)
	C := make([]int, N+1)

	for i := 1; i <= N; i++ {
		A[i] = nextInt()
	}
	for i := 1; i <= N; i++ {
		B[i] = nextInt()
	}
	for i := 1; i <= N; i++ {
		C[i] = nextInt()
	}

	c := 0

	for i := 1; i <= N; i++ {
		c += B[A[i]] // A[i]を食べた

		if i <= N-1 {
			if A[i+1] == A[i]+1 {
				c += C[A[i]]
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
