package main

import (
	"fmt"
)

func main() {
	listA := make([][]int, 3)
	for i := 0; i < 3; i++ {
		listA[i] = make([]int, 3)
	}
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			fmt.Scan(&listA[i][j])
		}
	}
	var n int
	fmt.Scan(&n)
	listB := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&listB[i])
	}
	result := "No"

	flagList := make([][]int, 3)
	for i := 0; i < 3; i++ {
		flagList[i] = make([]int, 3)
	}

	for i := 0; i < n; i++ {
		for j := 0; j < 3; j++ {
			for k := 0; k < 3; k++ {
				if listB[i] == listA[j][k] {
					flagList[j][k] = 1
				}
			}

		}
	}

	bingoFlag := 0
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			if flagList[j][i] == 1 {
				bingoFlag = 1
			} else if flagList[i][i] == 1 {
				bingoFlag = 1
			} else if flagList[2-i][i] == 1 {
				bingoFlag = 1
			} else if flagList[i][j] == 1 {
				bingoFlag = 1
			} else {
				bingoFlag = 0
			}
			if bingoFlag == 1 {
				fmt.Println("Yes")
				return
			}
		}
	}

	fmt.Println(result)
}
