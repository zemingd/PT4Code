package main

import "fmt"

func main() {
	var H, W int
	fmt.Scan(&H, &W)
	ass := make([][]int, H)
	for j := range ass {
		ass[j] = make([]int, W)
		for i := range ass[j] {
			fmt.Scan(&ass[j][i])
		}
	}

	var ans [][4]int

	for j, as := range ass {
		for i := 0; i < W-1; i++ {
			if as[i]%2 == 1 {
				as[i]--
				as[i+1]++
				ans = append(ans, [4]int{j + 1, i + 1, j + 1, i + 2})
			}
		}
	}
	for j := 0; j < H-1; j++ {
		if ass[j][W-1]%2 == 1 {
			ass[j][W-1]--
			ass[j+1][W-1]++
			ans = append(ans, [4]int{j + 1, W, j + 2, W})
		}
	}

	fmt.Println(len(ans))
	for _, a := range ans {
		fmt.Println(a[0], a[1], a[2], a[3])
	}
}
