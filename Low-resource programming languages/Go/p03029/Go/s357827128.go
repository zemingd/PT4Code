package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func minInt(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a, p := nextInt(), nextInt()

	p += a * 3

	fmt.Println(p / 2)
}
