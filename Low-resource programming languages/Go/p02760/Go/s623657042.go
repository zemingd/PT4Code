package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var a [3][3]int
	var bingo [3][3]int
	var n int
	fmt.Fscan(r, &a[0][0], &a[0][1], &a[0][2])
	fmt.Fscan(r, &a[1][0], &a[1][1], &a[1][2])
	fmt.Fscan(r, &a[2][0], &a[2][1], &a[2][2])
	fmt.Fscan(r, &n)
	var b [10]int
	for i := 0; i < n; i++ {
		fmt.Fscan(r, &b[i])
	}
	for j := 0; j < 3; j++ {
		for i := 0; i < 3; i++ {
			for _, r := range b {
				if r == a[j][i] {
					bingo[j][i] = 1
				}
			}
		}
	}

	for i := 0; i < 3; i++ {
		if bingo[i][0] == 1 && bingo[i][1] == 1 && bingo[i][2] == 1 {
			fmt.Println("Yes")
			return
		}
	}

	for i := 0; i < 3; i++ {
		if bingo[0][i] == 1 && bingo[1][i] == 1 && bingo[2][i] == 1 {
			fmt.Println("Yes")
			return
		}
	}

	if bingo[0][0] == 1 && bingo[1][1] == 1 && bingo[2][2] == 1 {
		fmt.Println("Yes")
		return
	}

	if bingo[0][2] == 1 && bingo[1][1] == 1 && bingo[2][0] == 1 {
		fmt.Println("Yes")
		return
	}

	fmt.Println("No")
}
