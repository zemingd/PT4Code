package main

import "fmt"

const MAX = 1<<31-1
var H, W, xS, xE, yS, yE int
var A []string
var magic [][]int
var visited [][]bool
var X = []int{-1,1,0,0}
var Y = []int{0,0,-1,1}

func min(a, b int) int {
	if a < b { return a }
	return b
}

func bfs() {
	q := [][]int{{xS, yS}}
	for len(q) > 0 {
		x, y := q[0][0], q[0][1]
		q = q[1:]
		visited[x][y] = true
		for i:=0; i<4; i++ {
			nx, ny := x + X[i], y+Y[i]
			if nx >=0 && nx < H && ny >= 0 && ny < W && A[nx][ny] != '#' {
				magic[nx][ny] = magic[x][y]
			} else { continue }
			if !visited[nx][ny] {
				q = append(q, []int{nx,ny})
			}
		}
		for i:=-2; i<=2; i++ {
			for j:=-2; j<=2; j++ {
				nx, ny := x+i, y+j
				if nx >=0 && nx < H && ny >= 0 && ny < W && A[nx][ny] != '#' && magic[nx][ny] == MAX {
					magic[nx][ny] = min(magic[nx][ny], magic[x][y] + 1)
				} else { continue }
				if !visited[nx][ny] {
					q = append(q, []int{nx,ny})
				}
			}
		}
	}
}

func main() {
	fmt.Scanf("%d%d%", &H, &W)
	fmt.Scanf("%d%d%", &xS, &yS)
	fmt.Scanf("%d%d%", &xE, &yE)
	xS--
	yS--
	xE--
	yE--
	A = make([]string, H)
	for i:=0; i<H; i++ {
		fmt.Scanf("%s", &A[i])
	}
	magic, visited = make([][]int, H), make([][]bool, H)
	for i := range magic {
		magic[i] = make([]int, W)
		visited[i] = make([]bool, W)
		for j := range magic[i] {
			magic[i][j] = MAX
		}
	}
	magic[xS][yS] = 0
	bfs()
	if magic[xE][yE] == MAX {
		fmt.Println(-1)
		return
	}
	fmt.Println(magic[xE][yE])
}
