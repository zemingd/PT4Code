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
	for i := 0; i < h-1; i++ {
		for j := 0; j < w; j++ {
			if a[i][j]%2 == 0 {
				continue
			}
			a[i][j]--
			a[i+1][j]++
			op = append(op, [4]int{i, j, i + 1, j})
		}
	}

	for j := 0; j < w-1; j++ {
		i := h - 1
		if a[i][j]%2 == 0 {
			continue
		}
		a[i][j]--
		a[i][j+1]--
		op = append(op, [4]int{i, j, i, j + 1})
	}

	fmt.Println(len(op))
	for _, o := range op {
		fmt.Println(o[0]+1, o[1]+1, o[2]+1, o[3]+1)
	}
}
