package main

import (
	"fmt"
)

func main() {
	var N int
	ans := "No"

	fmt.Scan(&N)

	for i := 0; i <= 9; i++ {
		for j := 0; j <= 9; j++ {
			if i*j == N {
				ans = "Yes"
				break
			}
		}
	}
	fmt.Println(ans)
}
