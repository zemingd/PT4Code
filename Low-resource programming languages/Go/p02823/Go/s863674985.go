package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const mod = 1000000007

// 1MB
const ioBufferSize = 1 * 1024 * 1024

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	sc.Split(bufio.ScanWords)
	return sc
}()

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	n, a, b := nextInt(), nextInt(), nextInt()

	res := n
	if (b-a)%2 == 0 {
		res = (b - a) / 2
	} else {
		res = min(a-1, n-b) + 1 + (b-a-1)/2
	}
	fmt.Println(res)
}
