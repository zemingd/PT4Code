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
	n, a, b, c, d, e := readN(), readN(), readN(), readN(), readN(), readN()

	m := min(a, b, c, d, e)
	z := n / m
	if d := n % m; d > 0 {
		z++
	}
	fmt.Println(4 + z)
}

func min(xs ...int) int {
	n := xs[0]
	for _, x := range xs[1:] {
		if n > x {
			n = x
		}
	}
	return n
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
