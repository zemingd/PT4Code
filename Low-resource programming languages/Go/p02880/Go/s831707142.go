package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	for i := 1; i<= 9; i++ {
		for j := 1; j <= 9; j++ {
			if i * j == N {
				fmt.Println("Yes")
				return
			}
		}
	}
	fmt.Println("No")
}
