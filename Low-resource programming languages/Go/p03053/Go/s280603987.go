package main

import (
	"fmt"
)

var H, W int

func main() {
	fmt.Scan(&H, &W)

	str := make([]string, H)
	q := make([][]int, 0)
	m := make([][]bool, H)

	for i := 0; i < H; i++ {
		fmt.Scan(&str[i])
		m[i] = make([]bool, W)

		for j := 0; j < W; j++ {
			if string(str[i][j]) == "#" {
				var t = []int{i, j}
				q = append(q, t)
				m[i][j] = true
			} else {
				m[i][j] = false
			}
		}
	}

	fmt.Println(bfs(q, m))
}

func bfs(q [][]int, m [][]bool) int {
	var ans int

	for len(q) != 0 {
		ans++
		var len int = len(q)

		for i := 0; i < len; i++ {
			var y, x int = q[0][0], q[0][1]
			q = append(q[1:])

			if 0 <= y+1 && y+1 < H && m[y+1][x] == false {
				m[y+1][x] = true
				z := []int{y + 1, x}
				q = append(q, z)
			}
			if 0 <= y-1 && y-1 < H && m[y-1][x] == false {
				m[y-1][x] = true
				z := []int{y - 1, x}
				q = append(q, z)
			}
			if 0 <= x+1 && x+1 < W && m[y][x+1] == false {
				m[y][x+1] = true
				z := []int{y, x + 1}
				q = append(q, z)
			}
			if 0 <= x-1 && x-1 < W && m[y][x-1] == false {
				m[y][x-1] = true
				z := []int{y, x - 1}
				q = append(q, z)
			}
		}
	}
	return ans - 1
}
