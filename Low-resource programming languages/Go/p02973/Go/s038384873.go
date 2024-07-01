package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	colors := make([]int, N)

	for i := 0; i < N; i++ {
		colors[i] = -1
	}

	for i := 0; i < N; i++ {
		a := nextInt()
		x := binarysearch(colors, a)

		colors[x] = a
	}

	c := 0
	for i := 0; i < N; i++ {
		if colors[i] == -1 {
			break
		}
		c++
	}

	fmt.Println(c)
}

func binarysearch(arr []int, value int) int {
	l := -1
	r := len(arr)

	for r-l > 1 {
		m := l + (r-l)/2

		if arr[m] < value {
			r = m
		} else {
			l = m
		}
	}

	return r
}

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)

	return i
}
