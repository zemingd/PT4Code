package main

import (
	"fmt"
)

func main() {

	var card [3][3]int
	var hit [3][3]bool
	for i := 0; i < 3; i ++ {
		var a, b, c int
		fmt.Scanf("%d %d %d\n", &a, &b, &c)
		card[i][0] = a
		card[i][1] = b
		card[i][2] = c
	}
	var n int
	fmt.Scanf("%d \n", &n)
	for i := 0; i < n; i ++ {
		var b int
		fmt.Scanf("%d\n", &b)
		for i, row := range card {
			for j, num := range row {
				if num == b {
					hit[i][j] = true
				}
			}
		}
	}
	r := "No"
	for _, row := range hit {
		if row[0] && row[1] && row[2] {
			r = "Yes"
		} 	
	}
	if hit[0][0] && hit[1][1] && hit[2][2] {
		r = "Yes"
	}
	if hit[0][2] && hit[1][1] && hit[2][0] {
		r = "Yes"
	}
	if hit[0][0] && hit[1][0] && hit[2][0] {
		r = "Yes"
	}
	if hit[0][1] && hit[1][1] && hit[2][1] {
		r = "Yes"
	}
	if hit[0][2] && hit[1][2] && hit[2][2] {
		r = "Yes"
	}
	fmt.Println(r)
}