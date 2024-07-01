package main

import "fmt"

func main() {
	var a, b, c int
	var k int
	fmt.Scan(&a, &b, &c)
	fmt.Scan(&k)
	for i := 0; i <= k; i++ {
		x := b
		y := c
		for j := 0; j < i; j++ {
			x *= 2
		}
		for j := 0; j < k-i; j++ {
			y *= 2
		}
		if x > a && y > x {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
