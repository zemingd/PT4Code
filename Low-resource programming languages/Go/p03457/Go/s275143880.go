package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	t, x, y := 0, 0, 0
	for i := 0; i < n; i++ {
		var tv, xv, yv int
		fmt.Scan(&tv, &xv, &yv)
		td := tv - t
		k := d(x, xv) + d(y, yv)
		if td < k {
			fmt.Println("No")
			return
		}
		td -= k
		if td%2 != 0 {
			fmt.Println("No")
			return
		}
		t = tv
		x = xv
		y = yv
	}
	fmt.Println("Yes")
}

func d(a, b int) int {
	v := a - b
	if v < 0 {
		return -v
	}
	return v
}
