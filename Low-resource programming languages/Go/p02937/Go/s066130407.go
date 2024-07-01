package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
)

func UpperBound(l []int, n int) int {
	ng := -1
	ok := len(l) - 1
	for math.Abs(float64(ok - ng)) > 1 {
		mid := (ok + ng) / 2
		if l[mid] > n {
			ok = mid
		} else {
			ng = mid
		}
	}
	return l[ok]
}

func Solve(stdin io.Reader, stdout io.Writer) {
	sc := bufio.NewScanner(stdin)

	/* 単語ごとに入力するならこれ */
	sc.Split(bufio.ScanWords)

	/* 入力バッファが大きくなるならこれ */
	buf := make([]byte, 1000000)
	sc.Buffer(buf, 1000000)

	sc.Scan()
	s := sc.Text()

	sc.Scan()
	t := sc.Text()

	list := make([][]int, 26)
	for i, v := range s {
		list[int(v - 'a')] = append(list[int(v - 'a')], i)
	}
	for i, v := range s {
		list[int(v - 'a')] = append(list[int(v - 'a')], i + len(s))
	}

	var cnt int64
	pos := -1

	for _, v := range t {
		vi := int(v - 'a')
		if len(list[vi]) == 0 {
			_, _ = fmt.Fprintf(stdout, "-1\n")
			return
		}
		pos = UpperBound(list[vi], pos)
		if pos >= len(s) {
			pos -= len(s)
			cnt++
		}
	}

	/* 出力用 */
	_, _ = fmt.Fprintf(stdout, "%v\n", int64(len(s)) * cnt + int64(pos) + 1)

}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}