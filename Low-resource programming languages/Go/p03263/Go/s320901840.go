package main

import "fmt"

func isEven(n int) bool { return n%2 == 0 }

type point struct{ x, y int }
type ppoint struct{ now, next point }

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	ass := make([][]int, h)
	for i := 0; i < h; i++ {
		ass[i] = make([]int, w)
		for j := 0; j < w; j++ {
			fmt.Scan(&ass[i][j])
		}
	}

	anss := make([]ppoint, 0, h*w)
	for iy := 0; iy < h; iy++ {
		for ix := 0; ix < w; ix++ {
			var now point
			if isEven(iy) {
				now.x = ix
				now.y = iy
			} else {
				now.x = w - 1 - ix
				now.y = iy
			}

			var next point
			if isEven(now.y) {
				if now.x == w-1 {
					next.x = now.x
					next.y = now.y + 1
				} else {
					next.x = now.x + 1
					next.y = now.y
				}
			} else {
				if now.x == 0 {
					next.x = now.x
					next.y = now.y + 1
				} else {
					next.x = now.x - 1
					next.y = now.y
				}
			}

			if next.y > h-1 {
				break
			}

			if isEven(ass[now.y][now.x]) {
				continue
			}
			ass[now.y][now.x]--
			ass[next.y][next.x]++
			pp := ppoint{now: now, next: next}
			anss = append(anss, pp)
		}
	}

	fmt.Println(len(anss))
	for _, pp := range anss {
		fmt.Println(pp.now.y+1, pp.now.x+1, pp.next.y+1, pp.next.x+1)
	}
}
