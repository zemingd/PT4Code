package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanln(&n)

	for {
		if n < 4 {
			fmt.Printf("No\n") // output for debug
			return
		}
		if n%4 == 0 {
			fmt.Printf("Yes\n") // output for debug
			return
		}
		if n%7 == 0 {
			fmt.Printf("Yes\n") // output for debug
			return
		}
		if n%2 != 0 {
			n -= 7
		} else {
			n -= 4
		}
	}

}
