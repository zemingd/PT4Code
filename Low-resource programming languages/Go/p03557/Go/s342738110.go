package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func nextInts(n int) []int {
	sl := make([]int, n)
	for i := range sl {
		sl[i] = nextInt()
	}
	return sl
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	as, bs, cs := nextInts(n), nextInts(n), nextInts(n)

	sort.Ints(as)
	sort.Ints(cs)
	var sum int
	for _, b := range bs {
		aCnt := lowerBound(as, b)
		cCnt := n - upperBound(cs, b)
		sum += aCnt * cCnt
	}

	fmt.Println(sum)
}

func lowerBound(a []int, x int) int {
	return sort.Search(len(a), func(i int) bool { return a[i] >= x })
}

func upperBound(a []int, x int) int {
	return sort.Search(len(a), func(i int) bool { return a[i] > x })
}
