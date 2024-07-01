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
	for i := range l {
		l[i] = make([]int, w)
	}
	for i := range l {
		ct := 0
		for j := range l[i] {
			if s[i][j] == '#' {
				ct = 0
				l[i][j] = 0
			} else {
				ct++
				l[i][j] = ct
			}
		}
	}

	r := make([][]int, h)
	for i := range r {
		r[i] = make([]int, w)
	}
	for i := range r {
		ct := 0
		for j := range r[i] {
			if s[i][w-1-j] == '#' {
				ct = 0
				r[i][w-1-j] = 0
			} else {
				ct++
				r[i][w-1-j] = ct
			}
		}
	}

	u := make([][]int, h)
	for i := range u {
		u[i] = make([]int, w)
	}
	for i := 0; i < w; i++ {
		ct := 0
		for j := 0; j < h; j++ {
			if s[j][i] == '#' {
				ct = 0
				u[j][i] = 0
			} else {
				ct++
				u[j][i] = ct
			}
		}
	}

	d := make([][]int, h)
	for i := range d {
		d[i] = make([]int, w)
	}
	for i := 0; i < w; i++ {
		ct := 0
		for j := 0; j < h; j++ {
			if s[h-1-j][i] == '#' {
				ct = 0
				d[h-1-j][i] = 0
			} else {
				ct++
				d[h-1-j][i] = ct
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
