package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var in = newIo(bufio.NewScanner(os.Stdin))

func main() {
	in.setSplit(bufio.ScanLines)
	var fline = strings.Split(in.next(), " ")
	var a, b, c = perseInt(fline[0]), perseInt(fline[1]), perseInt(fline[2])

	print(solve(a, b, c))
}

func print(result int) {
	fmt.Println(result)
}

func solve(a int, b int, c int) int {
	ar := []int{a, b, c}
	sort.Sort(sort.Reverse(sort.IntSlice(ar)))
	return ar[0]*10 + ar[1] + ar[2]
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
