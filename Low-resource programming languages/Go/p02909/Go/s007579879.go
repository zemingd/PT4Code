package main

import (
	"bufio"
  	"fmt"
  	"os"
)

func main() {
	S := readString()

	var res string

	switch S {
	case "Sunny":
		res = "Cloudy"
	case "Cloudy":
		res = "Rainy"
	case "Rainy":
		res = "Sunny"
	}

	fmt.Println(res)
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