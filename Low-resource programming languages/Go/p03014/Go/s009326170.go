package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)

	return i
}

func main() {
	h := nextInt()
	w := nextInt()

	objects := make([][]byte, h)
	grid := make([][]int, h)

	cont := 0
	last := 0

	for i := 0; i < h; i++ {
		objects[i] = nextBytes()
		grid[i] = make([]int, w)

		cont = 0
		last = 0

		for j := 0; j < w; j++ { // 横方向を数えた
			// 連続する.を数えて、個数で埋める
			if objects[i][j] == '#' {
				for k := last; k < j; k++ {
					grid[i][k] = cont
				}
				cont = 0
				last = j + 1
			} else {
				cont++
			}
		}
		for k := last; k < w; k++ {
			grid[i][k] = cont
		}
	}
	// fmt.Println(grid)

	max := 0

	// 縦方向を埋めつつmaxを探索する
	for j := 0; j < w; j++ {
		cont = 0
		last = 0

		for i := 0; i < h; i++ {
			if objects[i][j] == '#' {
				for k := last; k < i; k++ {
					grid[k][j] += cont - 1
					if max < grid[k][j] {
						max = grid[k][j]
					}
				}
				cont = 0
				last = i + 1
			} else {
				cont++
			}
		}
		for k := last; k < h; k++ {
			grid[k][j] += cont - 1
			if max < grid[k][j] {
				max = grid[k][j]
			}
		}
	}
	// fmt.Println(grid)
	fmt.Println(max)
}
