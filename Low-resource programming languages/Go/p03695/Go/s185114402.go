package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	col := make([]int, 9)
	for i := 0; i < n; i++ {
		r := nextInt() / 400
		if r >= 9 {
			r = 8
		}
		col[r]++
	}

	min := 0
	for i := 0; i < 8; i++ {
		if col[i] > 0 {
			min++
		}
	}
	if min == 0 {
		min = 1
	}

	max := min
	for i := 0; i < 8; i++ {
		if col[8] > 0 && col[i] == 0 {
			max++
			col[8]--
		}
	}

	puts(min, max)

	wt.Flush()
}

var (
	sc = bufio.NewScanner(os.Stdin)
	wt = bufio.NewWriter(os.Stdout)
)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func puts(a ...interface{}) {
	fmt.Fprintln(wt, a...)
}
