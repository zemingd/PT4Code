package main

import "fmt"

type cell struct {
	tate int
	yoko int
}

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	ar := make([]string, h)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	br := make([][]cell, h)
	for i := range br {
		br[i] = make([]cell, w)
	}
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if ar[i][j] == '#' {
				continue
			}
			if br[i][j].yoko == 0 {
				yoko := 0
				for k := j; k < w; k++ {
					if ar[i][k] == '#' {
						break
					}
					yoko++
				}
				for k := j; k < w; k++ {
					br[i][k].yoko = yoko
				}
			}
			if br[i][j].tate == 0 {
				tate := 0
				for k := i; k < h; k++ {
					if ar[k][j] == '#' {
						break
					}
					tate++
				}
				for k := i; k < h; k++ {
					br[k][j].tate = tate
				}
			}
		}
	}
	ans := 0
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if ar[i][j] == '#' {
				continue
			}
			if ans < br[i][j].yoko+br[i][j].tate {
				ans = br[i][j].yoko + br[i][j].tate
			}
		}
	}
	if ans == 0 {
		fmt.Println(ans)
		return
	}
	fmt.Println(ans - 1)
}
