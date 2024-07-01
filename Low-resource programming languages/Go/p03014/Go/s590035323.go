package main

import (
	"fmt"
)

func main() {
	var H, W int
	fmt.Scan(&H)
	fmt.Scan(&W)

	var board []string
	var s string
	for i := 0; i < H; i++ {
		fmt.Scan(&s)
		board = append(board, s)
	}

	rowLamps := make([][]int, H)
	columnLamps := make([][]int, H)
	for i := 0; i < H; i++ {
		row := make([]int, W)
		rowLamps[i] = row
	}
	for i := 0; i < H; i++ {
		row := make([]int, W)
		columnLamps[i] = row
	}

	rowLamp := 0
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if j == 0 {
				rowLamp = calcRowLamp(i, j, W, board)
			}
			if board[i][j:j+1] == "#" {
				if j != W-1 {
					rowLamp = calcRowLamp(i, j+1, W, board)
				}
				continue
			}
			rowLamps[i][j] = rowLamp
		}
	}

	columnLamp := 0
	for j := 0; j < W; j++ {
		for i := 0; i < H; i++ {
			if j == 0 {
				columnLamp = calcColumnLamp(i, j, W, board)
			}
			if board[i][j:j+1] == "#" {
				if j != W-1 {
					columnLamp = calcColumnLamp(i, j+1, W, board)
				}
				continue
			}
			columnLamps[i][j] = columnLamp
		}
	}

	max := 0
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			lamp := rowLamps[i][j] + columnLamps[i][j] - 1
			if lamp > max {
				max = lamp
			}
		}
	}

	fmt.Println(max)
}

func calcRowLamp(i, j, W int, board []string) int {
	if board[i][j:j+1] == "#" {
		return 0
	}

	c := 1
	// left
	for column := j - 1; column >= 0; column-- {
		if board[i][column:column+1] == "#" {
			break
		}
		c++
	}
	// right
	for column := j + 1; column < W; column++ {
		if board[i][column:column+1] == "#" {
			break
		}
		c++
	}

	return c
}

func calcColumnLamp(i, j, H int, board []string) int {
	if board[i][j:j+1] == "#" {
		return 0
	}

	c := 1
	// up
	for row := i - 1; row >= 0; row-- {
		if board[row][j:j+1] == "#" {
			break
		}
		c++
	}
	// down
	for row := i + 1; row < H; row++ {
		if board[row][j:j+1] == "#" {
			break
		}
		c++
	}
	return c
}

func calcLamp(i, j, H, W int, board []string) int {
	if board[i][j:j+1] == "#" {
		return 0
	}

	c := 1
	// up
	for row := i - 1; row >= 0; row-- {
		if board[row][j:j+1] == "#" {
			break
		}
		c++
	}
	// down
	for row := i + 1; row < H; row++ {
		if board[row][j:j+1] == "#" {
			break
		}
		c++
	}
	// left
	for column := j - 1; column >= 0; column-- {
		if board[i][column:column+1] == "#" {
			break
		}
		c++
	}
	// right
	for column := j + 1; column < W; column++ {
		if board[i][column:column+1] == "#" {
			break
		}
		c++
	}

	return c
}
