package main

import (
	"fmt"
)

// main is ...
func main() {
	var x int
	fmt.Scan(&x)

	var jTmp int
	for i := x; ; i++ {
		// fmt.Println("i")
		for j := 2; j <= i; j++ {
			// fmt.Println("j")
			jTmp = j
			if i%j == 0 {
				// fmt.Println("break")
				break
			}
		}
		// fmt.Println("ij", i, jTmp)
		if i == jTmp {
			fmt.Print(i)
			return

		}
	}

}
