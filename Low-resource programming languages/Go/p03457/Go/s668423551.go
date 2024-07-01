package main

import (
	"fmt"
)

func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	var n int
	fmt.Scanln(&n)
	pt, px, py := 0, 0, 0
	for i := 0; i < n; i++ {
		var t, x, y int
		fmt.Scanln(&t, &x, &y)
		rt := (t - pt) - (Abs(x-px) + Abs(y-py))
		if rt < 0 || rt%2 != 0 {
			fmt.Println("No")
			return
		}
		pt, px, py = t, x, y
	}
	fmt.Println("Yes")
}
