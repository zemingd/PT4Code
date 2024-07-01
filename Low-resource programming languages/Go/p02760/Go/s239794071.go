package main

import "fmt"

func main() {
	var a [3][3]int
	var n int

	for i := 0; i < 3; i++ {
		fmt.Scan(&a[i][0], &a[i][1], &a[i][2])
	}
	fmt.Scan(&n)

	b := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&b[i])
	}

	var c [3][3]bool
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			c[i][j] = false
			for k := 0; k < n; k++ {
				if a[i][j] == b[k] {
					c[i][j] = true
					break
				}
			}
		}
	}

	for i := 0; i < 3; i++ {
		if c[i][0] && c[i][1] && c[i][2] {
			fmt.Println("Yes")
			return
		}
	}

	for i := 0; i < 3; i++ {
		if c[0][i] && c[1][i] && c[2][i] {
			fmt.Println("Yes")
			return
		}
	}

	if c[0][0] && c[1][1] && c[2][2] {
		fmt.Println("Yes")
		return
	}

	if c[2][0] && c[1][1] && c[0][2] {
		fmt.Println("Yes")
		return
	}

	fmt.Println("No")
}
