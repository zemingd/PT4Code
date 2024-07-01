package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var in = newIo(bufio.NewScanner(os.Stdin))

func main() {
	in.setSplit(bufio.ScanLines)
	var fline = strings.Split(in.next(), " ")
	var n, m, q = perseInt(fline[0]), perseInt(fline[1]), perseInt(fline[2])
	var lr, p = in.nextIntSlice(m, " "), in.nextIntSlice(q, " ")

	print(solve(n, m, q, lr, p))
}

func print(result []string) {
	for _, r := range result {
		fmt.Println(r)
	}
}

func solve(n int, m int, q int, lr [][]int, p [][]int) []string {
	var result = make([]string, q)
	var matrix = makeMatrix(n, lr)
	for i, ip := range p {
		result[i] = makeResult(matrix, ip)
	}
	return result
}

func makeResult(matrix [][]int, p []int) string {
	from, to := p[0], p[1]
	count := matrix[from-1][to-1]
	return strconv.Itoa(count)
}

func makeMatrix(n int, lr [][]int) [][]int {
	var result = make([][]int, n)
	for i := 0; i < len(result); i++ {
		result[i] = make([]int, n)
	}
	for _, i := range lr {
		l, r := i[0], i[1]
		for j := 0; j < len(result); j++ {
			if j > l-1 {
				continue
			}
			for k := j; k < len(result[j]); k++ {
				if k >= r-1 {
					result[j][k]++
				}
			}
		}
	}
	// showMatrix(result)
	return result
}

func showMatrix(result [][]int) {
	fmt.Println("matrix")
	for _, r := range result {
		for _, rr := range r {
			fmt.Print(rr)
			fmt.Print(" ")
		}
		fmt.Println()
	}
	fmt.Println("---------")
}

type io struct {
	sc *bufio.Scanner
}

func newIo(sc *bufio.Scanner) *io {
	i := new(io)
	i.sc = sc
	i.sc.Split(bufio.ScanWords)
	return i
}

func (i *io) setSplit(f bufio.SplitFunc) {
	i.sc.Split(f)
}

func (i *io) nextIntSlice(y int, delim string) [][]int {
	result := make([][]int, y)
	for j := 0; j < y; j++ {
		line := i.next()
		result[j] = perseIntSlice(strings.Split(line, delim))
	}
	return result
}

func (i *io) next() string {
	i.sc.Scan()
	return i.sc.Text()
}

func (i *io) nextInt() int {
	return perseInt(i.next())
}

func (i *io) nextLong() int64 {
	return perseLong(i.next())
}

func perseInt(s string) int {
	in, _ := strconv.Atoi(s)
	return in
}

func perseLong(s string) int64 {
	in, _ := strconv.ParseInt(s, 10, 64)
	return in
}

func perseIntSlice(s []string) []int {
	var r = make([]int, len(s))
	for i := 0; i < len(s); i++ {
		r[i] = perseInt(s[i])
	}
	return r
}
