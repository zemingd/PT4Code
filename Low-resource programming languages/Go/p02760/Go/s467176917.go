package main

import "fmt"

func main() {
	a := make([][3]int, 3)
	for i := range a {
		for j := range a[i] {
			fmt.Scan(&a[i][j])
		}
	}
	var n int
	fmt.Scan(&n)
	b := make([]int, n)
	for k := range b {
		fmt.Scan(&b[k])
		for i := range a {
			for j := range a[i] {
				if a[i][j] == b[k] {
					a[i][j] = 0
				}
			}
		}
	}

	for i := 0; i < 3; i++ {
		if a[i][0] == 0 && a[i][1] == 0 && a[i][2] == 0 ||
			a[0][i] == 0 && a[1][i] == 0 && a[2][i] == 0 {
			fmt.Println("Yes")
			return
		}
	}
	if a[0][0] == 0 && a[1][1] == 0 && a[2][2] == 0 ||
		a[0][2] == 0 && a[1][1] == 0 && a[2][0] == 0 {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}
