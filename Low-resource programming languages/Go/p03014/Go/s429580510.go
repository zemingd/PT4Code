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

	left := setupLeft(&grid)
	right := setupRight(&grid)
	up := setupUp(&grid, h, w)
	down := setupDown(&grid, h, w)

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

func setupLeft(grid *[]string) [][]int {
	result := make([][]int, len(*grid))
	for i, item := range *grid {
		result[i] = make([]int, len(item))
		for j, c := range item {
			if c == '#' {
				result[i][j] = 0
				continue
			}
			if j == 0 {
				result[i][j] = 1
				continue
			}
			result[i][j] = result[i][j-1]+1
		}
	}
	return result
}

func setupRight(grid *[]string) [][]int {
	result := make([][]int, len(*grid))
	for i, item := range *grid {
		result[i] = make([]int, len(item))
		for j := len(item)-1; j >= 0; j-- {
			c := item[j]
			if c == '#' {
				result[i][j] = 0
				continue
			}
			if j == len(item)-1 {
				result[i][j] = 1
				continue
			}
			result[i][j] = result[i][j+1]+1
		}
	}
	return result
}

func setupUp(grid *[]string, h, w int) [][]int {
	result := makeIntMatrix(h, w)
	g := *grid
	for i := 0; i < w; i++ {
		for j := 0; j < h; j++ {
			c := g[j][i]
			if c == '#' {
				result[j][i] = 0
				continue
			}
			if j == 0 {
				result[j][i] = 1
				continue
			}
			result[j][i] = result[j-1][i]+1
		}
	}
	return result
}

func setupDown(grid *[]string, h, w int) [][]int {
	result := makeIntMatrix(h, w)
	g := *grid
	for i := 0; i < w; i++ {
		for j := h-1; j >= 0 ; j-- {
			c := g[j][i]
			if c == '#' {
				result[j][i] = 0
				continue
			}
			if j == h-1 {
				result[j][i] = 1
				continue
			}
			result[j][i] = result[j+1][i]+1
		}
	}
	return result
}

func makeIntMatrix(h, w int) [][]int {
	result := make([][]int, h)
	for i := range result {
		result[i] = make([]int, w)
	}
	return result
}
