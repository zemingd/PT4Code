package main

import (
	"fmt"
)

func main() {
	var h, w int
	fmt.Scanf("%d %d", &h, &w)

	grid := make([]string, h)
	var str string
	for index := range grid {
		fmt.Scanf("%s", &str)
		grid[index] = str
	}

	left := [2000][2000]int{}
	right := [2000][2000]int{}
	up := [2000][2000]int{}
	down := [2000][2000]int{}

	for i := 0; i < h; i++ {
		cnt := 0
		for j := 0; j < w; j++ {
			if grid[i][j] == '#' {
				cnt = 0
				left[i][j] = 0
				continue
			}
			cnt++
			left[i][j] = cnt
		}
	}

	for i := 0; i < h; i++ {
		cnt := 0
		for j := w-1; j >= 0; j-- {
			if grid[i][j] == '#' {
				cnt = 0
				right[i][j] = 0
				continue
			}
			cnt++
			right[i][j] = cnt
		}
	}

	for j := 0; j < w; j++ {
		cnt := 0
		for i := 0; i < h; i++ {
			if grid[i][j] == '#' {
				cnt = 0
				up[i][j] = 0
				continue
			}
			cnt++
			up[i][j] = cnt
		}
	}

	for j := 0; j < w; j++ {
		cnt := 0
		for i := h-1; i >= 0; i-- {
			if grid[i][j] == '#' {
				cnt = 0
				down[i][j] = 0
				continue
			}
			cnt++
			down[i][j] = cnt
		}
	}


	max := 0
	for i := 0; i<h; i++ {
		for j := 0; j<w; j++ {
			current := left[i][j] + right[i][j] + up[i][j] + down[i][j] - 3
			if current > max {
				max = current
			}
		}
	}

	fmt.Println(max)
}

