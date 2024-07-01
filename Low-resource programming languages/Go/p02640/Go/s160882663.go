package main

import (
	"fmt"
)

// go run ./main.go < in

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	ok := false
	for i := 0; i <= x; i++ {
		if y == 2*(2*x-i) {
			fmt.Println("Yes")
			ok = true
			break
		}
	}

	if !ok {
		fmt.Println("No")
	}
}
