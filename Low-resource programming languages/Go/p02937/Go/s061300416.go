package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func lowerBound(a []int, x int) int {
	n := len(a)
	ok := n
	ng := -1
	for ok-ng > 1 {
		mid := (ok + ng) / 2
		if a[mid] >= x {
			ok = mid
		} else {
			ng = mid
		}
	}
	return ok
}

func main() {
	sc.Split(bufio.ScanWords)

	s := next()
	t := next()

	idxs := make([][]int, 256)
	for i := 0; i < len(s); i++ {
		idxs[s[i]] = append(idxs[s[i]], i)
	}

	// [0, cur)
	cur := 0
	ng := false
	for i := 0; i < len(t); i++ {
		is := idxs[t[i]]
		if is == nil || len(is) == 0 {
			ng = true
			break
		}
		nidx := lowerBound(is, cur)
		if nidx == len(is) {
			nidx = 0
		}
		ncur := (cur/len(s))*len(s) + is[nidx] + 1
		if ncur <= cur {
			ncur += len(s)
		}
		cur = ncur
	}
	if ng {
		fmt.Println(-1)
	} else {
		fmt.Println(cur)
	}
}
