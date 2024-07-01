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
	_, m := nextInt(), nextInt()

	l, r := 0, 100000
	for i := 0; i < m; i++ {
		ll, rr := nextInt(), nextInt()
		if l < ll {
			l = ll
		}
		if r > rr {
			r = rr
		}
	}

	if r-l+1 > 0 {
		fmt.Println(r - l + 1)
	} else {
		fmt.Println(0)
	}
}
