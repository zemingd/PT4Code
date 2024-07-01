package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func mainFn() {
	n := getInt()
	ds := getIntSlice(n)

	ans := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			ans += ds[i] * ds[j]
		}
	}

	puts(ans)
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
