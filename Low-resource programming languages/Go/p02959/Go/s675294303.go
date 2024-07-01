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
	n := nextInt()
	a, b := make([]int, n+1), make([]int, n)

	for i := 0; i < n+1; i++ {
		a[i] = nextInt()
	}
	for i := 0; i < n; i++ {
		b[i] = nextInt()
	}

	c := 0
	for i := 0; i < n; i++ {
		if a[i] < b[i] {
			c += a[i]
			b[i] -= a[i]
			a[i] = 0
		} else {
			c += b[i]
			continue
		}

		if a[i+1] < b[i] {
			c += a[i+1]
			a[i+1] = 0
		} else {
			c += b[i]
			a[i+1] -= b[i]
		}
	}

	fmt.Println(c)
}
