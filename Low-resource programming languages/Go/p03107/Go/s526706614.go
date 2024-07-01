package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	MaxBuffLen  = 100000 + 1024
	InitBuffLen = 1024
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Buffer(make([]byte, 1024), MaxBuffLen)
	scanner.Scan()
	buff := scanner.Bytes()

	r := 0
	for _, b := range buff {
		if b == '0' {
			r++
		}
	}
	fmt.Println(2 * min(r, len(buff)-r))
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}
