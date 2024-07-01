package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	fmt.Printf("%d\n", resolve(parseProblem(os.Stdin)))
}

func parseProblem(r io.Reader) (int, int, []query) {
	const (
		initialBufSize = 100000
		maxBufSize     = 1000000
	)
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines

	n, m, q := scanInt(sc), scanInt(sc), scanInt(sc)
	qs := make([]query, q)
	for i := 0; i < q; i++ {
		qs[i] = query{
			a: scanInt(sc),
			b: scanInt(sc),
			c: scanInt(sc),
			d: scanInt(sc),
		}
	}
	return n, m, qs
}

type query struct {
	a, b, c, d int
}

func resolve(n, m int, qs []query) int {
	result := 0
	for seq := range seqs(n, m) {
		sum := 0
		for _, q := range qs {
			if seq[q.b-1]-seq[q.a-1] == q.c {
				sum += q.d
			}
		}
		if result < sum {
			result = sum
		}
	}
	return result
}

func seqs(n, m int) chan []int {
	ch := make(chan []int)
	go func() {
		_seq(1, m, n, []int{}, ch)
		close(ch)
	}()
	return ch
}

func _seq(s, e int, n int, r []int, ch chan []int) {
	if n == 0 {
		dst := make([]int, len(r))
		copy(dst, r)
		ch <- dst
		return
	}
	for i := s; i <= e; i++ {
		_seq(i, e, n-1, append(r, i), ch)
	}
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
