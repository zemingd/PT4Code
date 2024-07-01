package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var nextString func() string

func init() {
	nextString = newReadString(os.Stdin)
}

func main() {
	n := nextInt()
	a := []int{}
	for i := 0; i < n; i++ {
		a = append(a, nextInt())
	}
	j := 1
	for i := 0; i < n; i++ {
		j = a[j-1]
		if j == 2 {
			fmt.Println(i + 1)
			return
		}
	}
	fmt.Println(-1)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func nextInt() (result int) {
	result, _ = strconv.Atoi(nextString())
	return
}

func newReadString(ior io.Reader) func() string {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	return func() string {
		if !r.Scan() {
		}
		return r.Text()
	}
}
