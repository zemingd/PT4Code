package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

// sort struct

// https://atcoder.jp/contests/abc121/submissions/4519585
func main() {
	var n, m int
	fmt.Scan(&n, &m)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	es := make(entries, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())

		sc.Scan()
		b, _ := strconv.Atoi(sc.Text())

		es[i].a = a
		es[i].b = b
	}
	sort.Sort(es)

	ans := 0
	num := 0
	for _, e := range es {
		if num+e.b < m {
			ans += e.a * e.b
			num += e.b
		} else {
			ans += (m - num) * e.a
			break
		}
	}
	fmt.Println(ans)
}

type entry struct {
	a, b int
}

type entries []entry

func (es entries) Len() int {
	return len(es)
}

func (es entries) Swap(i, j int) {
	es[i], es[j] = es[j], es[i]
}
func (es entries) Less(i, j int) bool {
	return es[i].a < es[j].a
}
