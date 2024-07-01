package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	H, W := nextInt(), nextInt()
	board := make([]string, H)
	for i := 0; i < H; i++ {
		board[i] = next()
	}

	L, R, U, D := make([][]int, H), make([][]int, H), make([][]int, H), make([][]int, H)
	for i := 0; i < H; i++ {
		L[i], R[i], U[i], D[i] = make([]int, W), make([]int, W), make([]int, W), make([]int, W)
	}

	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if board[i][j] != '#' {
				if j == 0 {
					L[i][j] = 1
				} else {
					L[i][j] = L[i][j-1] + 1
				}

				if i == 0 {
					U[i][j] = 1
				} else {
					U[i][j] = U[i-1][j] + 1
				}
			}

			if board[H-i-1][W-j-1] != '#' {
				if j == 0 {
					R[H-i-1][W-j-1] = 1
				} else {
					R[H-i-1][W-j-1] = R[H-i-1][W-j] + 1
				}

				if i == 0 {
					D[H-i-1][W-j-1] = 1
				} else {
					D[H-i-1][W-j-1] = D[H-i][W-j-1] + 1
				}
			}
		}
	}

	max := 0
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if board[i][j] == '#' {
				continue
			}

			l := L[i][j] + R[i][j] + U[i][j] + D[i][j] - 3
			if max < l {
				max = l
			}
		}
	}

	fmt.Println(max)
}
