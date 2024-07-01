package main

import (
	"fmt"
	//"bufio"
)

func main() {
	//make関数で、サイズを指定してスライス作成
	a := make([][]int, 3)
	for i := range a {
		a[i] = make([]int, 3)
	}
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			fmt.Scan(&a[i][j])
		}
	}
	//fmt.Println(a)

	var n int
	fmt.Scan(&n)

	t := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&t[i])
	}

	for _, b := range t {
		for i := 0; i < 3; i++ {
			for j := 0; j < 3; j++ {
				if a[i][j] == b {
					a[i][j] = 0
				}
			}
		}
	}

	ans := "No"
	for i := 0; i < 3; i++ {
		if a[i][0]+a[i][1]+a[i][2] == 0 {
			ans = "Yes"
			break
		} else if a[0][i]+a[1][i]+a[2][i] == 0 {
			ans = "Yes"
			break
		}
	}
	if a[0][0]+a[1][1]+a[2][2] == 0 {
		ans = "Yes"
	} else if a[2][0]+a[1][1]+a[0][2] == 0 {
		ans = "Yes"
	}

	fmt.Println(ans)

}
