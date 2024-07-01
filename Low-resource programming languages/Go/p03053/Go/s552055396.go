package main

import "fmt"

func main() {
	var h, w int
	fmt.Scan(&h, &w)

	ass := make([][]int, h)
	for j := range ass {
		ass[j] = make([]int, w)
		for i := range ass[j] {
			ass[j][i] = 10000
		}
	}

	for j := range ass {
		var s string
		fmt.Scan(&s)
		for i, r := range s {
			if r == '#' {
				ass[j][i] = 0
			}
		}
	}

	for j := 0; j < h; j++ {
		for i := 0; i < w; i++ {
			if v := ass[j][i] + 1; i+1 < w && v <= ass[j][i+1] {
				ass[j][i+1] = v
			}
		}
	}
	for j := 0; j < h; j++ {
		for i := w - 1; i >= 0; i-- {
			if v := ass[j][i] + 1; i-1 >= 0 && v <= ass[j][i-1] {
				ass[j][i-1] = v
			}
		}
	}
	for i := 0; i < w; i++ {
		for j := 0; j < h; j++ {
			if v := ass[j][i] + 1; j+1 < h && v <= ass[j+1][i] {
				ass[j+1][i] = v
			}
		}
	}
	for i := 0; i < w; i++ {
		for j := h - 1; j >= 0; j-- {
			if v := ass[j][i] + 1; j-1 >= 0 && v <= ass[j-1][i] {
				ass[j-1][i] = v
			}
		}
	}

	ans := 0
	for _, as := range ass {
		for _, a := range as {
			if a > ans {
				ans = a
			}
		}
	}
	fmt.Println(ans)
}
