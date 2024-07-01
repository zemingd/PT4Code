package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)

	n := nextInt()
	a := make([]int, n)
	b := make([]int, n)
	c := make([]int, n-1)

	for i := 0; i < n; i++ {
		a[i] = nextInt() - 1
	}
	for i := 0; i < n; i++ {
		b[i] = nextInt()
	}
	for i := 0; i < n-1; i++ {
		c[i] = nextInt()
	}

	fmt.Println(solve(n, a, b, c))
}

func solve(n int, a, b, c []int) int {
	r := b[a[0]]

	for i := 1; i < n; i++ {
		r += b[a[i]]
		if a[i] == a[i-1]+1 {
			r += c[a[i-1]]
		}
	}

	return r
}
