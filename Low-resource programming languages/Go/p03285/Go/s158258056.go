package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	for i := 0; i < N; i++ {
		for j := 0; j < N; j++ {
			if i*4+j*7 == N {
				fmt.Println("Yes")
				return
			}
		}
	}
	fmt.Println("No")
}