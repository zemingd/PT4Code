package main

import "fmt"

var h, w int

func main() {
	fmt.Scan(&h, &w)
	as := make([][]int, h)
	for y := range as {
		as[y] = make([]int, w)
		for x := range as[y] {
			fmt.Scan(&as[y][x])
		}
	}

	routey := make([]int, 0, h*w)
	routex := make([]int, 0, h*w)
	for i := 0; i < h; i++ {
		if i%2 == 0 {
			for j := 0; j < w; j++ {
				routey = append(routey, i)
				routex = append(routex, j)
			}
		} else {
			for j := 0; j < w; j++ {
				routey = append(routey, i)
				routex = append(routex, w-j-1)
			}
		}
	}
	edit := make([]struct{ a, b, c, d int }, 0)
	for k := range routey {
		if k == len(routey)-1 {
			continue
		}
		if as[routey[k]][routex[k]]%2 == 1 {
			edit = append(edit, struct{ a, b, c, d int }{1 + routey[k], 1 + routex[k], 1 + routey[k+1], 1 + routex[k+1]})
			as[routey[k]][routex[k]]--
			as[routey[k+1]][routex[k+1]]++
		}
	}
	fmt.Println(len(edit))
	for i := range edit {
		x := edit[i]
		fmt.Println(x.a, x.b, x.c, x.d)
	}
}
