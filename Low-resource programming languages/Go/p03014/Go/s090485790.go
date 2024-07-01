package main

import "fmt"

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	s := make([]string, h)
	lc := make([][]int, h)
	rc := make([][]int, h)
	uc := make([][]int, h)
	dc := make([][]int, h)
	for i := 0; i < h; i++ {
		fmt.Scan(&s[i])
		lc[i] = make([]int, w)
		rc[i] = make([]int, w)
		uc[i] = make([]int, w)
		dc[i] = make([]int, w)
	}

	for i := 0; i < h; i++ {
		cl, cr := 0, 0
		for j := 0; j < w; j++ {
			if s[i][j] == '#' {
				cl = 0
			} else {
				cl++
			}
			lc[i][j] = cl

			if s[i][w-j-1] == '#' {
				cr = 0
			} else {
				cr++
			}
			rc[i][w-j-1] = cr
		}
	}

	for j := 0; j < w; j++ {
		cu, cd := 0, 0
		for i := 0; i < h; i++ {
			if s[i][j] == '#' {
				cu = 0
			} else {
				cu++
			}
			uc[i][j] = cu

			if s[h-i-1][j] == '#' {
				cd = 0
			} else {
				cd++
			}
			dc[h-i-1][j] = cd
		}
	}

	ans := 0
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			ans = max(
				ans,
				lc[i][j]+rc[i][j]+uc[i][j]+dc[i][j]-3,
			)
		}
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
