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

	var n, b int
	fmt.Scanf("%d", &n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &b)
		for i := 0; i < 3; i++ {
			for j := 0; j < 3; j++ {
				if a[i][j] == b {
					a[i][j] = 0
				}
			}
		}
	}
	if a[0][0]+a[0][1]+a[0][2] == 0 ||
		a[1][0]+a[1][1]+a[1][2] == 0 ||
		a[2][0]+a[2][1]+a[2][2] == 0 ||
		a[0][0]+a[1][0]+a[2][0] == 0 ||
		a[0][1]+a[1][1]+a[2][1] == 0 ||
		a[0][2]+a[1][2]+a[2][2] == 0 ||
		a[0][0]+a[1][1]+a[2][2] == 0 ||
		a[0][2]+a[1][1]+a[2][0] == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
