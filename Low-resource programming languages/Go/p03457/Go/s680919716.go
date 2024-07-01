package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	
	var t, x, y int
	pt, px, py := 0, 0, 0
	
	for i := 0; i < n; i++ {
		fmt.Scan(&t, &x, &y)
		ht := t - pt
		d := abs(x - px) + abs(y - py)
		if !(d <= ht && d % 2 == ht % 2) {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")

}

func abs(num int) int {
	if num < 0 {
		return -num
	}
	return num
}