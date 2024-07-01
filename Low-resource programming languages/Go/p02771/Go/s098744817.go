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

	a := scanInt()
	b := scanInt()
	c := scanInt()

	if a == b && c != a {
		println("Yes")
		return
	}
	if b == c && a != b {
		println("Yes")
		return
	}
	if c == a && b != c {
		println("Yes")
		return
	}
	println("No")
}
