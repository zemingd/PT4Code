package main

import (
	"fmt"
	"os"
	"sort"
)

func debug(f string, a ...interface{}) {
	fmt.Fprintf(os.Stderr, f, a...)
	fmt.Fprintln(os.Stderr, "")
}

// pq  +----+
// lr  +-----------+
func main() {
	var N, M, Q int

	fmt.Scanf("%d %d %d\n", &N, &M, &Q)
	lrs := make(map[int][]int)
	var ls = make([]int, 0)
	var l, r int
	for i := 0; i < M; i++ {
		fmt.Scanf("%d %d\n", &l, &r)
		if lr, ok := lrs[l]; ok {
			lrs[l] = append(lr, r)
		} else {
			ls = append(ls, l)
			lrs[l] = []int{r}
		}
		fmt.Fprintf(os.Stderr, "%d, %d   : %v\n", l, r, lrs)
	}
	sort.Ints(ls)
	fmt.Fprintf(os.Stderr, "%v\n", ls)

	for i := 0; i < Q; i++ {
		var p, q int
		fmt.Scanf("%d %d\n", &p, &q)
		//fmt.Fprintf(os.Stderr, "[%d] p=%d, q=%d\n", i+1, p, q)
		count := 0
		//fmt.Fprintf(os.Stderr, "p=%d, q=%d\n", p, q)
		for _, l := range ls {
			//fmt.Fprintf(os.Stderr, "pre p=%d, q=%d l=%d, %v\n", p, q, l, lrs[l])
			if p <= l {
				for _, r := range lrs[l] {
					if r <= q {
						count += 1
						//fmt.Fprintf(os.Stderr, "  OK [%d] p=%d, q=%d  l=%d\n", i+1, p, q, l)
					} else {
						//fmt.Fprintf(os.Stderr, "  NG [%d] p=%d, q=%d  l=%d\n", i+1, p, q, l)
					}
				}
			} else {
				//fmt.Fprintf(os.Stderr, "  NG [%d] p=%d, q=%d  l=%d\n", i+1, p, q, l)
			}
		}
		//fmt.Fprintf(os.Stderr, "p=%d, q=%d  -> %d\n", p, q, count)
		fmt.Println(count)
	}
}
