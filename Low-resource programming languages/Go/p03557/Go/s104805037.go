package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)

	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	b := make([]int, n)
	c := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}
	for i := 0; i < n; i++ {
		b[i] = nextInt()
	}
	for i := 0; i < n; i++ {
		c[i] = nextInt()
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	sort.Ints(b)
	sort.Ints(c)

	ans := 0
	for bi := 0; bi < n; bi++ {
		bv := b[bi]
		ai := sort.Search(n, func(i int) bool {
			return a[i] < bv
		})
		if n <= ai {
			continue
		}

		ci := sort.Search(n, func(i int) bool {
			return c[i] > bv
		})
		if n <= ci {
			continue
		}

		ans += (n - ai) * (n - ci)
	}

	fmt.Println(ans)
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
