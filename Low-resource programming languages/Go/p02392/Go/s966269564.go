package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	if _, err := fmt.Scan(&a, &b, &c); err != nil {
		panic(err)
	}

	if a < b && b < c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

