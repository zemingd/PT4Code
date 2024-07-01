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

func min(a int, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)

	n := nextInt()
	a := make([]int, n+1)
	b := make([]int, n)

	for i := 0; i < n+1; i++ {
		a[i] = nextInt()
	}
	for i := 0; i < n; i++ {
		b[i] = nextInt()
	}

	s := 0
	for i := 0; i < n; i++ {
		if b[i] > a[i]+a[i+1] {
			s += a[i] + a[i+1]
			a[i] = 0
			a[i+1] = 0
		} else if b[i] > a[i] {
			s += b[i]
			a[i+1] -= b[i] - a[i]
			a[i] = 0
		} else {
			s += b[i]
			a[i] -= b[i]
		}
	}

	fmt.Println(s)
}
