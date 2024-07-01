package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	scanner = bufio.NewScanner(os.Stdin)
	write   = bufio.NewWriter(os.Stdout)
)

func readString() string {
	scanner.Scan()
	return scanner.Text()
}

const (
	initialBufSize = 2e8
	maxBufSize     = 2e8
)

func main() {
	buf := make([]byte, initialBufSize)
	scanner.Buffer(buf, maxBufSize)
	scanner.Split(bufio.ScanWords)

	n := readString()

	ans := 0
	for _, c := range n {
		num, _ := strconv.Atoi(string(c))
		ans = (num + ans) % 9
	}

	if ans%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
