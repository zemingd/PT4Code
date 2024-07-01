package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	arr := make([]row, n)
	for i := 0; i < n; i++ {
		var x, y, h int
		fmt.Scan(&x, &y, &h)
		arr[i] = row{x, y, h}
	}
	for i := 0; i <= 100; i++ {
		for j := 0; j <= 100; j++ {
			flg := true
			val := calc(i, j, arr[0])
			for k := 1; k < n; k++ {
				if arr[k].h == 0 {
					continue
				}
				flg = flg && val == calc(i, j, arr[k])
				if !flg {
					break
				}
			}
			if flg {
				fmt.Println(i, j, val)
				return
			}
		}
	}
}

func abs(x int) int {
	return int(math.Abs(float64(x)))
}

func calc(x, y int, row row) int {
	return row.h + abs(x - row.x) + abs(y - row.y)
}

type row struct {
	x, y, h int
}