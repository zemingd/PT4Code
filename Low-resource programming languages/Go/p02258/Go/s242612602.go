package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const INF = 1000000000001

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	sc.Split(bufio.ScanWords)
}

func Min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func Max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	var n int
	n = scanInt()

	max := 0 - INF
	min := scanInt()
	for i := 1; i < n; i++ {
		num := scanInt()
		max = Max(max, num-min)
		min = Min(min, num)
	}

	fmt.Println(max)
}

