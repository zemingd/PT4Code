package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func canBeTriangle(a, b, c int) bool {
	return a < b+c
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	l := make([]int, n)
	for i := 0; i < n; i++ {
		l[i] = nextInt()
	}

	sort.Ints(l)

	ans := 0
	for left := 0; left < n-2; left++ {
		r := left+2
		for m := left+1; m < n-1; m++ {
			if m >= r {
				r = m+1
			}
			for r < n && canBeTriangle(l[r], l[m], l[left]) {
				r++
			}

			ans += r - (m+1)
		}
	}

	fmt.Println(ans)
}