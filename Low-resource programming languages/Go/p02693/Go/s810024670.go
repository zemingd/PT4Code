package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	K := nextInt()
	A := nextInt()
	B := nextInt()

	for i := A; i <= B; i++ {
		if i%K == 0 {
			fmt.Println("OK")
			return
		}
	}

	fmt.Println("NG")
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
