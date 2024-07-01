package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	k := readInt()
	s := readString()

	if len(s) <= k {
		fmt.Println(s)
	} else {
		fmt.Println(s[:k] + "...")
	}
}

const (
	ioBufferSize = 1 * 1024 * 1024 // 1 MB
)

var stdinScanner = func() *bufio.Scanner {
	result := bufio.NewScanner(os.Stdin)
	result.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	result.Split(bufio.ScanWords)
	return result
}()

func readString() string {
	stdinScanner.Scan()
	return stdinScanner.Text()
}

func readInt() int {
	result, err := strconv.Atoi(readString())
	if err != nil {
		panic(err)
	}
	return result
}
