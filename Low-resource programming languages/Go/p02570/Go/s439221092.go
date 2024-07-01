package main

import (
	"fmt"
)

func main() {

	var d, t, s int

	fmt.Scan(&d)
	fmt.Scan(&t)
	fmt.Scan(&s)
	//fmt.Printf("%d, %d, %d", d, t, s)

	dis := calc(s, t)

	if dis >= d {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

func calc(s int, t int) int {
	ans := s * t
	return ans
}
