package main

import (
	"fmt"
	"math"
	"os"
	"strings"
)

var H, W int
var A [][]Point

//var whiteNum int

type Point struct {
	x, y   int
	color  int
	isDone bool
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func (p Point) findNearestBlackDistance() (int, int, int) {
	i := 1
	var x, y1, y2 int
	for {
		for j := -1 * i; j <= i; j++ {
			k := i - abs(j)
			x = p.x + j
			y1 = p.y + k
			y2 = p.y - k
			if x >= 0 && y1 >= 0 && x < W && y1 < H {
				if A[y1][x].color == 1 {
					return i, y1, x
				}
			}
			if x >= 0 && y2 >= 0 && x < W && y2 < H {
				if A[y2][x].color == 1 {
					return i, y2, x
				}
			}

		}
		i += 1
	}
	return -1, -1, -1
}

func (p Point) doWhitesWithDistance(distance int) {
	var x, y1, y2 int
	for i := 1; i <= distance; i++ {
		for j := -1 * i; j <= i; j++ {
			k := i - abs(j)
			x = p.x + j
			y1 = p.y + k
			y2 = p.y - k
			if x >= 0 && y1 >= 0 && x < W && y1 < H {
				if A[y1][x].color == 0 {
					if A[y1][x].isDone != true {
						A[y1][x].isDone = true
						//						whiteNum -= 1
					}
				}
			}
			if x >= 0 && y2 >= 0 && x < W && y2 < H {
				if A[y2][x].color == 0 {
					if A[y2][x].isDone != true {
						A[y2][x].isDone = true
						//						whiteNum -= 1
					}
				}
			}
		}
	}
}

func main() {
	fmt.Scan(&H, &W)
	A = make([][]Point, H)
	s := ""
	for i := 0; i < H; i++ {
		A[i] = make([]Point, W)
		fmt.Scan(&s)
		info := strings.Split(s, "")
		for j := 0; j < W; j++ {
			if info[j] == "." {
				A[i][j] = Point{x: j, y: i, color: 0, isDone: false}
			} else {
				A[i][j] = Point{x: j, y: i, color: 1, isDone: true}
			}
		}
	}
	max := 0
	tmp := 0
	var x, y int

	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if A[i][j].isDone != true {
				tmp, y, x = A[i][j].findNearestBlackDistance()
				if tmp == -1 {
					fmt.Println(max)
					os.Exit(0)
				}
				A[y][x].doWhitesWithDistance(tmp)
				if tmp > max {
					max = tmp
				}
			}
		}
	}
	fmt.Println(max)
}
