package main

import (
	"fmt"
)

func main() {
	var X int
	fmt.Scanf("%d", &X)

	money := 100
	n := 0
	for {
		money += money / 100
		n++
		if money >= X {
			break
		}
	}
	fmt.Println(n)
}
