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

	aa := make([]int, n)
	bb := make([]int, n)
	cc := make([]int, n)

	scan(aa, s)
	scan(bb, s)
	scan(cc, s)

	sort.Ints(aa)
	sort.Ints(cc)

	sum := 0
	for _, b := range bb {
		i := sort.SearchInts(aa, b)
		j := sort.SearchInts(cc, b+1)
		sum += i * (n - j)
	}

	fmt.Println(sum)
}
