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

func max(i, j int) int {
	if i > j {
		return i
	} else {
		return j
	}
}

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)

	n := nextInt()
	a := make([]int, n)

	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	x := make([]int, n)
	y := make([]int, n)

	x[0] = a[0]
	y[n-1] = a[n-1]

	for i := 1; i < n; i++ {
		x[i] = max(x[i-1], a[i])
	}
	for i := n - 2; i >= 0; i-- {
		y[i] = max(y[i+1], a[i])
	}

	fmt.Println(y[1])
	for i := 1; i < n-1; i++ {
		fmt.Println(max(x[i-1], y[i+1]))
	}
	fmt.Println(x[n-1])
}
