package main

import (
	"fmt"
)

func main() {
	var card [][]int
	var A, N int
	var t int
	var B []int
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			fmt.Scanf("%d", &A)
			card[i][j] = A
		}
	}
	fmt.Scanf("%d", &N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &t)
		B = append(B, t)
	}

	for i := 0; i < 3; i++ {
		for j := 0; i < 3; i++ {
			for _, value := range B {
				if card[i][j] == value {
					card[i][j] = 0
				} else {
					card[i][j] = 1
				}
			}
		}
	}
	switch {
	case card[0][0] == 1 && card[0][1] == 1 && card[0][2] == 1:
		fallthrough
	case card[1][0] == 1 && card[1][1] == 1 && card[1][2] == 1:
		fallthrough
	case card[2][0] == 1 && card[2][1] == 1 && card[2][2] == 1:
		fallthrough
	case card[0][0] == 1 && card[1][0] == 1 && card[2][0] == 1:
		fallthrough
	case card[0][1] == 1 && card[1][1] == 1 && card[2][1] == 1:
		fallthrough
	case card[0][2] == 1 && card[1][2] == 1 && card[2][2] == 1:
		fallthrough
	case card[0][2] == 1 && card[1][1] == 1 && card[2][0] == 1:
		fallthrough
	case card[0][0] == 1 && card[1][1] == 1 && card[2][2] == 1:
		fmt.Println("Yes")
		return
	default:
		fmt.Println("No")
		return
	}
}
