package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n, k int
	n = readInt()
	k = readInt()

	check := make([]int, n)

	for i := 0; i < k; i++ {
		count := readInt()
		for j := 0; j < count; j++ {
			w := readInt()
			check[w-1]++
		}
	}

	result := 0
	for i := 0; i < n; i++ {
		if check[i] == 0 {
			result++
		}
	}

	fmt.Println(result)
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
