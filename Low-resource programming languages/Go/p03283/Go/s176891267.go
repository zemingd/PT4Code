package main

import (
	"fmt"
	"os"
)

func debug(f string, a ...interface{}) {
	fmt.Fprintf(os.Stderr, f, a...)
	fmt.Fprintln(os.Stderr, "")
}

type pair struct {
	l int
	r int
}

func main() {
	var N, M, Q int

	fmt.Scanf("%d %d %d\n", &N, &M, &Q)
	var lrs []pair

	var t pair
	for i := 0; i < M; i++ {
		fmt.Scanf("%d %d\n", &t.l, &t.r)
		//fmt.Fprintf(os.Stderr, "lr[%3d] %d %d\n", i+1, t.l, t.r)
		lrs = append(lrs, t)
	}

	for i := 0; i < Q; i++ {
		var p, q int
		fmt.Scanf("%d %d\n", &p, &q)
		//fmt.Fprintf(os.Stderr, "[%d] p=%d, q=%d\n", i+1, p, q)
		count := 0
		//fmt.Fprintf(os.Stderr, "p=%d, q=%d\n", p, q)
		for _, lr := range lrs {
			if p <= lr.l {
				if lr.r <= q {
					//fmt.Fprintf(os.Stderr, "lr=[%d, %d]\t %d <= %d && %d <= %d\t\t%s\n", lr.l, lr.r, p, lr.l, lr.r, q, "OK")
					count += 1
				}
			} else {
				continue
				//fmt.Fprintf(os.Stderr, "lr=[%d, %d]\t %d <= %d && %d <= %d\t\t%s\n", lr.l, lr.r, p, lr.l, lr.r, q, "NG")
			}
		}
		//fmt.Fprintf(os.Stderr, "p=%d, q=%d  -> %d\n", p, q, count)
		fmt.Println(count)
	}
}
