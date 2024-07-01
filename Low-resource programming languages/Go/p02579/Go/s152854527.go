package main

import "fmt"

const MAX = 1<<31-1
var H, W, xS, xE, yS, yE int
var A []string
var magic [][]int
var visited [][]bool
var added [][]bool
var X = []int{-1,1,0,0}
var Y = []int{0,0,-1,1}
var q [][]int
func min(a, b int) int {
	if a < b { return a }
	return b
}

func valid(x, y int) bool {
	return x>=0 && x<H && y>=0 && y<W && A[x][y]!='#'
}

func dfs(x, y, px, py int) {
	visited[x][y] = true
	if px != -1 && py != -1 {
		magic[x][y] = magic[px][py]
	}
	for i:=0; i<4; i++ {
		nx, ny := x+X[i], y+Y[i]
		if valid(nx, ny) && !visited[nx][ny] {
			dfs(nx, ny, x, y)
		}
	}
}

func bfs() {

	for len(q) > 0 {
		x, y := q[0][0], q[0][1]
		q = q[1:]
		visited[x][y] = true
		for i:=0; i<4; i++ {
			nx, ny := x + X[i], y+Y[i]
			if nx >=0 && nx < H && ny >= 0 && ny < W && A[nx][ny] != '#' {
				magic[nx][ny] = magic[x][y]
			} else { continue }
			if !visited[nx][ny] && ! added[nx][ny] {
				q = append(q, []int{nx,ny})
				added[nx][ny] = true
			}
		}
		for i:=-2; i<=2; i++ {
			for j:=-2; j<=2; j++ {
				nx, ny := x+i, y+j
				if nx >=0 && nx < H && ny >= 0 && ny < W && A[nx][ny] != '#' {
					magic[nx][ny] = min(magic[nx][ny], magic[x][y] + 1)
				} else { continue }
				if !visited[nx][ny] && ! added[nx][ny] {
					q = append(q, []int{nx,ny})
					added[nx][ny] = true
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
	magic, visited, added = make([][]int, H), make([][]bool, H),  make([][]bool, H)
	for i := range magic {
		magic[i] = make([]int, W)
		visited[i] = make([]bool, W)
		added[i] = make([]bool, W)
		for j := range magic[i] {
			magic[i][j] = MAX
		}
	}
	magic[xS][yS] = 0
	dfs(xS, yS, -1, -1)
	if magic[xE][yE] != MAX {
		fmt.Println(magic[xE][yE])
		return
	}
	q = make([][]int, 0 )
	for i := range magic {
		for j := range magic[i] {
			if magic[i][j] == 0 {
				q = append(q, []int{i, j})
			}
		}
	}
	bfs()
	if magic[xE][yE] == MAX {
		fmt.Println(-1)
		return
	}
	fmt.Println(magic[xE][yE])
}
