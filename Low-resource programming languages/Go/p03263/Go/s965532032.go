package main

import "fmt"

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	ar := make([][]int, h)
	for i := range ar {
		ar[i] = make([]int, w)
		for j := range ar[i] {
			fmt.Scan(&ar[i][j])
		}
	}
	ans := make([]string, 0, h*w)
	for i := 0; i < h; i++ {
		for j := 0; j < w-1; j++ {
			if ar[i][j]%2 == 1 {
				ar[i][j+1]++
				ans = append(ans, fmt.Sprintf("%d %d %d %d", i+1, j+1, i+1, j+2))
			}
		}
	}
	for i := 0; i < h-1; i++ {
		if ar[i][w-1]%2 == 1 {
			ar[i+1][w-1]++
			ans = append(ans, fmt.Sprintf("%d %d %d %d", i+1, w, i+2, w))
		}
	}
	fmt.Println(len(ans))
	for _, v := range ans {
		fmt.Println(v)
	}
}
