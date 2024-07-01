package main

import "fmt"

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	as := make([][]int, h)
	for i := 0; i < h; i++ {
		as[i] = make([]int, w)
		for j := 0; j < w; j++ {
			fmt.Scan(&as[i][j])
		}
	}

	steps := make([][4]int, 0)

	for i := 0; i < h; i++ {
		if i%2 == 0 {
			for j := 0; j < w; j++ {
				if as[i][j]%2 == 0 {
					continue
				}
				if j+1 < w {
					as[i][j]--
					as[i][j+1]++
					steps = append(steps, [4]int{i, j, i, j + 1})
				} else if i+1 < h {
					as[i][j]--
					as[i+1][j]++
					steps = append(steps, [4]int{i, j, i + 1, j})
				}
			}
		} else {
			for j := w - 1; j >= 0; j-- {
				if as[i][j]%2 == 0 {
					continue
				}
				if j-1 >= 0 {
					as[i][j]--
					as[i][j-1]++
					steps = append(steps, [4]int{i, j, i, j - 1})
				} else if i+1 < h {
					as[i][j]--
					as[i+1][j]++
					steps = append(steps, [4]int{i, j, i + 1, j})
				}
			}
		}
	}

	fmt.Println(len(steps))
	for _, s := range steps {
		fmt.Printf("%d %d %d %d\n", s[0]+1, s[1]+1, s[2]+1, s[3]+1)
	}
}
