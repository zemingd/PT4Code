package main

import (
	"fmt"
)

func isBingo(hit [][]bool) bool {
	bingo := true
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			if hit[i][j] == false {
				bingo = false
			}
		}
	}
	if bingo {
		return true
	}

	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			if hit[j][i] == false {
				bingo = false
			}
		}
	}
	if bingo {
		return true
	}

	if hit[0][0] && hit[1][1] && hit[2][2] {
		return true
	}

	if hit[0][2] && hit[1][1] && hit[2][0] {
		return true
	}

	return false

}

func main() {
	a := make([][]int, 3)
	hit := make([][]bool, 3)

	for i := 0; i < 3; i++ {
		a[i] = make([]int, 3)
		hit[i] = make([]bool, 3)
		for j := 0; j < 3; j++ {
			fmt.Scan(&a[i][j])
		}
	}

	// fmt.Println(a)

	var n int
	fmt.Scan(&n)

	for i := 0; i < n; i++ {
		var b int
		fmt.Scan(&b)
		for j := 0; j < 3; j++ {
			for k := 0; k < 3; k++ {
				if a[j][k] == b {
					hit[j][k] = true
				}
			}
		}
	}

	//fmt.Println(hit)

	if isBingo(hit) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
