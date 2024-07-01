package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func scan(buf []int, s *bufio.Scanner) {
	for i := range buf {
		s.Scan()
		v, _ := strconv.Atoi(s.Text())
		buf[i] = v
	}
}

func main() {
	var n int
	fmt.Scan(&n)

	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)

	as := make([]int, n)
	bs := make([]int, n)
	cs := make([]int, n)

	scan(as, s)
	scan(bs, s)
	scan(cs, s)

	sort.Ints(as)
	sort.Ints(cs)

	sum := 0
	for _, b := range bs {
		i := sort.SearchInts(as, b)
		j := sort.SearchInts(cs, b+1)
		sum += i * (n - j)
	}
	fmt.Println(sum)
}
