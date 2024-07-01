package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type point struct {
	x, y, h int
}

func solve() {
	n := getInt()
	ps := make([]point, n)
	not0Height := -1
	for i := range ps {
		x, y, h := getInt(), getInt(), getInt()
		ps[i] = point{x, y, h}
		if h != 0 && not0Height == -1 {
			not0Height = i
		}
	}

	var center point
finLoop:
	for cx := 0; cx <= 100; cx++ {
	nextLoop:
		for cy := 0; cy <= 100; cy++ {
			ch := ps[not0Height].h + abs(ps[not0Height].x-cx) + abs(ps[not0Height].y-cy)
			for _, p := range ps {
				switch p.h {
				case 0:
					dist := max(abs(p.x-cx), abs(p.y-cy))
					if !(dist >= ch) {
						continue nextLoop
					}
				default:
					nowCh := p.h + abs(p.x-cx) + abs(p.y-cy)
					if ch != nowCh {
						continue nextLoop
					}
				}
			}
			center = point{cx, cy, ch}
			break finLoop
		}
	}

	fmt.Fprintln(wr, center.x, center.y, center.h)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

// -----------------------------------------

const (
	inf = 1 << 60
	// mod = 1000000007
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

func main() {
	maxBufSize := int(1e8)
	sc.Buffer(make([]byte, 4096), maxBufSize)
	sc.Split(bufio.ScanWords)
	solve()
	wr.Flush()
}

func getInt() (ret int) {
	sc.Scan()
	ret, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return
}

func getIntSlice(n int) (ret []int) {
	ret = make([]int, n)
	for i := range ret {
		ret[i] = getInt()
	}
	return
}

func getString() (ret string) {
	sc.Scan()
	ret = sc.Text()
	return
}

func getRunes() (ret []rune) {
	ret = []rune(getString())
	return
}
