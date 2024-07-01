package main

import "fmt"

func main() {
	var N, Y int
	fmt.Scan(&N, &Y)

	check(N, Y)
}
func check(N, Y int) {
	for x := 0; x <= N; x++ {
		for y := 0; y <= (N - x); y++ {
			for z := 0; z <= (N - x - y); z++ {
				if sum(x, y, z, Y) {
					fmt.Println(x, y, z)
					return
				}
			}
		}
	}
	fmt.Println(-1, -1, -1)
}
func sum(x, y, z, Y int) bool {
	if 10000*x+5000*y+1000*z == Y {
		return true
	}
	return false
}
