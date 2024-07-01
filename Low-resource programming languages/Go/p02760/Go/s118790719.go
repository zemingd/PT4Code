package main

import "fmt"

func main() {
	bing := make(map[int][]int)
	var num int
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			fmt.Scan(&num)
			bing[num] = []int{i, j}
		}
	}
	var n int
	fmt.Scan(&n)
	isOk := make([]bool, 9)
	for i := 0; i < n; i++ {
		fmt.Scan(&num)
		if pos, ok := bing[num]; ok {
			isOk[pos[0]*3+pos[1]] = true
		}
	}
	if isOk[0] && isOk[1] && isOk[2] ||
		isOk[3] && isOk[4] && isOk[5] ||
		isOk[6] && isOk[7] && isOk[8] ||
		isOk[0] && isOk[3] && isOk[6] ||
		isOk[1] && isOk[4] && isOk[7] ||
		isOk[2] && isOk[5] && isOk[8] ||
		isOk[0] && isOk[4] && isOk[8] ||
		isOk[2] && isOk[4] && isOk[6] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
