// 今いるところより右側にある得点, 左側にある得点、あと上下
// のデータがあればうまくいきそう うまく構築する
// TLEをくらったのでたぶん入出力のせいだということで対策
// 馬鹿みたいなバグをして1WA 丁寧にやれ

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	H, W := nextInt(), nextInt()
	Table := make([][]string, H)
	pointR, pointL, pointU, pointD := make([][]int, H), make([][]int, H), make([][]int, H), make([][]int, H)
	for i := 0; i < H; i++ {
		pointR[i], pointL[i], pointU[i], pointD[i] = make([]int, W), make([]int, W), make([]int, W), make([]int, W)
		Table[i] = chars(next())
	}
	// 構築フェーズ
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if Table[i][j] != "#" {
				if j == 0 {
					pointL[i][j] = 1
				} else {
					pointL[i][j] = pointL[i][j-1] + 1
				}
			} else {
				pointL[i][j] = 0
			}

			if Table[i][W-j-1] != "#" {
				if j == 0 {
					pointR[i][W-1] = 1
				} else {
					pointR[i][W-1-j] = pointR[i][W-j] + 1
				}
			} else {
				pointR[i][W-1-j] = 0
			}
		}
	}
	for j := 0; j < W; j++ {
		for i := 0; i < H; i++ {
			if Table[i][j] != "#" {
				if i == 0 {
					pointU[i][j] = 1
				} else {
					pointU[i][j] = pointU[i-1][j] + 1
				}
			} else {
				pointU[i][j] = 0
			}
			if Table[H-1-i][j] != "#" {
				if i == 0 {
					pointD[H-1][j] = 1
				} else {
					pointD[H-1-i][j] = pointD[H-i][j] + 1
				}
			} else {
				pointD[H-1-i][j] = 0
			}
		}
	}

	// 探索フェーズ
	ans := 0
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			tmp := pointD[i][j] + pointL[i][j] + pointR[i][j] + pointU[i][j] - 3
			ans = max(ans, tmp)
		}
	}
	fmt.Fprintln(out, ans)
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func chars(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}
