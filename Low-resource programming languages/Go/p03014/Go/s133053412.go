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

func print(arr [][](*int)) {
	for i := 0; i < len(arr); i++ {
		for j := 0; j < len(arr[i]); j++ {
			fmt.Printf("% 2d ", *arr[i][j])
		}
		fmt.Println()
	}
}

func main() {
	h := nextInt()
	w := nextInt()

	objects := make([][]byte, h)
	gridW := make([][](*int), h)
	gridH := make([][](*int), h)
	countW := make([]int, h*w)
	countH := make([]int, h*w)

	cw := 1
	ch := 1

	for i := 0; i < h; i++ {
		objects[i] = nextBytes()
		gridW[i] = make([]*int, w)
		gridH[i] = make([]*int, h)

		for j := 0; j < w; j++ { // 横方向を数えた
			// 連続する.を数えて、個数で埋める
			if objects[i][j] == '#' {
				gridW[i][j] = &(countW[0])
				cw++
			} else {
				gridW[i][j] = &(countW[cw])
				countW[cw]++
			}
		}
		cw++
	}

	for j := 0; j < w; j++ {
		for i := 0; i < h; i++ {
			// 連続する.を数えて、個数で埋める
			if objects[i][j] == '#' {
				gridH[i][j] = &(countH[0])
				ch++
			} else {
				gridH[i][j] = &(countH[ch])
				countH[ch]++
			}
		}
		ch++
	}

	max := 0

	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			sum := *(gridH[i][j]) + *(gridW[i][j]) - 1

			if max < sum {
				max = sum
			}
		}
	}

	// print(gridH)
	// print(gridW)
	fmt.Println(max)
}
