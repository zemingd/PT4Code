package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var buf = bufio.NewScanner(os.Stdin)

func scanInt() int {
	buf.Scan()
	i, _ := strconv.Atoi(buf.Text())
	return i
}

func scanInts(n int) []int {
	a := make([]int, n)
	for k, _ := range a {
		a[k] = scanInt()
	}
	return a
}

func main() {
	buf.Split(bufio.ScanWords)

	n := scanInt()
	m := scanInt()

	if n == m {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
