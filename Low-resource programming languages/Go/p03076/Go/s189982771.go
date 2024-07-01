package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	run()
}

func run() {
	setSpace()
	a, b, c, d, e := readN(), readN(), readN(), readN(), readN()
	sum := f(a) + f(b) + f(c) + f(d) + f(e)
	red := max(r(a), r(b), r(c), r(d), r(e))
	fmt.Println(sum - red)
}

func max(xs ...int) int {
	var n int
	for _, x := range xs {
		if n < x {
			n = x
		}
	}
	return n
}

func f(x int) int {
	return (x + 9) / 10 * 10
}

func r(x int) int {
	return f(x) - x
}

// ------以下、ユーティリティ------

var sc = bufio.NewScanner(os.Stdin)

func setSpace() {
	sc.Split(bufio.ScanWords)
}

func read() string {
	sc.Scan()
	return sc.Text()
}

func readN() int {
	n, err := strconv.Atoi(read())
	if err != nil {
		panic(err)
	}
	return n
}
