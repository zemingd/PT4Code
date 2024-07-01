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

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())

	points := make([]point, N)
	allZero := true
	for i := 0; i < N; i++ {
		sc.Scan()
		x, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		y, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		h, _ := strconv.Atoi(sc.Text())

		if h != 0 {
			allZero = false
		}

		points[i] = point{x, y, h}
	}

	for x := 0; x < 101; x++ {
		for y := 0; y < 101; y++ {
			ok := true
			nowHeight := 0
			if allZero {
				nowHeight = 1
			}

			remainings := make([]int, 0)
			for i, p := range points {
				// 高さが0だとheightを推測出来ない
				if p.h == 0 && nowHeight == 0 {
					remainings = append(remainings, i)
				} else if nowHeight == 0 {
					nowHeight = p.h + abs(p.x-x) + abs(p.y-y)
				} else if (p.h != 0 && nowHeight != p.h+abs(p.x-x)+abs(p.y-y)) ||
					(p.h == 0 && nowHeight > abs(p.x-x)+abs(p.y-y)) {
					ok = false
					break
				}
			}

			for _, i := range remainings {
				p := points[i]
				if p.h == 0 && nowHeight > p.h+abs(p.x-x)+abs(p.y-y) {
					ok = false
				}
			}

			if ok {
				fmt.Printf("%d %d %d\n", x, y, nowHeight)
				return
			}
		}
	}
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
