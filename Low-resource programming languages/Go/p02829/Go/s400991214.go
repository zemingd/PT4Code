package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	a := readInt()
	b := readInt()

	d := []struct {
		p int
		q int
		r int
	}{
		{1, 2, 3},
		{2, 3, 1},
		{1, 3, 2},
	}

	x := min(a, b)
	y := max(a, b)
	for _, v := range d {
		if v.p == x && v.q == y {
			fmt.Println(v.r)
		}
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

func min(a ...int) int {
	v := a[0]
	for i := 1; i < len(a); i++ {
		if a[i] < v {
			v = a[i]
		}
	}
	return v
}

func max(a ...int) int {
	v := a[0]
	for i := 1; i < len(a); i++ {
		if v < a[i] {
			v = a[i]
		}
	}
	return v
}
