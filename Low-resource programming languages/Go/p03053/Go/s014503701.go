package main
import (
	"fmt"
	"bufio"
	"os"
)

func main() {
	var h, w int // 縦と横の長さ格納用
	fmt.Scan(&h, &w)
	var a = make([][]byte, h) // マス目格納用
	var d = make([][]int, h) // 黒マスからの距離格納用
	reader := bufio.NewReaderSize(os.Stdin, 1024) // 文字列読み込みリーダ
	for y := 0; y < h; y++ {
		l, _, _ := reader.ReadLine()
		a[y] = make([]byte, w)
		d[y] = make([]int, w)
		copy(a[y], l)
		for x := 0; x < w; x++ {
			if a[y][x] == '.' {
				d[y][x] = 1000000007
			}
		}
	}
	// 距離の更新　左上から右下へ行うので逆からも行う必要がある
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if i > 0 {
				d[i][j] = min(d[i][j], d[i-1][j] + 1)
			}
			if j > 0 {
				d[i][j] = min(d[i][j], d[i][j-1] + 1)
			}
		}
	}
	for i := h-1; i >= 0; i-- {
		for j := w-1; j >= 0; j-- {
			if i < h-1 {
				d[i][j] = min(d[i][j], d[i+1][j] + 1)
			}
			if j < w-1 {
				d[i][j] = min(d[i][j], d[i][j+1] + 1)
			}
		}
	}
	// 答えを捜索
	ans := 0
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			ans = max(d[i][j], ans)
		}
	}

	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
