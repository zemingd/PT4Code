package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	buf.Split(bufio.ScanWords)

	s := scanString()
	if s == "AAA" || s == "BBB" {
		fmt.Printf("%s", "No")
		return
	}
	fmt.Printf("%s", "Yes")
}

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

func scanString() string {
	buf.Scan()
	return buf.Text()
}

func scanStrings(n int) []string {
	a := make([]string, n)
	for k, _ := range a {
		a[k] = scanString()
	}
	return a
}
