package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	var result = "No"
	var ii int
	for ii = 0; ii <= 9; ii++ {
		var jj int
		for jj = 0; jj <= 9; jj++ {
			if ii*jj == n {
				result = "Yes"
				break
			}
		}
	}
	fmt.Printf("%s\n", result)
}
