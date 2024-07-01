package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// S
var (
	S []string
	t [][]int
	H int
	W int
)

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func dfs(q [][2]int) {
	for len(q) != 0 {
		h, w := q[0][0], q[0][1]
		q = q[1:]
		if h-1 >= 0 && S[h-1][w] != '#' && t[h-1][w] == -1 {
			q = append(q, [2]int{h - 1, w})
			t[h-1][w] = t[h][w]
		}
		if h+1 < H && S[h+1][w] != '#' && t[h+1][w] == -1 {
			q = append(q, [2]int{h + 1, w})
			t[h+1][w] = t[h][w]
		}
		if w-1 >= 0 && S[h][w-1] != '#' && t[h][w-1] == -1 {
			q = append(q, [2]int{h, w - 1})
			t[h][w-1] = t[h][w]
		}
		if w+1 < W && S[h][w+1] != '#' && t[h][w+1] == -1 {
			q = append(q, [2]int{h, w + 1})
			t[h][w+1] = t[h][w]
		}
	}
}

func main() {
	defer flush()

	H = readInt()
	W = readInt()
	Ch := readInt() - 1
	Cw := readInt() - 1
	Dh := readInt() - 1
	Dw := readInt() - 1
	S = make([]string, H)
	for i := 0; i < H; i++ {
		S[i] = readString()
	}

	t = make([][]int, H)
	for i := 0; i < H; i++ {
		t[i] = make([]int, W)
		for j := 0; j < W; j++ {
			t[i][j] = -1
		}
	}
	warps := 0
	t[Ch][Cw] = warps
	q := make([][2]int, 0)
	q = append(q, [2]int{Ch, Cw})
	dfs(q)
	if t[Dh][Dw] != -1 {
		println(t[Dh][Dw])
		return
	}

	for {
		progress := false
		for h := 0; h < H; h++ {
			for w := 0; w < W; w++ {
				if t[h][w] != warps {
					continue
				}
				for i := max(0, h-2); i <= min(H-1, h+2); i++ {
					for j := max(0, w-2); j <= min(W-1, w+2); j++ {
						if S[i][j] == '#' {
							continue
						}
						if t[i][j] != -1 {
							continue
						}
						t[i][j] = warps + 1
						q := make([][2]int, 0)
						q = append(q, [2]int{i, j})
						dfs(q)
						progress = true
					}
				}
			}
		}
		warps++
		if !progress {
			break
		}
		if t[Dh][Dw] != -1 {
			println(t[Dh][Dw])
			return
		}
	}
	println(t[Dh][Dw])
}

const (
	ioBufferSize = 1 * 1024 * 1024 // 1 MB
)

var stdinScanner = func() *bufio.Scanner {
	result := bufio.NewScanner(os.Stdin)
	result.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	result.Split(bufio.ScanWords)
	return result
}()

func readString() string {
	stdinScanner.Scan()
	return stdinScanner.Text()
}

func readInt() int {
	result, err := strconv.Atoi(readString())
	if err != nil {
		panic(err)
	}
	return result
}

var stdoutWriter = bufio.NewWriter(os.Stdout)

func flush() {
	stdoutWriter.Flush()
}

func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(stdoutWriter, args...)
}
