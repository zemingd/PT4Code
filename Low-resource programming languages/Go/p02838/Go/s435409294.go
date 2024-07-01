package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := readInt()
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = readInt()
	}

	result := 0
	for i := 0; i < 60; i++ {
		t := 0
		bs := (A[N-1] >> uint(i)) & 1
		for j := N - 2; j > -1; j-- {
			if (A[j]>>uint(i))&1 == 0 {
				t += bs
			} else {
				t += (N - (j + 1)) - bs
				bs++
			}
		}
		t %= 1000000007
		B := (1 << uint(i)) % 1000000007
		result += (t * B) % 1000000007
		result %= 1000000007
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
