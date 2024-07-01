package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"reflect"
	"strconv"
	"strings"
)

var in = newIo(bufio.NewScanner(os.Stdin))

func main() {
	in.setSplit(bufio.ScanLines)
	f := in.nextIntSlice(1, " ")
	n := f[0][0]
	t := f[0][1]
	ct := in.nextIntSlice(n, " ")
	print(format(solve(n, t, ct)))
}

func format(n int) string {
	if n == math.MaxInt32 {
		return "TLE"
	}
	return strconv.Itoa(n)
}

func solve(n int, t int, ct [][]int) int {
	result := math.MaxInt32
	for i := 0; i < len(ct); i++ {
		c1 := ct[i][0]
		t1 := ct[i][1]
		if t1 <= t && c1 < result {
			result = c1
		}
	}
	return result
}

func print(result ...interface{}) {
	for _, r := range result {
		kind := reflect.TypeOf(r).Kind()
		if kind == reflect.Array || kind == reflect.Slice {
			rv := reflect.ValueOf(r)
			cnv := make([]interface{}, rv.Len())
			for i := 0; i < rv.Len(); i++ {
				cnv[i] = rv.Index(i).Interface()
			}
			print(cnv...)
		} else {
			fmt.Println(r)
		}
	}
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
