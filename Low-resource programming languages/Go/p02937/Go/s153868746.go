package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
)

func Solve(stdin io.Reader, stdout io.Writer) {
	sc := bufio.NewScanner(stdin)

	/* 単語ごとに入力するならこれ */
	sc.Split(bufio.ScanWords)

	/* 入力バッファが大きくなるならこれ */
	buf := make([]byte, 100000)
	sc.Buffer(buf, 100000)

	sc.Scan()
	s := sc.Text()

	sc.Scan()
	t := sc.Text()

	list := make([][]int, 26)
	for i, v := range s {
		list[int(v - 'a')] = append(list[int(v - 'a')], i)
	}

	var cnt int64
	pos := -1

	for _, v := range t {
		vi := int(v - 'a')
		if len(list[vi]) == 0 {
			_, _ = fmt.Fprintf(stdout, "-1\n")
			return
		}
		done := false
		for _, x := range list[vi] {
			if x > pos {
				pos = x
				done = true
				break
			}
		}
		if !done {
			cnt++
			pos = -1
			for _, x := range list[vi] {
				if x > pos {
					pos = x
					done = true
					break
				}
			}
		}
	}

	/* 出力用 */
	_, _ = fmt.Fprintf(stdout, "%v\n", int64(len(s)) * cnt + int64(pos) + 1)
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}