package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n := readInt()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = readInt()
	}

	l := make([]int, n)
	s := make([]int, n)
	ans := 0
	for i := 0; i < n; i++ {
		if a[i]+i < n {
			l[a[i]+i]++
		}
		if i-a[i] > 0 {
			s[i-a[i]]++
		}
	}
	for i := 0; i < n; i++ {
		ans += l[i] * s[i]
	}
	fmt.Println(ans)
}

func myAbs(a int, b int) int {
	if a > b {
		return a - b
	}
	return b - a
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

func readChar() rune {
	stdinScanner.Scan()
	temp := stdinScanner.Text()
	return rune(temp[0])
}

func readInt() int {
	result, err := strconv.Atoi(readString())
	if err != nil {
		panic(err)
	}
	return result
}
