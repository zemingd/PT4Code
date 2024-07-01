package main

import (
	"fmt"
	"math/rand"
)

func main() {
	var D int
	fmt.Scan(&D)
	cs := make([]int, 26)
	for i := 0; i < 26; i++ {
		fmt.Scan(&cs[i])
	}

	ss := make([][26]int, D)
	for i := 0; i < D; i++ {
		for j := 0; j < 26; j++ {
			fmt.Scan(&ss[i][j])
		}
	}

	ts := make([]int, D)
	for d := 0; d < D; d++ {
		sat := int(-1e9)
		t := 0
		for i := 0; i < 26; i++ {
			ts[d] = i + 1
			s := solve(d+1, ts, cs, ss)
			if sat <= s {
				sat = s
				t = ts[d]
			}
		}
		ts[d] = t
	}

	for i := 0; i < 1000; i++ {
		d := rand.Intn(365)
		q := rand.Intn(25) + 1
		sat1 := solve(D, ts, cs, ss)

		t := ts[d]
		ts[d] = q
		sat2 := solve(D, ts, cs, ss)
		if sat1 < sat2 {
			continue
		}

		ts[d] = t
	}

	for i := 0; i < len(ts); i++ {
		fmt.Println(ts[i])
	}
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func solve(D int, ts []int, cs []int, ss [][26]int) int {
	last := [26]int{}
	sat := 0
	for d := 0; d < D; d++ {
		j := ts[d] - 1
		last[j] = d + 1
		for i := 0; i < 26; i++ {
			sat -= (d + 1 - last[i]) * cs[i]
		}
		sat += ss[d][j]
	}

	return sat
}
