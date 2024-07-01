package main

import (
	"fmt"
	"sort"
)

func main() {
	var X, Y, A, B, C int
	fmt.Scan(&X, &Y, &A, &B, &C)

	ps := make([]int64, A)
	for i := 0; i < A; i++ {
		fmt.Scan(&ps[i])
	}
	sort.Slice(ps, func(i, j int) bool {
		return ps[i] > ps[j]
	})

	qs := make([]int64, B)
	for i := 0; i < B; i++ {
		fmt.Scan(&qs[i])
	}
	sort.Slice(qs, func(i, j int) bool {
		return qs[i] > qs[j]
	})

	rs := make([]int64, C)
	for i := 0; i < C; i++ {
		fmt.Scan(&rs[i])
	}
	sort.Slice(rs, func(i, j int) bool {
		return rs[i] > rs[j]
	})

	ps2 := make([]int64, X)
	for i := 0; i < X; i++ {
		ps2[i] = ps[X-1-i]
	}
	qs2 := make([]int64, Y)
	for i := 0; i < Y; i++ {
		qs2[i] = qs[Y-1-i]
	}

	x, y, c := 0, 0, 0
	for {
		if c == C {
			break
		}
		if x == X {
			if qs2[y] > rs[c] {
				break
			}
			qs2[y] = rs[c]
			y++
			c++
		} else if y == Y {
			if ps2[x] > rs[c] {
				break
			}
			ps2[x] = rs[c]
			x++
			c++
		} else {
			if min(ps2[x], qs2[y], rs[c]) == ps2[x] {
				ps2[x] = rs[c]
				x++
				c++
			} else if min(ps2[x], qs2[y], rs[c]) == qs2[y] {
				qs2[y] = rs[c]
				y++
				c++
			} else {
				break
			}
		}
	}
	var ret int64
	for _, p := range ps2 {
		ret += p
	}
	for _, q := range qs2 {
		ret += q
	}
	fmt.Println(ret)
}

func min(x, y, z int64) int64 {
	if x < y {
		if x < z {
			return x
		} else {
			return z
		}
	} else {
		if y < z {
			return y
		}
	}
	return z
}
