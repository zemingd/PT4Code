package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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

func main() {
	n, k := nextInt(), nextInt()
	h := make([]int, n)

	for i := 0; i < n; i++ {
		h[i] = nextInt()
	}

	sort.Ints(h)

	res := 1<<63 - 1
	for i := 0; i+k-1 < n; i++ {
		t := h[i+k-1] - h[i]
		if t < res {
			res = t
		}
	}

	fmt.Println(res)
}
