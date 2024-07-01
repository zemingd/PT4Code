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
	n := nextInt()

	ans := 0
	bPrev := -1
	for i := 0; i < n-1; i++ {
		b := nextInt()
		switch {
		case i == 0:
			ans += b
		default:
			ans += minInt(b, bPrev)
		}
		bPrev = b
	}

	fmt.Println(ans + bPrev)
}
