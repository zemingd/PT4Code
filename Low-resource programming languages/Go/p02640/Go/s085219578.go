package main

import (
	"fmt"
	"os"
)

const turtle = 4
const crane = 2

func main() {

	var x, y int

	fmt.Scan(&x, &y)

	if y%2 == 1 {
		fmt.Println("No")
		os.Exit(0)
	}

	i := calc(x, y)
	if i > 0 {
		fmt.Println("yes")
	} else {
		fmt.Println("No")
	}

}
func calc(x, y int) int {

	if y < 0 {
		return 0
	}
	if x == 0 && y != 0 {
		return 0
	}
	if x != 0 && y == 0 {
		return 0
	}
	if x == 0 && y == 0 {
		return 1
	}
	if y >= turtle {
		return calc(x-1, y-turtle)
	}

	return (calc(x-1, y-crane))
}
