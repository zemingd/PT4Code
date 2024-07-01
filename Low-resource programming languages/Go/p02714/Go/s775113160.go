package main

import "fmt"

var (
	N          int
	S          string
	rs, gs, bs []int
)

func main() {
	fmt.Scan(&N, &S)
	rs = make([]int, 0, N)
	gs = make([]int, 0, N)
	bs = make([]int, 0, N)

	for i, c := range S {
		if c == 'R' {
			rs = append(rs, i)
		}
		if c == 'G' {
			gs = append(gs, i)
		}
		if c == 'B' {
			bs = append(bs, i)
		}
	}

	ans := 0
	for i, c := range S {
		ans += search(i, c)
	}
	fmt.Println(ans)
}

func search(i int, c rune) int {
	var x, y []int
	if c == 'R' {
		x, y = gs, bs
	} else if c == 'G' {
		x, y = rs, bs
	} else {
		x, y = rs, gs
	}
	ans := 0
	for _, j := range x {
		for _, k := range y {
			if j <= i || k <= i {
				continue
			}
			if max(j, k)-min(j, k) != min(j, k)-i {
				ans++
			}
		}
	}
	return ans
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}
func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
