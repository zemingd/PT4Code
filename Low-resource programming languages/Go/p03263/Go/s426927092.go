package main

import "fmt"

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	a := make([][]int, h)
	for i := 0; i < h; i++ {
		a[i] = make([]int, w)
		for j := 0; j < w; j++ {
			fmt.Scan(&a[i][j])
		}
	}

	op := make([][4]int, 0)
	for i := 0; i < h; i++ {
		ci := i
		for j := 0; j < w; j++ {
			cj := j
			if ci%2 == 1 {
				cj = w - 1 - j
			}

			if a[ci][cj]%2 == 0 {
				continue
			}

			ni, nj := ci, cj
			if ci%2 == 0 {
				nj++
				if w-1 < nj {
					nj--
					ni++
				}
			} else {
				nj--
				if nj < 0 {
					nj++
					ni++
				}
			}

			if ni < h {
				a[ci][cj]--
				a[ni][nj]++
				op = append(op, [4]int{ci, cj, ni, nj})
			}
		}
	}

	fmt.Println(len(op))
	for _, o := range op {
		fmt.Println(o[0]+1, o[1]+1, o[2]+1, o[3]+1)
	}
}
