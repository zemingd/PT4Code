package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	check(N)
}

func check(N int) {
	var t, x, y int
	var lastT, lastX, lastY int
	for i := 0; i < N; i++ {
		fmt.Scan(&t, &x, &y)

		T := t - lastT
		X := x - lastX
		Y := y - lastY

		if (T-X-Y)%2 != 0 {
			fmt.Println("No")
			return
		}
		lastT = T
		lastX = X
		lastY = Y
	}
	fmt.Println("Yes")
}
