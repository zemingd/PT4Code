package main

import (
	"bufio"
	"os"
	"strconv"
)

var buf = bufio.NewScanner(os.Stdin)

func scanInt() int {
	buf.Scan()
	i, _ := strconv.Atoi(buf.Text())
	return i
}

func scanInts(n int) []int {
	a := make([]int, n)
	for k, _ := range a {
		a[k] = scanInt()
	}
	return a
}

func main() {
	buf.Split(bufio.ScanWords)

	n := scanInt()
	a := scanInts(n)

	for _, v := range a {
		if v%2 == 0 && v%3 != 0 && v%5 != 0 {
			println("DENIED")
			return
		}
	}
	println("APPROVED")
}
