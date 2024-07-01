package main

import (
	"bufio"
	"fmt"
	"os"
)

type YX struct {
	y int
	x int
}

func main() {
	var h, w int // 縦と横の長さ格納用
	fmt.Scan(&h, &w)
	var a = make([][]byte, h)                        // マス目格納用
	var d = make([][]int, h)                         // 黒マスからの距離格納用
	var reader = bufio.NewReaderSize(os.Stdin, 1024) // 文字列読み込みリーダ
	var ql = make([]YX, 0)                            // 黒マスのキュー

	for y := 0; y < h; y++ {
		l, _, _ := reader.ReadLine()
		a[y] = make([]byte, w)
		d[y] = make([]int, w)
		copy(a[y], l)
		for x := 0; x < w; x++ {
			if a[y][x] == '.' {
				d[y][x] = -1
			} else {
				ql = append(ql, YX{y, x})
			}
		}
	}

	for len(ql) > 0 {
		var newql = make([]YX, 0)
		for _, q := range ql {
			el := []bool{false, false, false, false}
			if q.y > 0 {
				el[0] = true
			}
			if q.y < h-1 {
				el[2] = true
			}
			if q.x > 0 {
				el[3] = true
			}
			if q.x < w-1 {
				el[1] = true
			}
			for i, e := range el {
				if e {
					switch i {
					case 0:
						y, x := q.y-1, q.x
						if d[y][x] == -1 {
							d[y][x] = d[q.y][q.x] + 1
							newql = append(newql, YX{y, x})
						}
					case 1:
						y, x := q.y, q.x+1
						if d[y][x] == -1 {
							d[y][x] = d[q.y][q.x] + 1
							newql = append(newql, YX{y, x})
						}
					case 2:
						y, x := q.y+1, q.x
						if d[y][x] == -1 {
							d[y][x] = d[q.y][q.x] + 1
							newql = append(newql, YX{y, x})
						}
					case 3:
						y, x := q.y, q.x-1
						if d[y][x] == -1 {
							d[y][x] = d[q.y][q.x] + 1
							newql = append(newql, YX{y, x})
						}
					}
				}
			}
		}
		ql = newql
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
