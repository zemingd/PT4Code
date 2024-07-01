package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	n := readInt()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = readInt()
	}

	x := 1
	c := 0
	for i := 0; i < n; i++ {
		if a[i] == x {
			x++
		} else {
			c++
		}
	}

	if c == n {
		fmt.Println(-1)
	} else {
		fmt.Println(c)
	}
}

var stdin *bufio.Scanner

func read() string {
	if stdin == nil {
		stdin = bufio.NewScanner(os.Stdin)
		stdin.Split(bufio.ScanWords)
		stdin.Buffer(make([]byte, bufio.MaxScanTokenSize), int(math.MaxInt32))
	}
	stdin.Scan()
	return stdin.Text()
}

func readInt() int {
	n, _ := strconv.Atoi(read())
	return n
}

func readFloat64() float64 {
	n, _ := strconv.ParseFloat(read(), 64)
	return n
}
