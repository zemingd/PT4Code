package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

func main() {
	fmt.Println(resolve(parseProblem(os.Stdin)))
}

func parseProblem(r io.Reader) (int, int) {
	const (
		initialBufSize = 100000
		maxBufSize     = 1000000
	)
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines

	return scanInt(sc), scanInt(sc)
}

func resolve(n, m int) int {
	l := m / n
	dd := make([]int, 0)
	for i := 2; i*i <= m; i++ {
		if m%i != 0 {
			continue
		}
		dd = append(dd, i)
		if i == m/i {
			continue
		}
		dd = append(dd, m/i)
	}
	dd = append(dd, 1)
	dd = append(dd, m)
	sort.Sort(sort.Reverse(sort.IntSlice(dd)))
	for _, v := range dd {
		if v <= l {
			return v
		}
	}
	// no path
	return 0
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
