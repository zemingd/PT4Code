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
	h, n := readN(), readN()
	for i := 0; i < n; i++ {
		h = h - readN()
		if h <= 0 {
			break
		}
	}
	if h <= 0 {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
	return
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
