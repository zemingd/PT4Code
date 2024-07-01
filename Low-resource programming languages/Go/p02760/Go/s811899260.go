package main

import (
	"fmt"
)

func main() {
	var a [3][3]int
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			fmt.Scanf("%d", &a[i][j])
		}
	}
	var n int
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		var b int
		fmt.Scanf("%d", &b)
		for j := 0; j < 3; j++ {
			for k := 0; k < 3; k++ {
				if a[j][k] == b {
					a[j][k] = -1
				}
			}
		}
	}

	answer := bingo(a)
	if answer {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func bingo(a [3][3]int) bool {
	for i := 0; i < 3; i++ {
		if a[i][0] == a[i][1] && a[i][0] == a[i][2] {
			return true
		}
		if a[0][i] == a[1][i] && a[0][i] == a[0][i] {
			return true
		}
	}
	if a[0][0] == a[1][1] && a[0][0] == a[2][2] {
		return true
	}
	if a[2][0] == a[1][1] && a[2][0] == a[0][2] {
		return true
	}
	return false
}
