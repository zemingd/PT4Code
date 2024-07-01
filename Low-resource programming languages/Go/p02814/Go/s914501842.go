package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	fmt.Println(resolve(parseProblem(os.Stdin)))
}

func parseProblem(r io.Reader) (int, int, []int) {
	const (
		initialBufSize = 100000
		maxBufSize     = 1000000
	)
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	n, m := scanInt(sc), scanInt(sc)
	var as []int
	for i := 0; i < n; i++ {
		as = append(as, scanInt(sc))
	}
	return n, m, as
}

func primeCount(n, p int) (count int) {
	num := n
	for num%p == 0 {
		num /= p
		count++
	}
	return
}

func resolve(_, m int, as []int) int {
	l := as[0] / 2
	d := primeCount(as[0], 2)
	for i := 1; i < len(as); i++ {
		if d != primeCount(as[i], 2) {
			return 0
		}
		l = lcm(l, as[i]/2)
	}
	return ((m / l) + 1) >> 1
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}
func gcd(a, b int) int {
	for b > 0 {
		t := a / b
		a, b = b, a-t*b
	}
	return a
}

// snip-scan-funcs
func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return int(i)
}
func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}
