package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func init() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
}

func loadint() (result int) {
	sc.Scan()
	result, _ = strconv.Atoi(sc.Text())
	return
}

func loadints(n int) []int {
	xs := make([]int, n)
	for i := 0; i < n; i++ {
		xs[i] = loadint()
	}
	return xs
}

func main() {
	a := loadint()
	b := loadint()
	c := loadint()
	if b < c {
		b, c = c, b
	}
	if a < b {
		a, b = b, a
	}
	if b < c {
		b, c = c, b
	}
	fmt.Println(a*10 + b + c)
}
