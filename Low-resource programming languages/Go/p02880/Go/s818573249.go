package main

import (
	"fmt"
)

func main() {
	solved := "No"
	var n int
	fmt.Scan(&n)
	for i := 1; i <= 9; i++ {
		if (n%i==0 && n/i <= 9) {
			solved = "Yes"
			break
		}
	}
	fmt.Println(solved)
}