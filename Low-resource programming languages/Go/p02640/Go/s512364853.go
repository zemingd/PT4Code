package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	for i := 0; 2*i <= y; i++ {
		for j := 0; 4*j <= y; j++ {
			if 2*i+4*j == y {
				if i+j == x {
					fmt.Println("Yes")
					return
				}
			}
		}
	}
	fmt.Println("No")
}