package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	for i := 0; i <= 25; i++ {
		for j := 0; j <= 14; j++ {
			sum := i*4 + j*7
			if sum == n {
				fmt.Println("Yes")
				return
			}
		}
	}
	fmt.Println("No")
}
