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

func ceilDiv(x, d int) int {
	if x%d == 0 {
		return x / d
	}
	return (x / d) + 1
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a, b, x := nextInt(), nextInt(), nextInt()

	fmt.Println((b / x) - ceilDiv(a, x) + 1)
}
