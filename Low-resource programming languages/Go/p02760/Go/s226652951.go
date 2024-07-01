package main

import (
	"fmt"
)

func main() {

	listA1 := make([]int, 3)
	for i := 0; i < 3; i++ {
		fmt.Scan(&listA1[i])
	}
	listA2 := make([]int, 3)
	for i := 0; i < 3; i++ {
		fmt.Scan(&listA2[i])
	}
	listA3 := make([]int, 3)
	for i := 0; i < 3; i++ {
		fmt.Scan(&listA3[i])
	}
	var n int
	fmt.Scan(&n)
	listB := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&listB[i])
	}

	var matrix [3][3]int = [3][3]int{
		{listA1[0], listA1[1], listA1[2]},
		{listA2[0], listA2[1], listA2[2]},
		{listA3[0], listA3[1], listA3[2]},
	}

	bingo := false
	for i := 0; i < 3; i++ {
		for j := 0; j < n; j++ {
			if matrix[0][i] == listB[j] {
				bingo = true
			} else {
				bingo = false
				break
			}
		}
	}
	if bingo == true {
		fmt.Println("Yes")
		return
	}
	bingo = false
	for i := 0; i < 3; i++ {
		for j := 0; j < n; j++ {
			if matrix[1][i] == listB[j] {
				bingo = true
			} else {
				bingo = false
				break
			}
		}
	}
	if bingo == true {
		fmt.Println("Yes")
		fmt.Println("ok")
		return
	}

	bingo = false
	for i := 0; i < 3; i++ {
		for j := 0; j < n; j++ {
			if matrix[2][i] == listB[j] {
				bingo = true
			} else {
				bingo = false
				break
			}
		}
	}
	if bingo == true {
		fmt.Println("Yes")
		return
	}
	bingo = false
	for i := 0; i < 3; i++ {
		for j := 0; j < n; j++ {
			if matrix[i][0] == listB[j] {
				bingo = true
			} else {
				bingo = false
				break
			}
		}
	}
	if bingo == true {
		fmt.Println("Yes")
		return
	}
	bingo = false
	for i := 0; i < 3; i++ {
		for j := 0; j < n; j++ {
			if matrix[i][1] == listB[j] {
				bingo = true
			} else {
				bingo = false
				break
			}
		}
	}
	if bingo == true {
		fmt.Println("Yes")
		return
	}
	bingo = false
	for i := 0; i < 3; i++ {
		for j := 0; j < n; j++ {
			if matrix[i][2] == listB[j] {
				bingo = true
			} else {
				bingo = false
				break
			}
		}
	}
	if bingo == true {
		fmt.Println("Yes")
		return
	}
	bingo = false
	for i := 0; i < 3; i++ {
		for j := 0; j < n; j++ {
			if matrix[i][i] == listB[j] {
				bingo = true
				break
			} else {
				bingo = false
			}
		}
	}
	if bingo == true {
		fmt.Println("Yes")
		return
	}
	bingo = false
	for i := 0; i < 3; i++ {
		for j := 0; j < n; j++ {
			if matrix[i][2-i] == listB[j] {
				bingo = true
				break
			} else {
				bingo = false
			}
		}
	}
	if bingo == true {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}
