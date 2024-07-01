package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func newScanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	// buf := make([]byte, 10000)
	// scanner.Buffer(buf, 1000000)
	return scanner
}

func scanInt(s *bufio.Scanner) int {
	if s.Scan() {
		t := s.Text()
		v, err := strconv.Atoi(t)
		if err == nil {
			return v
		}
		panic(err)
	} else {
		panic(s.Err())
	}
}

func scanString(s *bufio.Scanner) string {
	if s.Scan() {
		return s.Text()
	}
	panic(s.Err())
}

type pair struct {
	x, i int
}
type ints []*pair

func (is ints) Len() int           { return len(is) }
func (is ints) Less(i, j int) bool { return is[i].x < is[j].x }
func (is ints) Swap(i, j int)      { is[i], is[j] = is[j], is[i] }

func main() {
	sc := newScanner()
	n := scanInt(sc)
	p := make(ints, n)

	for i := 0; i < n; i++ {
		x := scanInt(sc)
		p[i] = &pair{x, i}
	}

	sort.Sort(p)

	res := 0
	min := 10000000
	for i := 0; i < n; i++ {
		if min > p[i].i {
			res++
			min = p[i].i
		}
	}

	fmt.Println(res)
}
