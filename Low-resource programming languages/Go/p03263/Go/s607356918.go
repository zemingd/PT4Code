// Package main provides
//
// File:  d.go
// Author: ymiyamoto
//
// Created on Wed Dec  5 00:45:04 2018
//
package main

import "fmt"

type pos struct {
	x, y int
}

type move struct {
	from pos
	to   pos
}

func (m *move) println() {
	fmt.Println(m.from.y+1, m.from.x+1, m.to.y+1, m.to.x+1)
}

var h, w int

func main() {
	fmt.Scan(&h, &w)

	board := make([][]int, h)
	for i := range board {
		board[i] = make([]int, w)
	}

	for i := range board {
		for j := range board[i] {
			fmt.Scan(&board[i][j])
		}
	}

	var arr []move
	for i := range board {
		for j := range board[i] {
			if board[i][j]%2 == 1 && j+1 < len(board[i]) {
				board[i][j]--
				board[i][j+1]++
				arr = append(arr, move{from: pos{y: i, x: j}, to: pos{y: i, x: j + 1}})
			}
		}
	}

	for i := range board {
		last := len(board[i]) - 1
		if i+1 < len(board) && board[i][last]%2 == 1 {
			board[i][last]--
			board[i+1][last]++
			arr = append(arr, move{from: pos{y: i, x: last}, to: pos{y: i + 1, x: last}})
		}
	}

	fmt.Println(len(arr))
	for i := range arr {
		arr[i].println()
	}
}
