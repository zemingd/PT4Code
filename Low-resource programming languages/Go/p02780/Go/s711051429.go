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

func main() {
	n, k := nextInt(), nextInt()
	s := make([]int, n+1)

	max := 0.0
	for i := 1; i <= n; i++ {
		s[i] = s[i-1] + nextInt()
		if k <= i {
			t := float64(s[i] - s[i-k] + k) / 2.0
			if max < t {
				max = t
			}
		}
	}

	fmt.Println(max)
}