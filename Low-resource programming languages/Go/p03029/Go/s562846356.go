package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func getScanner(fp io.Reader) *bufio.Scanner {
	sc := bufio.NewScanner(fp)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 500001), 500000)
	return sc
}

func getHugeScanner(fp io.Reader, size int) *bufio.Scanner {
	sc := bufio.NewScanner(fp)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, size), size)
	return sc
}

func getNextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func getNextInt(sc *bufio.Scanner) int {
	i, _ := strconv.Atoi(getNextString(sc))
	return i
}

func getNextInt64(sc *bufio.Scanner) int64 {
	i, _ := strconv.ParseInt(getNextString(sc), 10, 64)
	return i
}

func getNextFloat64(sc *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(sc), 64)
	return i
}

func Solve(stdin io.Reader, stdout io.Writer) {
	sc := getScanner(stdin)

	a := getNextInt(sc)
	p := getNextInt(sc)

	_, _ = fmt.Fprintf(stdout, "%v\n", (a * 3 + p) / 2)
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}