// Package main provides
//
// File:  d.go
// Author: ymiyamoto
//
// Created on Fri Dec 21 09:57:18 2018
//
package main

import "fmt"

type point struct {
	x, y int
}

type move struct {
	from, to point
}

func main() {
	var H, W int
	fmt.Scan(&H, &W)
	board := make([][]int, H)
	for i := range board {
		board[i] = make([]int, W)
		for j := range board[i] {
			fmt.Scan(&board[i][j])
		}
	}

	moves := make([]move, 0)
	for i := range board {
		for j := range board[i] {
			if j+1 < len(board[i]) && board[i][j]%2 == 1 {
				board[i][j]--
				board[i][j+1]++
				moves = append(moves, move{from: point{x: i + 1, y: j + 1}, to: point{x: i + 1, y: j + 1 + 1}})
			}
		}
	}

	for i := range board {
		if i+1 < len(board) && board[i][len(board[i])-1]%2 == 1 {
			board[i][len(board[i])-1]--
			board[i+1][len(board[i])-1]++
			moves = append(moves, move{from: point{x: i + 1, y: len(board[i])}, to: point{x: i + 2, y: len(board[i])}})
		}
	}

	fmt.Println(len(moves))
	for _, m := range moves {
		fmt.Println(m.from.x, m.from.y, m.to.x, m.to.y)
	}
}
