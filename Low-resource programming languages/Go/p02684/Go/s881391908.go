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

func parseProblem(r io.Reader) (int, []int) {
	const (
		initialBufSize = 100000
		maxBufSize     = 1000000
	)
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	n, k := scanInt(sc), scanInt(sc)
	gs := make([]int, n)
	for i := 0; i < n; i++ {
		// 0-indexed
		gs[i] = scanInt(sc) - 1
	}
	return k, gs
}

func resolve(k int, gs []int) int {
	visited := newSet()
	order := make([]int, 0, len(gs))
	cur := 0
	order = append(order, cur)
	t := 0
	for t < k && !visited.doesContain(cur) {
		visited.add(cur)
		order = append(order, gs[cur])
		cur = gs[cur]
		t++
		if t == k {
			return cur + 1
		}
	}
	idx := 0
	for i := 0; i < len(order); i++ {
		if order[i] == cur {
			idx = i
			break
		}
	}
	pos := (k-idx)%(t-idx) + idx
	return order[pos] + 1
}

type intSet map[int]none

func newSet() intSet {
	return make(map[int]none)
}

func (s intSet) add(item int) {
	s[item] = mark
}

func (s intSet) doesContain(item int) bool {
	_, ok := s[item]
	return ok
}

func (s intSet) size() int {
	return len(s)
}

func (s intSet) members() (l []int) {
	for k := range s {
		l = append(l, k)
	}
	return l
}

var mark none

type none struct{}

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
