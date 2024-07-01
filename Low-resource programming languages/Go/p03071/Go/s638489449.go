package main

import "fmt"

func max(a []int) (x int) {
	x = -int(^uint(0)>>1) - 1
	for _, i := range a {
		if i > x {
			x = i
		}
	}
	return
}

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	x := []int{(a + a - 1), (a + b), (b + b - 1)}
	fmt.Println(max(x))
}
