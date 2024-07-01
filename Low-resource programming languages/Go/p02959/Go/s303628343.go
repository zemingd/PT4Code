package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	// var a, b int
	// fmt.Scanf("%d %d", &a, &b)

	as := make([]int, n+1)
	fmt.Scan(&as[0])
	for i := 0; i < n; i++ {
		fmt.Scan(&as[i+1])
	}

	cnt := 0
	secondCity := 0
	for i := 0; i < n; i++ {
		var b int
		fmt.Scan(&b)

		cal := 0
		if secondCity <= 0 {
			cal = b - as[i]
		} else {
			cal = b - secondCity
		}

		cnt += cal

		if cal <= 0 {
			secondCity = as[i]
		} else {
			secondCity = as[i+1] - cal
		}
	}

	fmt.Print(cnt)
}
