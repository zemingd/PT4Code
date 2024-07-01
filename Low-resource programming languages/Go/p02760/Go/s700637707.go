package main

import "fmt"

func main() {
	a := [3][3]int{}
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			fmt.Scan(&a[i][j])
		}
	}

	var n int
	fmt.Scan(&n)
	var b int
	for i := 0; i < n; i++ {
		fmt.Scan(&b)
		for i := 0; i < 3; i++ {
			for j := 0; j < 3; j++ {
				if a[i][j] == b {
					a[i][j] = -1
				}
			}
		}
	}

	if a[0][0] == -1 && a[1][1] == -1 && a[2][2] == -1 {
		fmt.Println("Yes")
		return
	}
	if a[0][2] == -1 && a[1][1] == -1 && a[2][0] == -1 {
		fmt.Println("Yes")
		return
	}

	for i := 0; i < 3; i++ {
		ok := true
		for j := 0; j < 3; j++ {
			if a[i][j] != -1 {
				ok = false
			}
		}
		if ok {
			fmt.Println("Yes")
			return
		}
	}

	for i := 0; i < 3; i++ {
		ok := true
		for j := 0; j < 3; j++ {
			if a[j][i] != -1 {
				ok = false
			}
		}
		if ok {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")

}
