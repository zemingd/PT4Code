package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)

	h := nextInt()
	w := nextInt()
	ss := make([]string, h)

	for i := 0; i < h; i++ {
		ss[i] = nextWord()
	}

	left := make([][]int, h)
	right := make([][]int, h)
	up := make([][]int, h)
	down := make([][]int, h)

	for i := 0; i < h; i++ {
		left[i] = make([]int, w)
		right[i] = make([]int, w)
		up[i] = make([]int, w)
		down[i] = make([]int, w)
	}

	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if ss[i][j] == '.' {
				if j == 0 {
					left[i][j] = 1
				} else {
					left[i][j] = left[i][j - 1] + 1
				}
			}

			if ss[i][w - j - 1] == '.' {
				if j == 0 {
					right[i][w - j - 1] = 1
				} else {
					right[i][w - j - 1] = right[i][w - j] + 1
				}
			}
		}
	}

	max := 0
	for i := 0; i < w; i++ {
		for j := 0; j < h; j++ {
			if ss[j][i] == '.' {
				if j == 0 {
					up[j][i] = 1
				} else {
					up[j][i] = up[j - 1][i] + 1
				}
			}

			if ss[h - j - 1][i] == '.' {
				if j == 0 {
					down[h - j - 1][i] = 1
				} else {
					down[h - j - 1][i] = down[h - j][i] + 1
				}
			}
		}

		for j := 0; j < h; j++ {
			num := left[j][i] + right[j][i] + up[j][i] + down[j][i] - 3
			if num > max {
				max = num
			}
		}
	}
	fmt.Println(max)
}


func nextWord() string {
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