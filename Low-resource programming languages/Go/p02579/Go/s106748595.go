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

var MAX = 100000000

func main() {
	H, W := NextInt(), NextInt()
	startH, startW := NextInt(), NextInt()
	goalH, goalW := NextInt(), NextInt()

	wall := make([][]bool, H)
	dist := make([][]int, H)
	for h := 0; h < H; h++ {
		wall[h] = make([]bool, W)
		dist[h] = make([]int, W)

		s := NextString()
		for w, c := range s {
			wall[h][w] = c == '#'
			dist[h][w] = MAX
		}
	}

	dist[startH-1][startW-1] = 0
	queue := make([]pos, 1, 100000)
	queue[0] = pos{startH - 1, startW - 1}
	for len(queue) > 0 {
		p := queue[0]
		queue = queue[1:]
		for _, dh := range []int{-2, -1, 0, +1, +2} {
			for _, dw := range []int{-2, -1, 0, +1, +2} {
				h_, w_ := p.h+dh, p.w+dw
				if !(0 <= h_ && h_ < H && 0 <= w_ && w_ < W) {
					continue
				}
				if dh == 0 && dw == 0 {
					continue
				}
				if dh == 0 && (dw == -1 || dw == 1) {
					if !wall[h_][w_] && dist[h_][w_] > dist[p.h][p.w] {
						dist[h_][w_] = dist[p.h][p.w]
						queue = append(queue, pos{h_, w_})
					}
				}
				if dw == 0 && (dh == -1 || dh == 1) {
					if !wall[h_][w_] && dist[h_][w_] > dist[p.h][p.w] {
						dist[h_][w_] = dist[p.h][p.w]
						queue = append(queue, pos{h_, w_})
					}
				}

				if !wall[h_][w_] && dist[h_][w_] > dist[p.h][p.w]+1 {
					dist[h_][w_] = dist[p.h][p.w] + 1
					queue = append(queue, pos{h_, w_})
				}
			}
		}
	}

	ans := dist[goalH-1][goalW-1]
	if ans == MAX {
		ans = -1
	}
	fmt.Println(ans)
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
