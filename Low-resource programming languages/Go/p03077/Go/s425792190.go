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

	fmt.Println(5 + n/min(a, b, c, d, e))
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
