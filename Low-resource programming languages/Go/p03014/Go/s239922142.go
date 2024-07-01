package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	sc       = bufio.NewScanner(os.Stdin)
	grid     []string
	h, w     int
	maxUp    [gridSize][gridSize]int
	maxDown  [gridSize][gridSize]int
	maxLeft  [gridSize][gridSize]int
	maxRight [gridSize][gridSize]int
)

const gridSize = 2020

func init() {
	// sc.Split(bufio.ScanWords)
}

func input() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func calcMaxDown() { //j..left, i..up,
	var cnt int
	for j := 0; j < w; j++ {
		for i := h - 1; i >= 0; i-- {
			if grid[i][j] == '#' {
				cnt = 0
				continue
			}

			maxDown[i][j] = cnt
			cnt += 1
		}
		cnt = 0
	}
}

func calcMaxUp() { //j..left, i..down
	var cnt int
	for j := 0; j < w; j++ {
		for i := 0; i < h; i++ {
			if grid[i][j] == '#' {
				cnt = 0
				continue
			}

			maxUp[i][j] = cnt
			cnt += 1
		}
		cnt = 0
	}
}

func calcMaxLeft() { //j..right, i..down
	var cnt int
	for i := 0; i < h; i++ {
		for j := w - 1; j >= 0; j-- {
			if grid[i][j] == '#' {
				cnt = 0
				continue
			}

			maxLeft[i][j] = cnt
			cnt += 1
		}
		cnt = 0
	}
}

func calcMaxRight() { //j..left, i..down
	var cnt int
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if grid[i][j] == '#' {
				cnt = 0
				continue
			}

			maxRight[i][j] = cnt
			cnt += 1
		}
		cnt = 0
	}
}

func main() {
	fmt.Scan(&h, &w)
	for i := 0; i < h; i++ {
		sc.Scan()
		grid = append(grid, sc.Text())
	}

	calcMaxDown()
	calcMaxUp()
	calcMaxLeft()
	calcMaxRight()

	// for i := 0; i < h; i++ {
	// 	fmt.Println(maxDown[i])
	// }
	//
	// for i := 0; i < h; i++ {
	// 	fmt.Println(maxUp[i])
	// }
	//
	// for i := 0; i < h; i++ {
	// 	fmt.Println(maxLeft[i])
	// }
	//
	// for i := 0; i < h; i++ {
	// 	fmt.Println(maxRight[i])
	// }

	ans := 0

	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if grid[i][j] == '#' {
				continue
			}
			tmp := 1 + maxDown[i][j] + maxUp[i][j] + maxLeft[i][j] + maxRight[i][j]
			if ans < tmp {
				ans = tmp
			}
		}
	}
	fmt.Println(ans)
}
