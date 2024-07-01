package main

import (
	"fmt"
)

func main() {
	var X int
	fmt.Scan(&X)

	x := X
	if X%2 == 0 {
		x = X + 1
	}
	// fmt.Println(x)
	res := 2
	for i := x; ; i = i + 2 {

		flag := true
		for j := 3; j < X; j += 2 {
			// fmt.Println(i, j)
			if i%j == 0 {
				flag = false
				break
			}
		}
		if flag {
			res = i
			break
		}
	}
	fmt.Println(res)
}
