package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

var H, W int

func main() {
	fmt.Scan(&H, &W)
	reader := bufio.NewReaderSize(os.Stdin, 10000000)

	q := make([][]int, 0)
	m := make([][]int, H)

	for i := 0; i < H; i++ {
		line, _, _ := reader.ReadLine()
		m[i] = make([]int, W)

		for j := 0; j < H; j++ {
			if string(line[j]) == "#" {
				m[i][j] = 1
				q = append(q, []int{i, j})
			}
		}
	}
	fmt.Println(bfs(q, m) - 1)
}

func bfs(q [][]int, m [][]int) int {
	var ans int

	for len(q) != 0 {
		ans++
		len := len(q)

		for i := 0; i < len; i++ {
			y, x := q[0][0], q[0][1]
			q = q[1:]

			if 0 <= y+1 && y+1 < H && m[y+1][x] == 0 {
				m[y+1][x] = 1
				q = append(q, []int{y + 1, x})
			}
			if 0 <= y-1 && y-1 < H && m[y-1][x] == 0 {
				m[y-1][x] = 1
				q = append(q, []int{y - 1, x})
			}
			if 0 <= x+1 && x+1 < W && m[y][x+1] == 0 {
				m[y][x+1] = 1
				q = append(q, []int{y, x + 1})
			}
			if 0 <= x-1 && x-1 < W && m[y][x-1] == 0 {
				m[y][x-1] = 1
				q = append(q, []int{y, x - 1})
			}
		}

	}
	return
}

/*  ----------------------------------------  */

func max(x ...int) int {
	var res int = x[0]
	for i := 1; i < len(x); i++ {
		res = int(math.Max(float64(x[i]), float64(res)))
	}
	return res
}

func min(x ...int) int {
	var res int = x[0]
	for i := 1; i < len(x); i++ {
		res = int(math.Min(float64(x[i]), float64(res)))
	}
	return res
}
func pow(x, y int) int { return int(math.Pow(float64(x), float64(y))) }
func abs(x int) int    { return int(math.Abs(float64(x))) }
func floor(x int) int  { return int(math.Floor(float64(x))) }

type SortBy []int

func (a SortBy) Len() int           { return len(a) }
func (a SortBy) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a SortBy) Less(i, j int) bool { return a[i] < a[j] }
