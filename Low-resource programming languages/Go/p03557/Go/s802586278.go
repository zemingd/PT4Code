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
	a, b, c := scanInts(n), scanInts(n), scanInts(n)

	sort.Ints(a)
	sort.Ints(c)

	sum := 0

	for i := 0; i < n; i++ {
		b_i := b[i]
		a_cnt := sort.Search(len(a), func(i int) bool { return a[i] >= b_i })
		c_cnt := n - sort.Search(len(a), func(i int) bool { return c[i] > b_i })
		sum += a_cnt * c_cnt
	}

	fmt.Println(sum)
}
