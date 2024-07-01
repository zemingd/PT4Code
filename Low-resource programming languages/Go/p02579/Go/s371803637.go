package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func Scan() string {
	sc.Scan()
	return sc.Text()
}
func iScan() int {
	n, _ := strconv.Atoi(Scan())
	return n
}
func fScan() float64 {
	n, _ := strconv.ParseFloat(Scan(), 64)
	return n
}
func stringToInt(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}
func SScan(n int) []string {
	a := make([]string, n)
	for i := 0; i < n; i++ {
		a[i] = Scan()
	}
	return a
}
func iSScan(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = iScan()
	}
	return a
}
func abs(x int) int {
	if x < 0 {
		x = -x
	}
	return x
}
func larger(a, b int) int {
	if a < b {
		return b
	} else {
		return a
	}
}
func smaller(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}
func max(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x < a[i] {
			x = a[i]
		}
	}
	return x
}
func min(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x > a[i] {
			x = a[i]
		}
	}
	return x
}
func sum(a []int) int {
	x := 0
	for _, v := range a {
		x += v
	}
	return x
}
func fSum(a []float64) float64 {
	x := 0.
	for _, v := range a {
		x += v
	}
	return x
}

var mod int = 1000000007

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	h, w := iScan(), iScan()
	ch, cw := iScan()+1, iScan()+1
	dh, dw := iScan()+1, iScan()+1
	s := make([]string, h+4)
	s[0] = strings.Repeat("#", w+4)
	s[1] = strings.Repeat("#", w+4)
	s[h+2] = strings.Repeat("#", w+4)
	s[h+3] = strings.Repeat("#", w+4)
	for i := 2; i <= h+1; i++ {
		s[i] = "##" + Scan() + "##"
	}
	x := []int{-2, -1, 0, 1, 2}
	q := make([][]int, 1, h*w)
	fin := make([][]int, 0, h*w)
	q[0] = []int{ch, cw}
	r := make([][]int, 1, h*w)
	r[0] = []int{ch, cw}
	cost := make([][]int, h+4)
	for i := 0; i < h+4; i++ {
		cost[i] = make([]int, w+4)
		for j := 0; j < w+4; j++ {
			cost[i][j] = mod * mod
		}
	}
	cost[ch][cw] = 0
	for len(q) != 0 || len(r) != 0 {
		for len(q) != 0 {
			i, j := q[0][0], q[0][1]
			q = q[1:]
			if string(s[i+1][j]) == "." {
				if cost[i+1][j] > cost[i][j] {
					q = append(q, []int{i + 1, j})
					cost[i+1][j] = cost[i][j]
					fin = append(fin, []int{i + 1, j})
				}
			}
			if string(s[i-1][j]) == "." {
				if cost[i-1][j] > cost[i][j] {
					q = append(q, []int{i - 1, j})
					cost[i-1][j] = cost[i][j]
					fin = append(fin, []int{i - 1, j})
				}
			}
			if string(s[i][j+1]) == "." {
				if cost[i][j+1] > cost[i][j] {
					q = append(q, []int{i, j + 1})
					cost[i][j+1] = cost[i][j]
					fin = append(fin, []int{i, j + 1})
				}
			}
			if string(s[i][j-1]) == "." {
				if cost[i][j-1] > cost[i][j] {
					q = append(q, []int{i, j - 1})
					cost[i][j-1] = cost[i][j]
					fin = append(fin, []int{i, j - 1})
				}
			}
		}
		d := make(map[[2]int]struct{})
		for _, v := range fin {
			d[[2]int{v[0], v[1]}] = struct{}{}
		}
		for k, _ := range d {
			r = append(r, []int{k[0], k[1]})
		}
		fin = make([][]int, 0, h*w)
		for len(r) != 0 {
			i, j := r[0][0], r[0][1]
			r = r[1:]
			for _, v := range x {
				for _, y := range x {
					if v == 0 && y == 0 {
						continue
					} else if (v == 0 && abs(y) == 1) || (abs(v) == 1 && y == 0) {
						continue
					} else {
						if string(s[i+v][j+y]) == "." {
							q = append(q, []int{i + v, j + y})
							if cost[i+v][j+y] > cost[i][j]+1 {
								cost[i+v][j+y] = cost[i][j] + 1
								fin = append(fin, []int{i + v, j + y})
							}
						}
					}
				}
			}
		}
		d = make(map[[2]int]struct{})
		for _, v := range fin {
			d[[2]int{v[0], v[1]}] = struct{}{}
		}
		for k, _ := range d {
			q = append(q, []int{k[0], k[1]})
		}
		fin = make([][]int, 0, h*w)
	}
	ans := cost[dh][dw]
	if ans == mod*mod {
		fmt.Println(-1)
	} else {
		fmt.Println(ans)
	}
}
