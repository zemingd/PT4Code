package main

import (
	"fmt"
)

var c, d int

func main() {
	var n int

	fmt.Scan(&n)
	c, d = 4, 7

	if helper(n) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func helper(money int) bool {
	if money%c == 0 {
		return true
	}

	if money%d == 0 {
		return true
	}

	if money >= c {
		return helper(money - c)
	}
	if money >= d {
		return helper(money - d)
	}

	return false
}
