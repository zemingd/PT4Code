package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	A := [2]int{
		nextInt(),
		nextInt(),
	}
	B := [3]int{1, 2, 3}

loop:
	for j := 0; j < len(B); j++ {
		for i := 0; i < len(A); i++ {
			if A[i] == B[j] {
				continue loop
			}
		}

		fmt.Println(B[j])
		return
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
