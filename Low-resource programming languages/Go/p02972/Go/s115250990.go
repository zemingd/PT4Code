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

	n := getNextInt(sc)

	a := make([]int, n + 1)
	b := make([]int, n + 1)

	for i := 1; i <= n; i++ {
		a[i] = getNextInt(sc)
	}

	for i := n; i > 0; i-- {
		sum := 0
		for j := i + i; j <= n; j += i {
			sum ^= b[j]
		}
		b[i] = sum ^ a[i]
	}

	ret := make([]int, 0)

	for i := 1; i <= n; i++ {
		if b[i] > 0 {
			ret = append(ret, i)
		}
	}

	_, _ = fmt.Fprintf(stdout, "%v\n", len(ret))
	for _, v := range ret {
		_, _ = fmt.Fprintf(stdout, "%v ", v)
	}
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}