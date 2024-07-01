package main

import (
	"bufio"
	"fmt"
	"os"
)

const (
	initialBufSize = 10000
	maxBufSize     = 100000000
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	return sc
}()

// Input string
func scanString() (s string) {
	sc.Scan()
	return sc.Text()
}

func main() {
	input := scanString()

	for _, c := range input {
		if c == '7' {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
