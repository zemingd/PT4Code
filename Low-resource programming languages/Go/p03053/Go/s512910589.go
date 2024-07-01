package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

const INF = 1000000000

type node struct {
	depth int
	adj   []*node
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	h, w := nextInt(), nextInt()

	var root node
	root.depth = -1
	board := make([][]*node, h)
	for i := range board {
		sc.Scan()
		s := sc.Text()
		line := make([]*node, w)
		for j, r := range s {
			line[j] = &node{}
			line[j].depth = INF
			if r == '#' {
				root.adj = append(root.adj, line[j])
			}
		}
		board[i] = line
	}

	for i, line := range board {
		for j := range line {
			if i > 0 {
				board[i][j].adj = append(board[i][j].adj, board[i-1][j])
			}
			if i < h-1 {
				board[i][j].adj = append(board[i][j].adj, board[i+1][j])
			}
			if j > 0 {
				board[i][j].adj = append(board[i][j].adj, board[i][j-1])
			}
			if j < w-1 {
				board[i][j].adj = append(board[i][j].adj, board[i][j+1])
			}
		}
	}

	queue := []*node{&root}
	for len(queue) > 0 {
		grid := queue[0]
		queue = queue[1:]
		for _, other := range grid.adj {
			if other.depth > grid.depth+1 {
				other.depth = grid.depth + 1
				queue = append(queue, other)
			}
		}
	}

	ans := 0
	for _, line := range board {
		for _, grid := range line {
			if ans < grid.depth {
				ans = grid.depth
			}
		}
	}
	fmt.Println(ans)
}
