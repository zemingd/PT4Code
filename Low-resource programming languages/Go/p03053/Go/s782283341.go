package main

import (
	"bufio"
	"fmt"
	"os"
)

var H, W int

func main() {
	reader := bufio.NewReaderSize(os.Stdin, 1024)
	fmt.Scan(&H, &W)

	q := make([][]int, 0)
	m := make([][]bool, H)

	for i := 0; i < H; i++ {
		line, _, _ := reader.ReadLine()
		m[i] = make([]bool, W) // Falseで初期化されている

		for j, v := range line {
			if string(v) == "#" {
				q = append(q, []int{i, j})
				m[i][j] = true
			}
		}
	}
	fmt.Println(q)
	fmt.Println(bfs(q, m))
}

func bfs(q [][]int, m [][]bool) int {
	var ans int

	for len(q) != 0 {
		ans++
		len := len(q)

		for i := 0; i < len; i++ {
			var y, x int = q[0][0], q[0][1]
			q = append(q[1:])

			if 0 <= y+1 && y+1 < H && m[y+1][x] == false {
				m[y+1][x] = true
				q = append(q, []int{y + 1, x})
			}
			if 0 <= y-1 && y-1 < H && m[y-1][x] == false {
				m[y-1][x] = true
				q = append(q, []int{y - 1, x})
			}
			if 0 <= x+1 && x+1 < W && m[y][x+1] == false {
				m[y][x+1] = true
				q = append(q, []int{y, x + 1})
			}
			if 0 <= x-1 && x-1 < W && m[y][x-1] == false {
				m[y][x-1] = true
				q = append(q, []int{y, x - 1})
			}
		}
	}
	return ans - 1
}
