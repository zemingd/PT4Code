package main

import (
	"fmt"
)

type Row struct {
	sy int
	sx int
	ty int
	tx int
}

func (r Row) String() string {
	return fmt.Sprint(r.sy, r.sx, r.ty, r.tx)
}

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	a := make([][]int, h)
	for y := 0; y < h; y++ {
		a[y] = make([]int, w)
		for x := 0; x < w; x++ {
			fmt.Scan(&a[y][x])
		}
	}
	var result []Row
	sy, sx := 0, 0
	for true {
		ty, tx := sy, sx+1-(sy%2)*2
		if tx < 0 || tx >= w {
			ty, tx = sy+1, sx
		}
		if ty >= h {
			break
		}
		if a[sy][sx]%2 == 1 {
			a[ty][tx]++
			result = append(result, Row{sy + 1, sx + 1, ty + 1, tx + 1})
		}
		sy, sx = ty, tx
	}
	fmt.Println(len(result))
	for _, row := range result {
		fmt.Println(row)
	}
}
