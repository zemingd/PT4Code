package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	var t, x, y int
	pt, px, py := 0, 0, 0
	for i := 0; i < n; i++ {
		fmt.Scan(&t, &x, &y)

		dt := abs(pt - t)
		dl := abs(px-x) + abs(py-y)
		if dt < dl || dt%2 != dl%2 {
			fmt.Println("No")
			return
		}

		pt, px, py = t, x, y
	}

	fmt.Println("Yes")
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
