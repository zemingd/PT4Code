package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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

	h, w := nextInt(), nextInt()
	board := make([][]int, h)
	for i := 0; i < h; i++ {
		r := make([]int, w)
		for j := 0; j < w; j++ {
			r[j] = nextInt()
		}
		board[i] = r
	}

	// ジグザク走査してコイン枚数が奇数のときだけ次のマスにコインを移動させる
	var ans [][]int
	col := 0
	for i := 0; i < h; i++ {
		if i%2 == 0 {
			col = 0
		} else {
			col = w-1
		}
		for 0 <= col && col < w {
			cur := board[i][col]

			if cur%2 == 0 || (i == h-1 && ((i%2 == 0 && col == w-1) || (i%2 != 0 && col == 0))) {
				if i%2 == 0 {
					col++
				} else {
					col--
				}
				continue
			}

			nrow, ncol := -1, -1
			if (col == 0 && i%2 == 1) || (col == w-1 && i%2 == 0) {
				nrow = i+1
				ncol = col
			} else if i%2 == 0 {
				nrow = i
				ncol = col+1
			} else {
				nrow = i
				ncol = col-1
			}
			board[i][col]--
			board[nrow][ncol]++
			ans = append(ans, []int{i+1, col+1, nrow+1, ncol+1})

			if i%2 == 0 {
				col++
			} else {
				col--
			}
		}
	}

	fmt.Println(len(ans))
	for i := 0; i < len(ans); i++ {
		str := ""
		for _, v := range ans[i] {
			str += fmt.Sprintf("%d ", v)
		}
		str = strings.TrimRight(str, " ")
		fmt.Println(str)
	}
}