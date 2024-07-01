package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var _sw = bufio.NewScanner(os.Stdin)

type pos struct {
	h int
	w int
}

var infty = 100000

func main() {
	H, W := NextInt(), NextInt()
	startH, startW := NextInt(), NextInt()
	goalH, goalW := NextInt(), NextInt()

	startH--
	startW--
	goalH--
	goalW--

	dist := make([][]int, H)
	wall := make([][]bool, H)
	for h := 0; h < H; h++ {
		dist[h] = make([]int, W)
		wall[h] = make([]bool, W)

		s := NextString()
		for w, c := range s {
			wall[h][w] = c == '#'
			dist[h][w] = infty
		}
	}

	q1 := make([]pos, 100000)
	q1[0] = pos{startH, startW}
	q2 := make([]pos, 100000)
	q2[0] = pos{startH, startW}

	dist[startH][startW] = 0

	for len(q1) > 0 {
		for len(q1) > 0 {
			var p pos
			p, q1 = q1[0], q1[1:]
			q2 = append(q2, p)

			done := make([][]bool, H)
			for h := 0; h < H; h++ {
				done[h] = make([]bool, W)
			}

			for _, d := range []pos{{-1, 0}, {+1, 0}, {0, -1}, {0, +1}} {
				p_ := pos{p.h + d.h, p.w + d.w}
				if p_.h < 0 || H <= p_.h || p_.w < 0 || W <= p_.w {
					continue
				}
				if wall[p_.h][p_.w] {
					continue
				}
				if done[p_.h][p_.w] {
					continue
				}
				if dist[p_.h][p_.w] <= dist[p.h][p.w] {
					continue
				}

				dist[p_.h][p_.w] = dist[p.h][p.w]
				done[p_.h][p_.w] = true

				if p_.h == goalH && p_.w == goalW {
					fmt.Println(dist[p_.h][p_.w])
					return
				}

				q1 = append(q1, p_)
				q2 = append(q2, p_)
			}
		}

		for len(q2) > 0 {
			var p pos
			p, q2 = q2[0], q2[1:]

			done := make([][]bool, H)
			for h := 0; h < H; h++ {
				done[h] = make([]bool, W)
			}

			for dw := -2; dw <= +2; dw++ {
				for dh := -2; dh <= +2; dh++ {
					if (dw == 0 && dh == 0) || (dw == 0 && (dh == -1 || dh == +1)) || (dh == 0 && (dw == -1 || dw == +1)) {
						continue
					}

					p_ := pos{p.h + dh, p.w + dw}
					if p_.h < 0 || H <= p_.h || p_.w < 0 || W <= p_.w {
						continue
					}
					if wall[p_.h][p_.w] {
						continue
					}
					if done[p_.h][p_.w] {
						continue
					}
					if dist[p_.h][p_.w] <= dist[p.h][p.w]+1 {
						continue
					}

					dist[p_.h][p_.w] = dist[p.h][p.w] + 1
					done[p_.h][p_.w] = true

					if p_.h == goalH && p_.w == goalW {
						fmt.Println(dist[p_.h][p_.w])
						return
					}

					q1 = append(q1, p_)
					q2 = append(q2, p_)
				}
			}
		}
	}

	fmt.Println(-1)
}

func init() {
	_sw.Split(bufio.ScanWords)
}

func NextInt() int {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	i, e := strconv.Atoi(_sw.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func NextInts(n int) []int {
	a := make([]int, n)
	for i := range a {
		a[i] = NextInt()
	}
	return a
}

func NextString() string {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	return _sw.Text()
}

func Max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func Min(x, y int) int {
	if x > y {
		return y
	}
	return x
}

func Bounded(lower, n, upper int) int {
	return Min(upper, Max(lower, n))
}

func SortInts(xs []int) {
	sort.Sort(sort.IntSlice(xs))
}

func ReverseSortInts(xs []int) {
	sort.Sort(sort.Reverse(sort.IntSlice(xs)))
}
