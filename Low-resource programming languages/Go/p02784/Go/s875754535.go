package main

import (
	"fmt"
)

func main() {
	var H, N int
	fmt.Scan(&H)
	fmt.Scan(&N)
	damage := 0
	atk := 0
	res := "No"
	for i := 0; i < N; i++ {
		fmt.Scan(&atk)
		damage += atk
		if damage >= H {
			res = "Yes"
		}
	}

	fmt.Println(res)
}
