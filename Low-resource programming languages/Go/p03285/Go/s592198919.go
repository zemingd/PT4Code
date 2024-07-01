package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	for k := 0; k < 25; k++ {
		for i := 0; i < 1 << uint(k); i++ {
			sum := 0
			for j := 0; j < k; j++ {
				if 1 & (uint(i) >> uint(j)) == 1 {
					sum += 4
				} else {
					sum += 7
				}
			}
			if sum == n {
				fmt.Println("Yes")
				return
			}
		}
	}
	fmt.Println("No")
}