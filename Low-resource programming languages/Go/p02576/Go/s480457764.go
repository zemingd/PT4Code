package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	maxBufSize = 1024 * 1024
)

var (
	scanner = getScanner(os.Stdin)
	out = bufio.NewWriter(os.Stdout)
)

func abs(x int64) int64 {
	if x > 0 {
		return x
	} else {
		return -x
	}
}

func min(x, y int64) int64 {
	if x < y {
		return x
	}
	return y
}

func max(x, y int64) int64 {
	if x < y {
		return y
	}
	return x
}

func main() {
	defer out.Flush()

	n := getNextInt()
	x := getNextInt()
	t := getNextInt()

	round := n / x
	remainder := n % x
	if remainder != 0 {
		round += 1
	}

	fmt.Print(round * t)
}

func getScanner(fp *os.File) *bufio.Scanner {
	scanner := bufio.NewScanner(fp)
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, 1000005), 1000005)
	return scanner
}

func getNextString() string {
	scanner.Scan()
	return scanner.Text()
}

func getNextInt() int {
	i, _ := strconv.Atoi(getNextString())
	return i
}

func getNextInt64() int64 {
	i, _ := strconv.ParseInt(getNextString(), 10, 64)
	return i
}

func getNextUint64() uint64 {
	i, _ := strconv.ParseUint(getNextString(), 10, 64)
	return i
}

func getNextFloat64() float64 {
	i, _ := strconv.ParseFloat(getNextString(), 64)
	return i
}
