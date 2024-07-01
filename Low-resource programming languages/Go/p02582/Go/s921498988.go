package main

import (
	"bufio"
	"fmt"
	"os"
)

const (
	initialBufSize = 1e4
	maxBufSize     = 1e8
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var result int
	switch next() {
	case "SSS":
		result = 0
	case "SSR", "SRS", "RSS", "RSR":
		result = 1
	case "SRR", "RRS":
		result = 2
	case "RRR":
		result = 3
	}
	fmt.Println(result)
}
