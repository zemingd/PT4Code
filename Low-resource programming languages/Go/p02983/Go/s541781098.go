package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

// const (
// 	initialBufSize = bufio.MaxScanTokenSize //65536
// 	maxBufSize     = 10000000000
// )

const inf = 1000000000

func main() {
	scanner.Split(bufio.ScanWords)
	// buf := make([]byte, initialBufSize)
	// scanner.Buffer(buf, maxBufSize)

	l, r := nextInt(), nextInt()

	min := inf
LABEL:
	for i := l; i < r; i++ {
		for j := l + 1; j <= r; j++ {
			mod := i * j % 2019
			if mod < min {
				min = mod
			}
			if min == 0 {
				break LABEL
			}
		}
	}
	fmt.Println(min)
}

func next() string {
	scanner.Scan()
	return scanner.Text()
}
func nextInt() int {
	i, err := strconv.Atoi(next())
	if err != nil {
		fmt.Println(err)
	}
	return i
}
