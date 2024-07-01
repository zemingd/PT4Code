package main

import (
	"fmt"
	"sort"
)

type choice struct {
	can int
	val int
}

type choices []choice

func (p choices) Len() int           { return len(p) }
func (p choices) Less(i, j int) bool { return p[i].val > p[j].val }
func (p choices) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }

func main() {
	var n, m int
	fmt.Scan(&n)
	fmt.Scan(&m)

	as := make(sort.IntSlice, 0, n)
	for index := 0; index < n; index++ {
		var n int
		fmt.Scan(&n)
		as = append(as, n)
	}

	as.Sort()
	chs := make(choices, 0, m)
	for index := 0; index < m; index++ {
		var b, c int
		fmt.Scan(&b)
		fmt.Scan(&c)

		chs = append(chs, choice{can: b, val: c})
	}
	sort.Sort(chs)

	var idx int

	for _, item := range chs {
		keep := true
		for {
			if item.can == 0 {
				break
			}
			if as[idx] < item.val {
				as[idx] = item.val
				idx++
				item.can--
			} else {
				keep = false
				break
			}
			if idx >= n {
				keep = false
				break
			}
		}
		if !keep {
			break
		}
	}

	var re int64
	for _, item := range as {
		re += int64(item)
	}
	fmt.Println(re)
}
