package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
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
	k := getNextInt(sc)

	v := make([]int, n)
	for i := 0; i < n; i++ {
		v[i] = getNextInt(sc)
	}

	max := 0
	for l := 0; l < k; l++ {
		for r := 0; r < k - l; r++ {
			if l + r > n {
				continue
			}

			list := []int{}
			for i := 0; i < l; i++ {
				list = append(list, v[i])
			}
			for i := n - 1; i >= n - r; i-- {
				list = append(list, v[i])
			}

			sort.Ints(list)

			for i := 0; i < k - l - r; i++ {
				if len(list) == 0 {
					break
				}
				if list[0] < 0 {
					list = list[1:]
				} else {
					break
				}
			}

			tmp := 0
			for i := 0; i < len(list); i++ {
				tmp += list[i]
			}
			if tmp > max {
				max = tmp
			}
		}
	}

	_, _ = fmt.Fprintf(stdout, "%v\n", max)
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}