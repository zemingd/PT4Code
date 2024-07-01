package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
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

func Divisor(x int) []int {
	ret := make([]int, 0)
	for i := 1; i < int(math.Sqrt(float64(x))) + 1; i++ {
		if x % i == 0 {
			ret = append(ret, i)
			if x / i != i {
				ret = append(ret, x / i)
			}
		}
	}
	return ret
}

func Solve(stdin io.Reader, stdout io.Writer) {
	sc := getScanner(stdin)

	n := getNextInt(sc)

	a := make([]int, n + 1)
	b := make(map[int]int)

	for i := 1; i <= n; i++ {
		a[i] = getNextInt(sc)
	}

	m := 0

	for i := n; i > 0; i-- {
		if a[i] == 0 {
			continue
		}
		divs := Divisor(i)
		for _, v := range divs {
			m++
			b[v]++
			a[v] = (a[v] + 1) % 2
		}
	}
	_, _ = fmt.Fprintf(stdout, "%v\n", m)
	for k, v := range b {
		for i := 0; i < v; i++ {
			_, _ = fmt.Fprintf(stdout, "%v ", k)
		}
	}
	_, _ = fmt.Fprintf(stdout, "\n")
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}