package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

func newScanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	return scanner
}

func scanInt() int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func scanInts(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}

var sc = newScanner()

func main() {
	x, y, a, b, c := scanInt(), scanInt(), scanInt(), scanInt(), scanInt()
	p := scanInts(a)
	q := scanInts(b)
	r := scanInts(c)
	p = append(p, math.MaxInt32)
	q = append(q, math.MaxInt32)
	r = append(r, 0)
	sort.Sort(sort.Reverse(sort.IntSlice(p)))
	sort.Sort(sort.Reverse(sort.IntSlice(q)))
	sort.Sort(sort.Reverse(sort.IntSlice(r)))

	ans := int64(0)
	for i := 1; i <= x; i++ {
		ans += int64(p[i])
	}
	for i := 1; i <= y; i++ {
		ans += int64(q[i])
	}

	for p[x] < r[0] || q[y] < r[0] {
		ans += int64(r[0])
		r = r[1:]
		if p[x] < q[y] {
			ans -= int64(p[x])
			x--
		} else {
			ans -= int64(q[y])
			y--
		}
	}
	fmt.Println(ans)
}
