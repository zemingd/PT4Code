package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60

func ri() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func p(sta []int, x int) []int { return append(sta, x) }

func pf(x int, a []int) []int { return append([]int{x}, a...) }

func main() {
	sc.Split(bufio.ScanWords)
	n := ri()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = ri()
	}
	b := make([]int, 0, len(a))
	for i, aa := range a {
		if i%2 == 0 {
			b = p(b, aa)
		} else {
			b = pf(aa, b)
		}
	}
	if n%2 == 1 {
		sort.Sort(sort.Reverse(sort.IntSlice(b)))
	}
	for i := 0; i < len(b)-1; i++ {
		fmt.Printf("%d ", b[i])
	}
	fmt.Printf("%d\n", b[len(b)-1])
}
