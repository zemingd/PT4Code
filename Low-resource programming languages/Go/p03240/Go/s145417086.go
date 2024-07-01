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
	n := in.nextInt()
	xyh := in.nextIntSlice(n, " ")
	print(format(solve(n, xyh)))
}

func format(n []int) string {
	return fmt.Sprintf("%d %d %d", n[0], n[1], n[2])
}

func abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}
func max(a int, b int) int {
	if a < b {
		return b
	}
	return a
}

func solve(n int, xyh [][]int) []int {
	result := make([][]int, 101)
	for i := 0; i < len(result); i++ {
		result[i] = make([]int, 101)
	}
	for i := 1; i < len(xyh); i++ {
		if xyh[i][2] > 0 {
			for j := 0; j < len(result); j++ {
				for k := 0; k < len(result[j]); k++ {
					x, y, h := xyh[i][0], xyh[i][1], xyh[i][2]
					result[j][k] = h + abs(x-j) + abs(y-k)
				}
			}
			break
		}
	}
	for i := 0; i < len(xyh); i++ {
		for j := 0; j < len(result); j++ {
			for k := 0; k < len(result[j]); k++ {
				if result[j][k] == -1 {
					continue
				}
				x, y, h := xyh[i][0], xyh[i][1], xyh[i][2]
				h1 := h + abs(x-j) + abs(y-k)
				h2 := result[j][k]
				if h1 != h2 {
					result[j][k] = -1
				}
			}
		}
	}
	for j := 0; j < len(result); j++ {
		for k := 0; k < len(result[j]); k++ {
			if result[j][k] > 0 {
				return []int{j, k, result[j][k]}
			}
		}
	}
	return []int{0, 0, 0}
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
	i.sc.Buffer([]byte{}, math.MaxInt64)
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
