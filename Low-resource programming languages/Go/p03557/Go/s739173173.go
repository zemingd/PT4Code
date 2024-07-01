package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func scanInts(n int) []int {
	sl := make([]int, n)
	for i := range sl {
		sl[i] = scanInt()
	}
	return sl
}

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	n := scanInt()
	as, bs, cs := scanInts(n), scanInts(n), scanInts(n)

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

func upperBound(a []int, x int) int {
	return sort.Search(len(a), func(i int) bool { return a[i] > x })
}

func lowerBound(a []int, x int) int {
	return sort.Search(len(a), func(i int) bool { return a[i] >= x })
}
