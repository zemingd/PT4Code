package main

import "fmt"

func main() {
	var a [3][3]int
	var c [3][3]bool
	for i := range a {
		for j := range a[i] {
			fmt.Scan(&a[i][j])
		}
	}
	var n, b int
	fmt.Scan(&n)
	for k := 0; k < n; k++ {
		fmt.Scan(&b)
		for i := range a {
			for j := range a[i] {
				if a[i][j] == b {
					c[i][j] = true
				}
			}
		}
	}

	for i := 0; i < 3; i++ {
		if c[i][0] && c[i][1] && c[i][2] || c[0][i] && c[1][i] && c[2][i] {
			fmt.Println("Yes")
			return
		}
	}
	if c[0][0] && c[1][1] && c[2][2] || c[0][2] && c[1][1] && c[2][0] {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}
