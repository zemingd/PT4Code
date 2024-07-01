// ProblemURL : https://atcoder.jp/contests/abc129/tasks/abc129_d
// ---------------------------------------------
package main

import "fmt"

func chmax(a *int, b int) bool {
	if *a < b {
		*a = b
		return true
	}
	return false
}

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	s := make([][]byte, h)
	for i := range s {
		fmt.Scan(&s[i])
	}

	l := make([][]int, h)
	r := make([][]int, h)
	for i := range l {
		l[i] = make([]int, w)
		r[i] = make([]int, w)
	}
	for i := range l {
		ctL := 0
		ctR := 0
		for j := range l[i] {
			if s[i][j] == '#' {
				ctL = 0
				l[i][j] = 0
			} else {
				ctL++
				l[i][j] = ctL
			}
			if s[i][w-1-j] == '#' {
				ctR = 0
				r[i][w-1-j] = 0
			} else {
				ctR++
				r[i][w-1-j] = ctR
			}
		}
	}

	u := make([][]int, h)
	d := make([][]int, h)
	for i := range u {
		u[i] = make([]int, w)
		d[i] = make([]int, w)
	}
	for i := 0; i < w; i++ {
		ctU := 0
		ctD := 0
		for j := 0; j < h; j++ {
			if s[j][i] == '#' {
				ctU = 0
				u[j][i] = 0
			} else {
				ctU++
				u[j][i] = ctU
			}
			if s[h-1-j][i] == '#' {
				ctD = 0
				d[h-1-j][i] = 0
			} else {
				ctD++
				d[h-1-j][i] = ctD
			}
		}
	}

	ans := 0
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if s[i][j] == '#' {
				continue
			}
			score := 0
			score += l[i][j]
			score += r[i][j]
			score += u[i][j]
			score += d[i][j]
			score -= 3
			chmax(&ans, score)
		}
	}
	fmt.Println(ans)
}
