package main

import "fmt"

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	var n int
	fmt.Scan(&n)

	t, x, y := 0, 0, 0
	ok := true
	for i := 0; i < n; i++ {
		var nt, nx, ny int
		fmt.Scan(&nt, &nx, &ny)
		time := nt - t
		dist := abs(nx-x) + abs(ny-y)
		rest := time - dist
		if !(rest >= 0 && rest%2 == 0) {
			ok = false
			break
		}
	}

	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
