package main

import (
	"fmt"
)

type point struct {
	x int
	y int
	h int
}

func main() {
	var n int
	fmt.Scan(&n)
	ar := make([]point, n)
	for i := range ar {
		fmt.Scan(&ar[i].x, &ar[i].y, &ar[i].h)
	}
	for x := 0; x <= 100; x++ {
		for y := 0; y <= 100; y++ {
			h := 0
			for _, v := range ar {
				if v.h > 0 {
					h = v.h + abs(v.x-x) + abs(v.y-y)
				}
			}
			if h <= 0 {
				continue
			}
			isValid := true
			for _, v := range ar {
				if v.h != max(h-abs(v.x-x)-abs(v.y-y), 0) {
					isValid = false
					break
				}
			}
			if isValid {
				fmt.Printf("%d %d %d\n", x, y, h)
				return
			}
		}
	}
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
