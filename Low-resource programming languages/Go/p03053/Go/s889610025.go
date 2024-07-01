package main

import "fmt"

type rect struct {
	h int
	w int
}

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	br := make([][]bool, h)
	for i := range br {
		br[i] = make([]bool, w)
	}
	ar := make([]rect, 0)
	for i := 0; i < h; i++ {
		var s string
		fmt.Scan(&s)
		for j, v := range s {
			if v == '#' {
				br[i][j] = true
				ar = append(ar, rect{h: i, w: j})
			}
		}
	}
	sum := 0
	for {
		temp := []rect{}
		sousa := false
		for _, v := range ar {
			if v.h != 0 {
				if !br[v.h-1][v.w] {
					sousa = true
					br[v.h-1][v.w] = true
					temp = append(temp, rect{h: v.h - 1, w: v.w})
				}
			}
			if v.h != h-1 {
				if !br[v.h+1][v.w] {
					sousa = true
					br[v.h+1][v.w] = true
					temp = append(temp, rect{h: v.h + 1, w: v.w})
				}
			}
			if v.w != 0 {
				if !br[v.h][v.w-1] {
					sousa = true
					br[v.h][v.w-1] = true
					temp = append(temp, rect{h: v.h, w: v.w - 1})
				}
			}
			if v.w != w-1 {
				if !br[v.h][v.w+1] {
					sousa = true
					br[v.h][v.w+1] = true
					temp = append(temp, rect{h: v.h, w: v.w + 1})
				}
			}
		}
		if sousa == false {
			fmt.Println(sum)
			return
		}
		sum++
		ar = temp
	}
}
