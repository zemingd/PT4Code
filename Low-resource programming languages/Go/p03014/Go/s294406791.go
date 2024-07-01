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

func print(arr *[][]int) {
	l := len(*arr)
	for i := 0; i < l; i++ {
		a := (*arr)[i]
		ll := len(a)
		for j := 0; j < ll; j++ {
			fmt.Printf("%2d ", a[j])
		}
		fmt.Println()
	}
}

func main() {
	h := nextInt()
	w := nextInt()

	objects := make([][]byte, h)
	gridH := make([][]int, h)
	gridW := make([][]int, h)

	cont := 0
	last := 0

	for i := 0; i < h; i++ {
		objects[i] = nextBytes()
		gridH[i] = make([]int, w)
		gridW[i] = make([]int, w)

		cont = 0
		last = 0

		for j := 0; j < w; j++ { // 横方向を数えた
			// 連続する.を数えて、個数で埋める
			if objects[i][j] == '#' {
				for k := last; k < j; k++ {
					gridH[i][k] = cont
				}
				gridH[i][j] = -1
				cont = 0
				last = j + 1
			} else {
				cont++
			}
		}
		for k := last; k < w; k++ {
			gridH[i][k] = cont
		}
	}
	//print(&gridH)

	// 縦方向を埋めつつmaxを探索する
	for j := 0; j < w; j++ {
		cont = 0
		last = 0

		for i := 0; i < h; i++ {
			if objects[i][j] == '#' {
				for k := last; k < i; k++ {
					gridW[k][j] = cont
				}
				gridW[i][j] = -1
				cont = 0
				last = i + 1
			} else {
				cont++
			}
		}
		for k := last; k < h; k++ {
			gridW[k][j] = cont
		}
	}

	//print(&gridW)

	max := 0

	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			m := gridH[i][j] + gridW[i][j] - 1
			if max < m {
				max = m
			}
		}
	}

	fmt.Println(max)
}
