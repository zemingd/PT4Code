package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	for i := 1; i <= 9; i++ {
		for j := 0; j <= 9; j++ {
			if i*j == n {
				fmt.Print("Yes")
              return
			}
		}
	}

	fmt.Print("No")
}
