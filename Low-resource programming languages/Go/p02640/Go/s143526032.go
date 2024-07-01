package main

import "fmt"

// c + t = x, 2c + 4t = y
// 2t = y - 2x <=> t = (y - 2x) / 2
// 2c = 4x - y <=> c = (4x - y) / 2
func main() {
	var x, y int
	fmt.Scan(&x, &y)
	if (y-2*x)%2 == 0 && (4*x-y)%2 == 0 {
		turtle, crane := (y-2*x)/2, (4*x-y)/2
		if turtle >= 0 && crane >= 0 {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	} else {
		fmt.Println("No")
	}
}
