package main

import (
	"bufio"
	"fmt"
	"os"
)

var H, W int
var grid [][]int
var m map[[2]int]bool

func main() {
	H, W = ReadInt(), ReadInt()
	grid = make([][]int, H)
	for i := 0; i < H; i++ {
		grid[i] = ReadInts(W)
	}
	m = make(map[[2]int]bool) // (x, y) => bool
	for y := 0; y < H; y++ {
		for x := 0; x < W; x++ {
			if grid[y][x]%2 == 1 {
				m[[2]int{x, y}] = true
			}
		}
	}
	odds := len(m)
	paths := [][]int{}
	for i := 0; i < odds/2; i++ {
		var startX, startY, goalX, goalY int
		for ints, _ := range m {
			startX, startY = ints[0], ints[1]
			delete(m, ints)
			break
		}
		for ints, _ := range m {
			goalX, goalY = ints[0], ints[1]
			delete(m, ints)
			break
		}
		dir := 1
		if startX > goalX {
			dir = -1
		}
		for x := startX; x != goalX; x += dir {
			paths = append(paths, []int{
				startY, x, startY, x + dir,
			})
		}
		if startY < goalY {
			dir = 1
		} else {
			dir = -1
		}
		for y := startY; y != goalY; y += dir {
			paths = append(paths, []int{
				y, goalX, y + dir, goalX,
			})
		}
	}
	fmt.Println(len(paths))
	for i := 0; i < len(paths); i++ {
		fmt.Printf(
			"%d %d %d %d\n",
			paths[i][0]+1,
			paths[i][1]+1,
			paths[i][2]+1,
			paths[i][3]+1,
		)
	}
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int) { Scan(&i); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
