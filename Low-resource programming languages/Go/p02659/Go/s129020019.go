package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	a := readFloat64()
	b := readFloat64()
	fmt.Println(uint64(a * b))
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

func readFloat64() float64 {
	result, err := strconv.ParseFloat(readString(), 64)
	if err != nil {
		panic(err)
	}
	return result
}
