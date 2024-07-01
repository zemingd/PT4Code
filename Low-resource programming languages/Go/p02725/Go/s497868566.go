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

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func main() {
	k, n := nextInt(), nextInt()
	a := make([]int, n)

	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	longest := k + a[0] - a[n-1]
	for i := 0; i < n-1; i++ {
		longest = max(longest, a[i+1]-a[i])
	}
	fmt.Println(k-longest)
}