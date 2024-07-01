package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {

	H := nextInt64()
	W := nextInt64()

	if H == 1 || W == 1 {
		fmt.Println(1)
	} else if H%2 == 1 && W%2 == 1 {
		fmt.Println(H*W/2 + 1)
	} else {
		fmt.Println(H * W / 2)
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
