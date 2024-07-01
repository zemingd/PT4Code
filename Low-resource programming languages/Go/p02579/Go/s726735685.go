package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	var ch, cw int
	fmt.Scan(&ch, &cw)
	ch--
	cw--
	var dh, dw int
	fmt.Scan(&dh, &dw)
	dh--
	dw--

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	ss := make([][]byte, h)
	for i := range ss {
		sc.Scan()
		ss[i] = []byte(sc.Text())
	}

	cs := make([][]int, h)
	for i := range cs {
		cs[i] = make([]int, w)
	}

	dx := []int{0, 1, 0, -1}
	dy := []int{1, 0, -1, 0}

	nqs := make([][]int, 0)
	iqs := make([][]int, 0)
	iqs = append(nqs, []int{ch, cw, 0})
	for len(iqs) > 0 {
		qs := make([][]int, 0)
		qs = append(qs, iqs...)
		nqs := make([][]int, 0)
		for len(qs) > 0 {
			q := qs[0]
			qs = qs[1:]
			y, x := q[0], q[1]
			//fmt.Println("y,x: ", y, x)
			for i := range dx {
				ny, nx := y+dy[i], x+dx[i]
				if ny < 0 || ny >= h || nx < 0 || nx >= w {
					continue
				}
				if cs[ny][nx] == 1 {
					continue
				}
				if ss[ny][nx] == '#' {
					continue
				}
				if ny == dh && nx == dw {
					fmt.Println(q[2])
					return
				}
				cs[ny][nx] = 1
				qs = append(qs, []int{ny, nx, q[2]})
				nqs = append(nqs, []int{ny, nx, q[2]})
			}
		}
		nqs = append(nqs, iqs...)
		iqs = make([][]int, 0)
		for len(nqs) > 0 {
			q := nqs[0]
			nqs = nqs[1:]
			y, x := q[0], q[1]
			for dy := -2; dy <= 2; dy++ {
				for dx := -2; dx <= 2; dx++ {
					if dy == 0 && abs(dx) <= 1 {
						continue
					}
					if dx == 0 && abs(dy) <= 1 {
						continue
					}
					ny, nx := y+dy, x+dx
					if ny < 0 || ny >= h || nx < 0 || nx >= w {
						continue
					}
					if cs[ny][nx] == 1 {
						continue
					}
					if ss[ny][nx] == '#' {
						continue
					}
					if ny == dh && nx == dw {
						fmt.Println(q[2] + 1)
						return
					}
					cs[ny][nx] = 1
					iqs = append(iqs, []int{ny, nx, q[2] + 1})
				}
			}
		}
	}

	fmt.Println(-1)
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
