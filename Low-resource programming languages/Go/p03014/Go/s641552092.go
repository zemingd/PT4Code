package main

// ABC129D - Lamp
// https://atcoder.jp/contests/abc129/tasks/abc129_d

import "fmt"

func main() {
	var H, W int
	fmt.Scan(&H, &W)
	L := make([][]int, H)
	R := make([][]int, H)
	D := make([][]int, H)
	U := make([][]int, H)
	for i := 0; i < H; i++ {
		L[i] = make([]int, W)
		R[i] = make([]int, W)
		D[i] = make([]int, W)
		U[i] = make([]int, W)
	}
	maze := make([][]byte, H)
	for i := 0; i < H; i++ {
		maze[i] = make([]byte, W)
		fmt.Scan(&maze[i])
	}
	// fmt.Println("H", H, "W", W, "maze", maze)
	// L方向の前計算
	// L[i][j] : i行目j列目に明かりを置いた時にそこから左方向に照らされるマスの個数(i行目j列目含む)
	// maze[i][j] == '#'のとき、L[i][j] = 0
	// maze[i][j] == '.'で、j == 0の時 L[i][j] = 1, j > 0の時、L[i][j]=L[i][j-1]+1
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if maze[i][j] == '.' {
				if j == 0 {
					L[i][j] = 1
				} else {
					L[i][j] = L[i][j-1] + 1
				}
			}
		}
	}
	for i := 0; i < H; i++ {
		for j := W - 1; j >= 0; j-- {
			if maze[i][j] == '.' {
				if j == W-1 {
					R[i][j] = 1
				} else {
					R[i][j] = R[i][j+1] + 1
				}
			}
		}
	}
	// fmt.Println("L", L, "R", R)
	for j := 0; j < W; j++ {
		for i := 0; i < H; i++ {
			if maze[i][j] == '.' {
				if i == 0 {
					U[i][j] = 1
				} else {
					U[i][j] = U[i-1][j] + 1
				}
			}
		}
	}
	for j := 0; j < W; j++ {
		for i := H - 1; i >= 0; i-- {
			if maze[i][j] == '.' {
				if i == H-1 {
					D[i][j] = 1
				} else {
					D[i][j] = D[i+1][j] + 1
				}
			}
		}
	}
	// fmt.Println("U", U, "D", D)
	ans := 0
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			ans = max(ans, L[i][j]+R[i][j]+D[i][j]+U[i][j]-3)
		}
	}
	fmt.Println(ans)
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
