package main

import (
	"fmt"
)


func main() {
	var n int
	fmt.Scan(&n)

	for i := 0; i  <= 25; i++ {
		for e :=0; e <= 15; e++ {
			sum := 4 * i + e * 7
			if sum == n {
				fmt.Println("Yes")
				return
			}
		}
	}
	fmt.Println("No")


}