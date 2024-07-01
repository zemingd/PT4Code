package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	x := make([][]int, N)
	y := make([][]int, N)

	for i := 0; i < N; i++ {
		A := nextInt()
		x[i] = make([]int, A)
		y[i] = make([]int, A)

		for j := 0; j < A; j++ {
			x[i][j] = nextInt() - 1
			y[i][j] = nextInt()
		}
	}
	// 全部数える
	S := 1<<uint(N) - 1
	c := 0

loop:
	for s := 0; s <= S; s++ {
		for i := 0; i < N; i++ {
			for j := 0; j < len(x[i]); j++ {
				// 発言者が不親切なら無視
				if nthbit(s, i) == 0 {
					continue
				}
				// 発言者が正直者かつ不整合があれば次へ
				if nthbit(s, x[i][j]) != y[i][j] {
					continue loop
				}
			}
		}
		c1 := 0
		for i := 0; i < N; i++ {
			if nthbit(s, i) == 1 {
				c1++
			}
		}
		c = max(c, c1)
	}

	fmt.Println(c)
}

func nthbit(a int, n int) int { return int((a >> uint(n)) & 1) }

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

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
