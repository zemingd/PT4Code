package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func mainFn() {
	n := getInt()
	as := getIntSlice(n)

	b := make([]int, n)
	l, r := 0, n-1
	for i := n - 1; i >= 0; i-- {
		if (i % 2) == (n % 2) {
			b[l] = as[i]
			l++
		} else {
			b[r] = as[i]
			r--
		}
	}

	for i := range b {
		puts(b[i])
	}
}

// -----------------------------------------

var (
	scanner = bufio.NewScanner(os.Stdin)
	writer  = bufio.NewWriter(os.Stdout)
)

func main() {
	// buf := 200001
	// scanner.Buffer(make([]byte, buf), buf)
	scanner.Split(bufio.ScanWords)
	mainFn()
	writer.Flush()
}

func getInt() int {
	scanner.Scan()
	i, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getIntSlice(n int) []int {
	is := make([]int, n)
	for i := range is {
		is[i] = getInt()
	}
	return is
}

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}

func puts(a ...interface{}) {
	if _, err := fmt.Fprintln(writer, a...); err != nil {
		panic(err)
	}
}
