package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)

	max := 1
	for b := 2; b <= x; b++ {
		for p := 2; ; p++ {
			t := pow(b, p)
			if t > x {
				break
			}
			if t > max {
				max = t
			}
		}
	}
	fmt.Println(max)
}

func pow(x, y int) int {
	if y == 0 {
		return 1
	}
	return x * pow(x, y-1)
}