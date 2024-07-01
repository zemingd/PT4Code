package main

import "fmt"

func main() {
	var n, t, a, ans int
	fmt.Scan(&n, &t, &a)
	x := a - t
	diff := 1000000000

	for i := 0; i < n; i++ {
		var h int
		fmt.Scan(&h)

		if y := abs(x*500 + h*3); y < diff {
			diff = y
			ans = i
		}
	}

	fmt.Println(ans + 1)
}

func abs(x int) int {
	if x < 0 {
		return -x
	} else {
		return x
	}
}
