package main

import (
	"bufio"
	"fmt"
	"os"
)

const (
	maxwh = 2000
)

func main() {
	// 入力
	r := bufio.NewReader(os.Stdin)
	var h, w int
	fmt.Fscan(r, &h, &w)
	r.ReadString('\n')
	var s [maxwh + 2][maxwh + 2]bool
	for y := 1; y <= h; y++ {
		line, _ := r.ReadString('\n')
		for x := 1; x <= w; x++ {
			s[x][y] = line[x-1] == '.'
		}
	}

	// 上下左右の計算
	var jo, ge, sa, yu [maxwh + 2][maxwh + 2]int
	for y := 1; y <= h; y++ {
		for x := 1; x <= w; x++ {
			if s[x][y] {
				jo[x][y] = jo[x][y-1] + 1
				sa[x][y] = sa[x-1][y] + 1
			}
		}
	}
	for y := h; y >= 1; y-- {
		for x := w; x >= 1; x-- {
			if s[x][y] {
				ge[x][y] = ge[x][y+1] + 1
				yu[x][y] = yu[x+1][y] + 1
			}
		}
	}

	// 最大値の計算
	res := 0
	for y := 1; y <= h; y++ {
		for x := 1; x <= w; x++ {
			v := jo[x][y] + ge[x][y] + sa[x][y] + yu[x][y] - 3
			if v > res {
				res = v
			}
		}
	}

	// 出力
	fmt.Println(res)
}
