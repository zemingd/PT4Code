package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	sx, sy := 0, 0
	prevTime := 0
	for i := 0; i < n;i++ {
		var t, x, y int
		fmt.Scan(&t, &x, &y)
		diffDis := abs(x-sx) +abs(y -sy)
		diffTime := t - prevTime
		if diffTime >= diffDis {
			if diffTime % 2 == 0 && (abs(x-sx) +abs(y -sy)) %2 ==0 {
				sx = x
				sy = y
				prevTime = t
				continue
			} else if diffTime % 2 == 1 && diffDis%2 == 1 {
				sx = x
				sy = y
				prevTime = t
				continue
			}
		}
		fmt.Println("No")
		return
	}
	fmt.Println("Yes")
}

func abs(n int) int {
	y := n >> 63
	return (n ^ y) - y
}
